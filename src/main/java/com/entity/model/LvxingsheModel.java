package com.entity.model;

import com.entity.LvxingsheEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 旅行社
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 * @author 
 * @email
 * @date 2021-04-14
 */
public class LvxingsheModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 旅行社名称
     */
    private String lvxingsheName;


    /**
     * 旅行社星级
     */
    private Integer lvxingsheTypes;


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


    /**
     * 创建时间 show1 show2 photoShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：旅行社名称
	 */
    public String getLvxingsheName() {
        return lvxingsheName;
    }


    /**
	 * 设置：旅行社名称
	 */
    public void setLvxingsheName(String lvxingsheName) {
        this.lvxingsheName = lvxingsheName;
    }
    /**
	 * 获取：旅行社星级
	 */
    public Integer getLvxingsheTypes() {
        return lvxingsheTypes;
    }


    /**
	 * 设置：旅行社星级
	 */
    public void setLvxingsheTypes(Integer lvxingsheTypes) {
        this.lvxingsheTypes = lvxingsheTypes;
    }
    /**
	 * 获取：旅行社位置
	 */
    public String getLvxingsheWeizhi() {
        return lvxingsheWeizhi;
    }


    /**
	 * 设置：旅行社位置
	 */
    public void setLvxingsheWeizhi(String lvxingsheWeizhi) {
        this.lvxingsheWeizhi = lvxingsheWeizhi;
    }
    /**
	 * 获取：旅行社缩略图
	 */
    public String getLvxingshePhoto() {
        return lvxingshePhoto;
    }


    /**
	 * 设置：旅行社缩略图
	 */
    public void setLvxingshePhoto(String lvxingshePhoto) {
        this.lvxingshePhoto = lvxingshePhoto;
    }
    /**
	 * 获取：附近景点
	 */
    public String getLvxingsheJingdian() {
        return lvxingsheJingdian;
    }


    /**
	 * 设置：附近景点
	 */
    public void setLvxingsheJingdian(String lvxingsheJingdian) {
        this.lvxingsheJingdian = lvxingsheJingdian;
    }
    /**
	 * 获取：单价
	 */
    public Integer getLvxingsheNewMoney() {
        return lvxingsheNewMoney;
    }


    /**
	 * 设置：单价
	 */
    public void setLvxingsheNewMoney(Integer lvxingsheNewMoney) {
        this.lvxingsheNewMoney = lvxingsheNewMoney;
    }
    /**
	 * 获取：旅行社详情
	 */
    public String getLvxingsheContent() {
        return lvxingsheContent;
    }


    /**
	 * 设置：旅行社详情
	 */
    public void setLvxingsheContent(String lvxingsheContent) {
        this.lvxingsheContent = lvxingsheContent;
    }
    /**
	 * 获取：创建时间 show1 show2 photoShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show1 show2 photoShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
