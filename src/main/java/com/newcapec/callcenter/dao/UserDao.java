package com.newcapec.callcenter.dao;

import org.apache.ibatis.annotations.Param;

import com.newcapec.callcenter.bean.Resource;
import com.newcapec.callcenter.bean.Role;
import com.newcapec.callcenter.bean.User;

import java.util.List;

/**
 * Created by yutons on 2016/9/18.
 */
public interface UserDao {
    Integer add(User user);

    Integer update(User user);

    Integer delete(Integer id);

    Integer batchDelete(@Param("ids") List<Integer> ids);

    User load(Integer id);

    List<User> listUser();

    User loadByUserName(String username);

    /**
     * 根据角色 id 查询所有是该角色的用户列表
     * @param rid
     * @return
     */
    List<User> listByRole(Integer rid);

    List<Resource> listAllResources(Integer uid);

    List<String> listRoleSnByUser(Integer uid);

    List<Role> listUserRole(Integer uid);
}
