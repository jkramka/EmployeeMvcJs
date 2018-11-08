package employee.spring.payrate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired EmployeeDao dao;

	private static final String[ ] countries = { "France", "United States", "Germany", "England" };
	
	private static final String[ ] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
	
	@RequestMapping(value = "/form")
	public ModelAndView employee( ){
		ModelAndView modelAndView = new ModelAndView( );
		
		modelAndView.setViewName("employeeForm");
		modelAndView.addObject("employee", new Employee( ));
		modelAndView.addObject("countries", countries);
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processEmployee(@ModelAttribute("employee") Employee employee, BindingResult result){
		System.out.println("In processEmployee");
		ModelAndView modelAndView = new ModelAndView();
		
		//validation of inputs
		boolean error = false;
		
		if(employee.getName().isEmpty()){
	        result.rejectValue("name", "error.name");
	        error = true;
	    }
	     
	    if(employee.getLastname().isEmpty()){
	        result.rejectValue("lastname", "error.lastName");
	        error = true;
	    }
	     
	    if(employee.getSalary() < 1.00){
	        result.rejectValue("salary", "error.salary");
	        error = true;
	    }
	    
	    if(employee.getBirthMonth().isEmpty()){
	        result.rejectValue("birthMonth", "error.birthMonth");
	        error = true;
	    } else {
	    	//boolean truth;
	    	error = true;
	    	//System.out.println(employee.getBirthMonth());
	    	//System.out.println(months[counter]);
	    	
	    	
	    	for (int i = 0; i<=11; ++i) { 
	    	    if (employee.getBirthMonth().equals(months[i])) {
	    	    	error = false;
	    	    }
	    	}
	    	if (error) {
    			result.rejectValue("birthMonth", "error.birthMonth");
    		}
	    }
	     
	    if(error) {
	        modelAndView.setViewName("employeeForm");
	        modelAndView.addObject("countries", countries);
	        return modelAndView;
	    }
		
		dao.insertEmployee(employee);
		System.out.println("Value in getName"+ employee.getName());
		modelAndView.setViewName("employeeResult");
		modelAndView.addObject("e", employee);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Employee> allEmployees = dao.getAllEmployees();
		modelAndView.setViewName("viewAllEmployees");
		modelAndView.addObject("all", allEmployees);
		return modelAndView;
	}
	
	@RequestMapping(value = "/delete")
	public ModelAndView delete(@ModelAttribute("employee") Employee employee, BindingResult result ){
		ModelAndView modelAndView = new ModelAndView();
		//System.out.println(employee.getId());
		
		//validates that a record has been selected
		if (employee.getId() == 0) {
		result.rejectValue("id", "error.id");
		List<Employee> allEmployees = dao.getAllEmployees();
		modelAndView.setViewName("viewAllEmployees");
		modelAndView.addObject("all", allEmployees);
		return modelAndView;
		}
		
		dao.deleteEmployee(employee);
		List<Employee> allEmployees = dao.getAllEmployees();
		modelAndView.setViewName("viewAllEmployees");
		modelAndView.addObject("all", allEmployees);
		return modelAndView;
	}
	
	@Bean
	public EmployeeDao dao(){
		EmployeeDao bean = new EmployeeDao();
		return bean;
	}
	
}
