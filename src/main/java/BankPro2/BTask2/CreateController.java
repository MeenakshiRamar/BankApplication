package BankPro2.BTask2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CreateController {


	@Autowired
	private CreateRepository br;
@RequestMapping(value="/index",method=RequestMethod.GET)
public String index()
{
	return "index1";
}

@GetMapping("/create")
public String create(Model model) {
	model.addAttribute("beanbank",new CreateBean());
	return "createAccount";
}
@PostMapping("/created")
public String creating(@ModelAttribute("beanbank") CreateBean beanbank)
{
	br.save(beanbank);
	return "home";
}
@GetMapping("/ListOfAccount")
public String list(Model model)
{
	model.addAttribute("list",br.findAll());
	return "ListOfAccounts";	
}
@GetMapping("/UpdateAccount")
public String update(Model model,@RequestParam String pn,@RequestParam String pl,@RequestParam String pd,@RequestParam String pm,@RequestParam String pg,@RequestParam String pa,@RequestParam String pe,@RequestParam int pi)
{
	CreateBean cb=new CreateBean();
	cb.setName(pn);
	cb.setLastName(pl);
	cb.setDOB(pd);
	cb.setMobileNumber(pm);
	cb.setGender(pg);
	cb.setAddress(pa);
    cb.seteMail(pe);
    cb.setAccountId(pi);
    model.addAttribute("details", cb);
	return "UpdateAccount";
}
@GetMapping("/Update1")
public String updating(Model model,@RequestParam String pn,@RequestParam String pl,@RequestParam String pd,@RequestParam String pm,@RequestParam String pg,@RequestParam String pa,@RequestParam String pe,@RequestParam int pi)
{
	CreateBean cb=new CreateBean();
	cb.setName(pn);
	cb.setLastName(pl);
	cb.setDOB(pd);
	cb.setMobileNumber(pm);
	cb.setGender(pg);
	cb.setAddress(pa);
    cb.seteMail(pe);
    cb.setAccountId(pi);
    br.save(cb);
    model.addAttribute("list",br.findAll());
	return "ListOfAccounts";
}

}
