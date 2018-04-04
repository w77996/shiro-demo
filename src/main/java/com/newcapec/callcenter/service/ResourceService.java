package com.newcapec.callcenter.service;

import java.util.List;

import com.newcapec.callcenter.bean.Resource;

/**
 * Created by yutons on 2016/9/19.
 */
public interface ResourceService {
    Integer add(Resource res);

    Integer update(Resource res);

    Integer delete(int id);

    Resource load(int id);

    List<Resource> listResource();
}
