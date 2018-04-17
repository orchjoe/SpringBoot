package cn.codelion.business.bookmark.mapper;

import org.apache.ibatis.annotations.Mapper;

import cn.codelion.business.bookmark.bean.BookMarkFileBean;
@Mapper
public interface BookMarkFileBeanMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BookMarkFileBean record);

    int insertSelective(BookMarkFileBean record);

    BookMarkFileBean selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookMarkFileBean record);

    int updateByPrimaryKey(BookMarkFileBean record);
}