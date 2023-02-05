package BankPro2.BTask2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerBank {
@Autowired
RspositoryBank rb;

@GetMapping(value="/Login")
public String index()
{
	return "index";
}

@PostMapping("/Login")
public String login(@RequestParam String name,@RequestParam String password) throws Exception
{
	BeanLayer pw=rb.findByName(name);
	if(password.equals(pw.getPassword()))
	{
		return "home";
	}
	else
	{
		throw new Excephandle("Your password is wrong");
	}
	
}


}
