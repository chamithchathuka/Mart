package com.zambrone.dao.impl;

import com.zambrone.dao.CategoryDAO;
import com.zambrone.entity.Category;
import com.zambrone.entity.Courier;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Chamith on 05/07/2017.
 */
@Repository
@Transactional(
        propagation = Propagation.SUPPORTS
)
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public CategoryDAOImpl() {
    }

    public SessionFactory getSessionFactory() {
        return this.sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public boolean addCategory(Category category) {

        Session session = this.getSessionFactory().openSession();
        session.save(category);
        session.close();

        return true;


    }

    @Override
    public boolean deleteCategoryByName(String name) {
        return false;
    }

    @Override
    public boolean deleteCategoryById(Integer id) {
        return false;
    }

    @Override
    public Category searchCategoryById(Integer id) {
        return null;
    }

    @Override
    public List<Category> getAllCategory() {
        System.out.println(".............................Repository...................");
        return (List<Category>) getSessionFactory().openSession()
                .createCriteria(Category.class)
                .list();
    }

    @Override
    public Integer searchCategoryCount() {
        return null;
    }

    @Override
    public Category searchCategoryByName(String name) {
        return null;
    }
}
