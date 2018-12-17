package com.example.demo.service;

import java.util.List;

import org.springframework.ui.Model;

import com.example.demo.model.Calculator;
import com.example.demo.model.Performance;

public interface CalculatorInterface {

	public void savePerformance(Performance performance);
	public List<Calculator> repay(Model model);
//	public void getValue(Model model, Integer id);
}
