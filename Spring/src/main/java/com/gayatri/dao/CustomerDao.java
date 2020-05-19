package com.gayatri.dao;

import java.util.List;

import com.gayatri.model.Customer;

public interface CustomerDao {

	public Customer findCustomerById(int id);

	public List<Customer> listAllCustomers();

	public void saveOrUpdate(Customer customer);

	public void deleteCustomer(int id);
}
