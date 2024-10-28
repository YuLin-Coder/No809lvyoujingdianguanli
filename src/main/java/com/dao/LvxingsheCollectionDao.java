package com.dao;

import com.entity.LvxingsheCollectionEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.LvxingsheCollectionView;

/**
 * 旅行社收藏 Dao 接口
 *
 * @author 
 * @since 2021-04-14
 */
public interface LvxingsheCollectionDao extends BaseMapper<LvxingsheCollectionEntity> {

   List<LvxingsheCollectionView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
