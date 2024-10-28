package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 旅行社
 *
 * @author 
 * @email
 * @date 2021-04-14
 */
@TableName("lvxingshe")
public class LvxingsheEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public LvxingsheEntity() {

	}

	public LvxingsheEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 旅行社名称
     */
    @TableField(value = "lvxingshe_name")

    private String lvxingsheName;


    /**
     * 旅行社星级
     */
    @TableField(value = "lvxingshe_types")

    private Integer lvxingsheTypes;


    /**
     * 旅行社位置
     */
    @TableField(value = "lvxingshe_weizhi")

    private String lvxingsheWeizhi;


    /**
     * 旅行社缩略图
     */
    @TableField(value = "lvxingshe_photo")

    private String lvxingshePhoto;


    /**
     * 附近景点
     */
    @TableField(value = "lvxingshe_jingdian")

    private String lvxingsheJingdian;


    /**
     * 单价
     */
    @TableField(value = "lvxingshe_new_money")

    private Integer lvxingsheNewMoney;


    /**
     * 旅行社详情
     */
    @TableField(value = "lvxingshe_content")

    private String lvxingsheContent;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：旅行社名称
	 */
    public String getLvxingsheName() {
        return lvxingsheName;
    }


    /**
	 * 获取：旅行社名称
	 */

    public void setLvxingsheName(String lvxingsheName) {
        this.lvxingsheName = lvxingsheName;
    }
    /**
	 * 设置：旅行社星级
	 */
    public Integer getLvxingsheTypes() {
        return lvxingsheTypes;
    }


    /**
	 * 获取：旅行社星级
	 */

    public void setLvxingsheTypes(Integer lvxingsheTypes) {
        this.lvxingsheTypes = lvxingsheTypes;
    }
    /**
	 * 设置：旅行社位置
	 */
    public String getLvxingsheWeizhi() {
        return lvxingsheWeizhi;
    }


    /**
	 * 获取：旅行社位置
	 */

    public void setLvxingsheWeizhi(String lvxingsheWeizhi) {
        this.lvxingsheWeizhi = lvxingsheWeizhi;
    }
    /**
	 * 设置：旅行社缩略图
	 */
    public String getLvxingshePhoto() {
        return lvxingshePhoto;
    }


    /**
	 * 获取：旅行社缩略图
	 */

    public void setLvxingshePhoto(String lvxingshePhoto) {
        this.lvxingshePhoto = lvxingshePhoto;
    }
    /**
	 * 设置：附近景点
	 */
    public String getLvxingsheJingdian() {
        return lvxingsheJingdian;
    }


    /**
	 * 获取：附近景点
	 */

    public void setLvxingsheJingdian(String lvxingsheJingdian) {
        this.lvxingsheJingdian = lvxingsheJingdian;
    }
    /**
	 * 设置：单价
	 */
    public Integer getLvxingsheNewMoney() {
        return lvxingsheNewMoney;
    }


    /**
	 * 获取：单价
	 */

    public void setLvxingsheNewMoney(Integer lvxingsheNewMoney) {
        this.lvxingsheNewMoney = lvxingsheNewMoney;
    }
    /**
	 * 设置：旅行社详情
	 */
    public String getLvxingsheContent() {
        return lvxingsheContent;
    }


    /**
	 * 获取：旅行社详情
	 */

    public void setLvxingsheContent(String lvxingsheContent) {
        this.lvxingsheContent = lvxingsheContent;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Lvxingshe{" +
            "id=" + id +
            ", lvxingsheName=" + lvxingsheName +
            ", lvxingsheTypes=" + lvxingsheTypes +
            ", lvxingsheWeizhi=" + lvxingsheWeizhi +
            ", lvxingshePhoto=" + lvxingshePhoto +
            ", lvxingsheJingdian=" + lvxingsheJingdian +
            ", lvxingsheNewMoney=" + lvxingsheNewMoney +
            ", lvxingsheContent=" + lvxingsheContent +
            ", createTime=" + createTime +
        "}";
    }
}
