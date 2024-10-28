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

import com.dao.LvxingsheLiuyanDao;
import com.entity.LvxingsheLiuyanEntity;
import com.service.LvxingsheLiuyanService;
import com.entity.view.LvxingsheLiuyanView;

/**
 * 旅行社留言 服务实现类
 * @author 
 * @since 2021-04-14
 */
@Service("lvxingsheLiuyanService")
@Transactional
public class LvxingsheLiuyanServiceImpl extends ServiceImpl<LvxingsheLiuyanDao, LvxingsheLiuyanEntity> implements LvxingsheLiuyanService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<LvxingsheLiuyanView> page =new Query<LvxingsheLiuyanView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }


}
