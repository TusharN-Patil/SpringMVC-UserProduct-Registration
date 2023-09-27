package com.jsp.UserProductApp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.UserProductApp.dto.Product;
import com.jsp.UserProductApp.dto.User;

@Repository
public class ProductDao {
	@Autowired
	private EntityManager manager;

	public Product saveProduct(Product p, int id) {
		EntityTransaction transaction = manager.getTransaction();
		User u = manager.find(User.class, id);
		if (u != null) {
			u.getProduct().add(p);
			p.setUser(u);
			manager.persist(p);
			transaction.begin();
			transaction.commit();
			return p;
		}
		return null;
	}

	public Product updateProduct(Product p, int id) {
		EntityTransaction transaction = manager.getTransaction();
		User u = manager.find(User.class, id);
		if (u != null) {
			u.getProduct().add(p);
			p.setUser(u);
			manager.merge(p);
			transaction.begin();
			transaction.commit();
			return p;
		}
		return null;
	}

	public boolean deleteProduct(int id) {
		EntityTransaction transaction = manager.getTransaction();
		Product p = manager.find(Product.class, id);
		if (p != null) {
			manager.remove(p);
			transaction.begin();
			transaction.commit();
			return true;
		} else {
			return false;
		}
	}

	public Product findProduct( int id,String name) {
		String qry = "select p from Product p where p.name=?1 and p.id=?2";
		Query q = manager.createQuery(qry);
		q.setParameter(1, name);
		q.setParameter(2, id);
		try {
			return (Product) q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}

	}
}
