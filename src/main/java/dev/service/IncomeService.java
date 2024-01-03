package dev.service;

import dev.repository.IncomeRepository;
import dev.domain.Income;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class IncomeService {

    private final IncomeRepository incomeRepository;

    public IncomeService(IncomeRepository incomeRepository) {
        this.incomeRepository = incomeRepository;
    }

    public Double calculateTax(Income income) {

        double totalIncome = income.getBasicPay() +
                income.getHouseRentAllowance() +
                income.getConveyanceAllowance() +
                income.getMedicalAllowance() +
                income.getOtherAllowance();

        totalIncome = totalIncome-income.getDeductionAmount();

        double tax;

        if (totalIncome <= 300000) {
            tax = totalIncome * 0.0;
        } else if (totalIncome <= 400000) {
            tax = (totalIncome - 300000) * 0.05;
        } else if (totalIncome <= 700000) {
            tax = (400000 - 300000) * 0.05 + (totalIncome - 400000) * 0.1;
        } else if (totalIncome <= 1100000) {
            tax = (700000 - 400000) * 0.1 + (totalIncome - 700000) * 0.15;
        } else if (totalIncome <= 1600000) {
            tax = (1100000 - 700000) * 0.15 + (totalIncome - 1100000) * 0.20;
        } else {
            tax = (1600000 - 1100000) * 0.20 + (totalIncome - 1600000) * 0.25;
        }

        return tax;
    }

    public void calculateAndSaveTax(Income income) {

        double totalIncome = income.getBasicPay() + income.getHouseRentAllowance() +
                income.getConveyanceAllowance() + income.getMedicalAllowance() +
                income.getOtherAllowance() - income.getDeductionAmount();

        double calculatedTax = calculateTax(income);

        income.setTax(calculatedTax);

        incomeRepository.save(income);
    }
}
