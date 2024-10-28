package com.service.impl;

import com.utils.StringUtil;
import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;

import com.dao.LvxingsheDao;
import com.entity.LvxingsheEntity;
import com.service.LvxingsheService;
import com.entity.view.LvxingsheView;

/**
 * 旅行社 服务实现类
 * @author 
 * @since 2021-04-14
 */
@Service("lvxingsheService")
@Transactional
public class LvxingsheServiceImpl extends ServiceImpl<LvxingsheDao, LvxingsheEntity> implements LvxingsheService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<LvxingsheView> page =new Query<LvxingsheView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }


}
