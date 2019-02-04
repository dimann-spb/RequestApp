package com.requestapp.util;

import com.requestapp.model.Request;

import java.util.Comparator;

public class IdComparator implements Comparator<Request> {


    @Override
    public int compare(Request o1, Request o2) {
            return o2.getId() - o1.getId();
    }
}
