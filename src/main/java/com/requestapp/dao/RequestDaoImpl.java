package com.requestapp.dao;

import com.requestapp.model.Request;
import com.requestapp.util.IdComparator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;


@Repository
public class RequestDaoImpl implements RequestDao {

    private static final Logger logger = LoggerFactory.getLogger(RequestDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addRequest(Request request) {
        Session session =  this.sessionFactory.getCurrentSession();
        session.persist(request);
        logger.info("Request Successfully saved. Request details: "+ request);
    }

    public void updateRequest(Request request) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(request);
        logger.info("Request successfully update. Request details: "+request);
    }

    public void removeRequest(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Request request = (Request) session.load(Request.class, new Integer(id));

        if (request!=null) {
            session.delete(request);
        }

        logger.info("Request successfully removed. Request details: "+request);
    }

    public Request getRequestById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Request request = (Request) session.load(Request.class, new Integer(id));
        logger.info("Request successfully loaded. Request details: "+request);
        return request;
    }

    @SuppressWarnings("unchecked")
    public List<Request> listRequests() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Request> requestList = session.createQuery("from Request").list();
        Collections.sort(requestList, new IdComparator());

        for (Request request: requestList) {
            logger.info("Request list: "+request);
        }
        return requestList;
    }
}
