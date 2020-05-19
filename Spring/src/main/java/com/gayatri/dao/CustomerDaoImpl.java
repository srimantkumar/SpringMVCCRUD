package com.gayatri.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gayatri.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public Customer findCustomerById(int id) {
		return getSession().get(Customer.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Customer> listAllCustomers() {
		@SuppressWarnings("deprecation")
		Criteria criteria = getSession().createCriteria(Customer.class);
		return (List<Customer>) criteria.list();
	}

	public void saveOrUpdate(Customer customer) {
		getSession().saveOrUpdate(customer);

	}

	public void deleteCustomer(int id) {
		Customer customer = getSession().get(Customer.class, id);
		getSession().delete(customer);
	}

}
