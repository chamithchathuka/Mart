package com.zambrone.dao.impl;

import com.zambrone.dao.UserDAO;
import com.zambrone.entity.Users;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Chamith on 17/09/2017.
 */
@Repository
@Transactional(
        propagation = Propagation.SUPPORTS
)
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    /**
     *
     * @return
     */
    private SessionFactory getSessionFactory() {
        return (this.sessionFactory instanceof SessionFactory) ? this.sessionFactory : null;
    }

    /**
     *
     * @return
     */
    private Session getSessionFactoryCurrentSession() {
        return getSessionFactory().openSession();
    }

    @Override
    public void addUser(Users user) {
        System.out.println(user);
        System.out.println("DAO user add is called");
        Session session = getSessionFactoryCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.flush();
        session.close();

    }

    @Override
    public void deleteUser(Integer userId) {
        getSessionFactoryCurrentSession().delete(userId);
    }

    @Override
    public Users searchUser(String userName)  {

        return getSessionFactoryCurrentSession().get(Users.class, userName);


    }


    @Override
    public int searchUserCount() {
        return 0;
    }

    @Override
    public void updateUser(Users user) {
        Session session = getSessionFactoryCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(user);
        transaction.commit();
        session.flush();
        session.close();
        System.out.println("User Updated Successfully" + user.toString());
    }


}
