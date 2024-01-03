package dev.controller;

import dev.domain.Income;
import dev.service.IncomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class IncomeController {

    private final IncomeService incomeService;

    public IncomeController(IncomeService incomeService) {
        this.incomeService = incomeService;
    }


    @PostMapping("/tax")
    public String showIncomeForm(Model model) {
        model.addAttribute("incomeDetails", new Income());
        return "incomeForm";
    }

    @PostMapping("/calculateTax")
    public String calculateTax(@ModelAttribute("incomeDetails") Income income, Model model) {
        Double tax = incomeService.calculateTax(income);
        model.addAttribute("calculatedTax", tax);
        return "redirect:/taxResult";
    }

    @GetMapping("/taxResult")
    public String showTaxResult(@ModelAttribute("calculatedTax") Double calculatedTax, Model model) {
        model.addAttribute("calculatedTax", calculatedTax);
        return "taxResult";
    }
}
