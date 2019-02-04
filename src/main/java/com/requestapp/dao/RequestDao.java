package com.requestapp.dao;

import com.requestapp.model.Request;

import java.util.List;

public interface RequestDao {

    public void addRequest (Request request);
    public void updateRequest (Request request);
    public void removeRequest (int id);
    public Request getRequestById(int id);
    public List<Request> listRequests();



}
