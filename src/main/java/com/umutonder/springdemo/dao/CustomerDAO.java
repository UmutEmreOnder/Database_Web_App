package com.umutonder.springdemo.dao;

import com.umutonder.springdemo.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    public List<Customer> getCustomers();
    void saveCustomer(Customer customer);
}
