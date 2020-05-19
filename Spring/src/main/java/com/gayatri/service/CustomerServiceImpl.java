package com.gayatri.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gayatri.dao.CustomerDao;
import com.gayatri.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	private CustomerDao customerDao;
	
	@Autowired
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	public Customer findCustomerById(int id) {
		
		return customerDao.findCustomerById(id);
	}

	public List<Customer> listAllCustomers() {
		
		return customerDao.listAllCustomers();
	}

	public void saveOrUpdate(Customer customer) {
		
		customerDao.saveOrUpdate(customer);
	}

	public void deleteCustomer(int id) {
		
		customerDao.deleteCustomer(id);
	}

}
