package com.newcapec.callcenter.service.impl;

import com.newcapec.callcenter.bean.Resource;
import com.newcapec.callcenter.dao.ResourceDao;
import com.newcapec.callcenter.service.ResourceService;
import com.newcapec.callcenter.shiro.cache.BaseCacheService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.Cache;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yutons on 2016/9/19.
 */
@Service
public class ResourceServiceImpl implements ResourceService {
    @Autowired
    private ResourceDao resourceDao;

    @Override
    public Integer add(Resource res) {
        return resourceDao.add(res);
    }

    @Override
    public Integer update(Resource res) {
        return resourceDao.update(res);
    }

    @Override
    public Integer delete(int id) {
        return resourceDao.delete(id);
    }

    @Override
    public Resource load(int id) {
        return resourceDao.load(id);
    }

    @Override
    public List<Resource> listResource() {
        return resourceDao.listResource();
    }
}
