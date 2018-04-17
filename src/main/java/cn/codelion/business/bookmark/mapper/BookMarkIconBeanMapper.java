package cn.codelion.business.bookmark.mapper;

import org.apache.ibatis.annotations.Mapper;

import cn.codelion.business.bookmark.bean.BookMarkIconBean;
@Mapper
public interface BookMarkIconBeanMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BookMarkIconBean record);

    int insertSelective(BookMarkIconBean record);

    BookMarkIconBean selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookMarkIconBean record);

    int updateByPrimaryKey(BookMarkIconBean record);
}