package com.entity.view;

import com.entity.LvxingsheCollectionEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 旅行社收藏
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email
 * @date 2021-04-14
 */
@TableName("lvxingshe_collection")
public class LvxingsheCollectionView extends LvxingsheCollectionEntity implements Serializable {
    private static final long serialVersionUID = 1L;



		//级联表 lvxingshe
			/**
			* 旅行社名称
			*/
			private String lvxingsheName;
			/**
			* 旅行社星级
			*/
			private Integer lvxingsheTypes;
				/**
				* 旅行社星级的值
				*/
				private String lvxingsheValue;
			/**
			* 旅行社位置
			*/
			private String lvxingsheWeizhi;
			/**
			* 旅行社缩略图
			*/
			private String lvxingshePhoto;
			/**
			* 附近景点
			*/
			private String lvxingsheJingdian;
			/**
			* 单价
			*/
			private Integer lvxingsheNewMoney;
			/**
			* 旅行社详情
			*/
			private String lvxingsheContent;

		//级联表 yonghu
			/**
			* 游客姓名
			*/
			private String yonghuName;
			/**
			* 游客手机号
			*/
			private String yonghuPhone;
			/**
			* 游客身份证号
			*/
			private String yonghuIdNumber;
			/**
			* 游客头像
			*/
			private String yonghuPhoto;
			/**
			* 性别
			*/
			private Integer sexTypes;
				/**
				* 性别的值
				*/
				private String sexValue;

	public LvxingsheCollectionView() {

	}

	public LvxingsheCollectionView(LvxingsheCollectionEntity lvxingsheCollectionEntity) {
		try {
			BeanUtils.copyProperties(this, lvxingsheCollectionEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



















				//级联表的get和set lvxingshe
					/**
					* 获取： 旅行社名称
					*/
					public String getLvxingsheName() {
						return lvxingsheName;
					}
					/**
					* 设置： 旅行社名称
					*/
					public void setLvxingsheName(String lvxingsheName) {
						this.lvxingsheName = lvxingsheName;
					}
					/**
					* 获取： 旅行社星级
					*/
					public Integer getLvxingsheTypes() {
						return lvxingsheTypes;
					}
					/**
					* 设置： 旅行社星级
					*/
					public void setLvxingsheTypes(Integer lvxingsheTypes) {
						this.lvxingsheTypes = lvxingsheTypes;
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
					/**
					* 获取： 旅行社位置
					*/
					public String getLvxingsheWeizhi() {
						return lvxingsheWeizhi;
					}
					/**
					* 设置： 旅行社位置
					*/
					public void setLvxingsheWeizhi(String lvxingsheWeizhi) {
						this.lvxingsheWeizhi = lvxingsheWeizhi;
					}
					/**
					* 获取： 旅行社缩略图
					*/
					public String getLvxingshePhoto() {
						return lvxingshePhoto;
					}
					/**
					* 设置： 旅行社缩略图
					*/
					public void setLvxingshePhoto(String lvxingshePhoto) {
						this.lvxingshePhoto = lvxingshePhoto;
					}
					/**
					* 获取： 附近景点
					*/
					public String getLvxingsheJingdian() {
						return lvxingsheJingdian;
					}
					/**
					* 设置： 附近景点
					*/
					public void setLvxingsheJingdian(String lvxingsheJingdian) {
						this.lvxingsheJingdian = lvxingsheJingdian;
					}
					/**
					* 获取： 单价
					*/
					public Integer getLvxingsheNewMoney() {
						return lvxingsheNewMoney;
					}
					/**
					* 设置： 单价
					*/
					public void setLvxingsheNewMoney(Integer lvxingsheNewMoney) {
						this.lvxingsheNewMoney = lvxingsheNewMoney;
					}
					/**
					* 获取： 旅行社详情
					*/
					public String getLvxingsheContent() {
						return lvxingsheContent;
					}
					/**
					* 设置： 旅行社详情
					*/
					public void setLvxingsheContent(String lvxingsheContent) {
						this.lvxingsheContent = lvxingsheContent;
					}













				//级联表的get和set yonghu
					/**
					* 获取： 游客姓名
					*/
					public String getYonghuName() {
						return yonghuName;
					}
					/**
					* 设置： 游客姓名
					*/
					public void setYonghuName(String yonghuName) {
						this.yonghuName = yonghuName;
					}
					/**
					* 获取： 游客手机号
					*/
					public String getYonghuPhone() {
						return yonghuPhone;
					}
					/**
					* 设置： 游客手机号
					*/
					public void setYonghuPhone(String yonghuPhone) {
						this.yonghuPhone = yonghuPhone;
					}
					/**
					* 获取： 游客身份证号
					*/
					public String getYonghuIdNumber() {
						return yonghuIdNumber;
					}
					/**
					* 设置： 游客身份证号
					*/
					public void setYonghuIdNumber(String yonghuIdNumber) {
						this.yonghuIdNumber = yonghuIdNumber;
					}
					/**
					* 获取： 游客头像
					*/
					public String getYonghuPhoto() {
						return yonghuPhoto;
					}
					/**
					* 设置： 游客头像
					*/
					public void setYonghuPhoto(String yonghuPhoto) {
						this.yonghuPhoto = yonghuPhoto;
					}
					/**
					* 获取： 性别
					*/
					public Integer getSexTypes() {
						return sexTypes;
					}
					/**
					* 设置： 性别
					*/
					public void setSexTypes(Integer sexTypes) {
						this.sexTypes = sexTypes;
					}


						/**
						* 获取： 性别的值
						*/
						public String getSexValue() {
							return sexValue;
						}
						/**
						* 设置： 性别的值
						*/
						public void setSexValue(String sexValue) {
							this.sexValue = sexValue;
						}



}
