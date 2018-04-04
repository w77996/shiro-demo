package com.newcapec.callcenter.dao;

import java.util.List;

import com.newcapec.callcenter.bean.Resource;

/**
 * Created by yutons on 2016/9/18.
 */
public interface ResourceDao {
    Integer add(Resource res);

    Integer update(Resource res);

    Integer delete(int id);

    Resource load(int id);

    List<Resource> listResource();
}
