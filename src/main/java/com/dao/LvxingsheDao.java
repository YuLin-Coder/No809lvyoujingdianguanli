package com.dao;

import com.entity.LvxingsheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.LvxingsheView;

/**
 * 旅行社 Dao 接口
 *
 * @author 
 * @since 2021-04-14
 */
public interface LvxingsheDao extends BaseMapper<LvxingsheEntity> {

   List<LvxingsheView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
