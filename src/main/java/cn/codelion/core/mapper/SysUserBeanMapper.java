package cn.codelion.core.mapper;

import org.apache.ibatis.annotations.Mapper;

import cn.codelion.core.bean.SysUserBean;
@Mapper
public interface SysUserBeanMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysUserBean record);

    int insertSelective(SysUserBean record);

    SysUserBean selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysUserBean record);

    int updateByPrimaryKey(SysUserBean record);
}