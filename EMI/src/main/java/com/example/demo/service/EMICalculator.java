package com.example.demo.service;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.model.Calculator;
import com.example.demo.model.Performance;
import com.example.demo.repo.ClientRepository;

@Service
public class EMICalculator implements CalculatorInterface
{
	@Autowired
private ClientRepository clientRepo;
	static float emiInitializer = (float) 0.0;
	static boolean emiCalculatorFlag = true;


		

	//List<Performance> List = new ArrayList<>();

	@Override
	public void savePerformance(Performance performance)
	{

		float principle = performance.getPrinciple();

		float RateofInterest = performance.getRateofinterest();
		

		float Tenure_or_number_of_installments = performance.getTenure();
		float Number_of_payments_in_a_year = performance.getNoOfInstallenment();

		
	
	
		for (int i = 1; i <= Number_of_payments_in_a_year; i++)
		{
			System.out.println(i);
			principle = calculateInstallment(principle, RateofInterest, Tenure_or_number_of_installments,
					Number_of_payments_in_a_year);
		}
	}




	float calculateInstallment(float principle, float RateofInterest, float Tenure_or_number_of_installments,
			float Number_of_payments_in_a_year) {
		float numerator1 = ((RateofInterest/100) / Number_of_payments_in_a_year);
		float numerator = (principle * numerator1);

		float denominator_1 = 1 + numerator1;

		float denominator_2 = (float) (Math.pow(denominator_1, Tenure_or_number_of_installments));

		float denominator = (1 - (1 / denominator_2));
		if (emiCalculatorFlag) {
			emiInitializer = (numerator / denominator);
			emiCalculatorFlag = false;
		}

		double Pn = (emiInitializer - numerator);
		double OPn = (principle - Pn);
		DecimalFormat formatter = new DecimalFormat("#.##");
		
Calculator calculator = new Calculator();
Float outstandingPrinciple = Float.parseFloat(formatter.format(principle));
Float interest = Float.parseFloat(formatter.format(numerator));
Float loanAmount = Float.parseFloat(formatter.format(Pn));
Float EMI = Float.parseFloat(formatter.format(emiInitializer));



calculator.setOutstandingPrinciple(outstandingPrinciple);
calculator.setInterest(interest);
calculator.setLoanAmount(loanAmount);
calculator.setEMI(EMI);
clientRepo.save(calculator);
	

		System.out.format("%-15s %-25s %-15s %-15s\n", "O/s Principle", "Interest", "Principle", "EMI");
		System.out.format("%-15s %-25s %-15s %-15s\n", formatter.format(principle), formatter.format(numerator),
				formatter.format(Pn), formatter.format(emiInitializer));

		return (float) OPn;
	}
	
	@Override
	public List<Calculator> repay(Model model)
	{
	model.addAttribute("print", clientRepo.findAll());
	return clientRepo.findAll();
	}
	
//	@Override
//	public void getValue(Model model, Integer id)
//
//	{
//		Float ID = (float) id;
//		model.addAttribute("Value", clientRepo.findById(ID).get());
//	}
//	
	
}

