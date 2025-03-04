<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"游客管理"      ,
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"游客管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"新闻管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"景点管理",
                        "menuJump":"列表",
                        "tableName":"jingdian"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"景点留言管理",
                        "menuJump":"列表",
                        "tableName":"jingdianLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"景点收藏管理",
                        "menuJump":"列表",
                        "tableName":"jingdianCollection"
                    }
                ],
                "menu":"景点管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"旅行社管理",
                        "menuJump":"列表",
                        "tableName":"lvxingshe"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"旅行社留言管理",
                        "menuJump":"列表",
                        "tableName":"lvxingsheLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"旅行社收藏管理",
                        "menuJump":"列表",
                        "tableName":"lvxingsheCollection"
                    }
                ],
                "menu":"旅行社管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"景点类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryJingdian"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"景点等级类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryJingdianDengji"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"旅行社星级类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryLvxingshe"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryNews"
                    }

                ],
                "menu":"基础数据管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,{
        "backMenu":[
			{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"新闻管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"新闻管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"景点管理",
                        "menuJump":"列表",
                        "tableName":"jingdian"
                    }
                    ,
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"景点留言管理",
                        "menuJump":"列表",
                        "tableName":"jingdianLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"景点收藏管理",
                        "menuJump":"列表",
                        "tableName":"jingdianCollection"
                    }
                ],
                "menu":"景点管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"旅行社管理",
                        "menuJump":"列表",
                        "tableName":"lvxingshe"
                    }
                    ,
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"旅行社留言管理",
                        "menuJump":"列表",
                        "tableName":"lvxingsheLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"旅行社收藏管理",
                        "menuJump":"列表",
                        "tableName":"lvxingsheCollection"
                    }
                ],
                "menu":"旅行社管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghu"
    }
];

var hasMessage = '';
