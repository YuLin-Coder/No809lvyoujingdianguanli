package com.entity.view;

import com.entity.LvxingsheEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 旅行社
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email
 * @date 2021-04-14
 */
@TableName("lvxingshe")
public class LvxingsheView extends LvxingsheEntity implements Serializable {
    private static final long serialVersionUID = 1L;
		/**
		* 旅行社星级的值
		*/
		private String lvxingsheValue;



	public LvxingsheView() {

	}

	public LvxingsheView(LvxingsheEntity lvxingsheEntity) {
		try {
			BeanUtils.copyProperties(this, lvxingsheEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



			/**
			* 获取： 旅行社星级的值
			*/
			public String getLvxingsheValue() {
				return lvxingsheValue;
			}
			/**
			* 设置： 旅行社星级的值
			*/
			public void setLvxingsheValue(String lvxingsheValue) {
				this.lvxingsheValue = lvxingsheValue;
			}












}
