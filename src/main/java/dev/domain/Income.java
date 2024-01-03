package dev.domain;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "income_table")
public class Income {

    @NotNull
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @NotBlank
    @Column(name = "username")
    private String username;

    @NotNull
    @Column(name = "basic_pay")
    private int basicPay;

    @NotNull
    @Column(name = "house_rent_allowance")
    private int houseRentAllowance;

    @NotNull
    @Column(name = "conveyance_allowance")
    private int conveyanceAllowance;

    @NotNull
    @Column(name = "medical_allowance")
    private int medicalAllowance;

    @NotNull
    @Column(name = "other_allowance")
    private int otherAllowance;

    @NotNull
    @Column(name = "deduction_amount")
    private int deductionAmount;

    @Column(name = "tax")
    private double tax;

    public Income(int id, String username, int basicPay, int houseRentAllowance,
                  int conveyanceAllowance, int medicalAllowance, int otherAllowance, int deductionAmount, double tax) {
        this.id = id;
        this.username = username;
        this.basicPay = basicPay;
        this.houseRentAllowance = houseRentAllowance;
        this.conveyanceAllowance = conveyanceAllowance;
        this.medicalAllowance = medicalAllowance;
        this.otherAllowance = otherAllowance;
        this.deductionAmount = deductionAmount;
        this.tax = tax;
    }

    public Income() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getBasicPay() {
        return basicPay;
    }

    public void setBasicPay(int basicPay) {
        this.basicPay = basicPay;
    }

    public int getHouseRentAllowance() {
        return houseRentAllowance;
    }

    public void setHouseRentAllowance(int houseRentAllowance) {
        this.houseRentAllowance = houseRentAllowance;
    }

    public int getConveyanceAllowance() {
        return conveyanceAllowance;
    }

    public void setConveyanceAllowance(int conveyanceAllowance) {
        this.conveyanceAllowance = conveyanceAllowance;
    }

    public int getMedicalAllowance() {
        return medicalAllowance;
    }

    public void setMedicalAllowance(int medicalAllowance) {
        this.medicalAllowance = medicalAllowance;
    }

    public int getOtherAllowance() {
        return otherAllowance;
    }

    public void setOtherAllowance(int otherAllowance) {
        this.otherAllowance = otherAllowance;
    }

    public int getDeductionAmount() {
        return deductionAmount;
    }

    public void setDeductionAmount(int deductionAmount) {
        this.deductionAmount = deductionAmount;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }
}
