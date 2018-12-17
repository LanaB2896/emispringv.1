package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Calculator;
import com.example.demo.model.Performance;
//import com.example.demo.model.User;
import com.example.demo.repo.ClientRepository;
import com.example.demo.service.EMICalculator;


@Controller
public class CalculationController {

	@Autowired
	private EMICalculator emiCalculator;
	@RequestMapping(value="/show", method= RequestMethod.GET)
public String insert(Model model)
	{
		model.addAttribute("userValues", new Performance());
		return "calculator";	
	}

@RequestMapping(value = "/save", method = RequestMethod.POST)

public String insertedFields(@ModelAttribute("userValues") Performance performance, Model model)
{
	emiCalculator.savePerformance(performance);
	emiCalculator.repay(model);
//	model.addAttribute("id", new Calculator());
	return "hai";

}

//@RequestMapping(value = "/shedule", method = RequestMethod.POST)
//
//public String getInsta(@ModelAttribute("repayment")Performance performance, Model model, @RequestParam("ID")Integer id)
//{
//	emiCalculator.getValue(model, id);
//	emiCalculator.repay(model);
//	model.addAttribute("id", new Calculator());
//	return "repayment";
//
//}




//@RequestMapping(value="/shedule", method= RequestMethod.GET)
//public String re(Model model)
//{
//	model.addAttribute("repayment", new Calculator());
//	return "repayment";	
//}

}






