package cn.codelion.business.bookmark.mapper;

import org.apache.ibatis.annotations.Mapper;

import cn.codelion.business.bookmark.bean.BookMarkTagBean;
@Mapper
public interface BookMarkTagBeanMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BookMarkTagBean record);

    int insertSelective(BookMarkTagBean record);

    BookMarkTagBean selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookMarkTagBean record);

    int updateByPrimaryKey(BookMarkTagBean record);
}