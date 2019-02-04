package com.requestapp.service;

import com.requestapp.dao.RequestDao;
import com.requestapp.model.Request;
import com.requestapp.util.IdComparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;


@Service
public class RequestServiceImpl implements RequestService{
    @Autowired
    private RequestDao requestDao;

    public void setRequestDao(RequestDao requestDao) {
        this.requestDao = requestDao;
    }

    @Transactional
    public void addRequest(Request request) {
        this.requestDao.addRequest(request);
    }

    @Transactional
    public void updateRequest(Request request) {
        this.requestDao.updateRequest(request);
    }

    @Transactional
    public void removeRequest(int id) {
        this.requestDao.removeRequest(id);
    }

    @Transactional
    public Request getRequestById(int id) {
        return this.requestDao.getRequestById(id);
    }

    @Transactional
    public List<Request> listRequests() {
        return this.requestDao.listRequests();
    }
}
