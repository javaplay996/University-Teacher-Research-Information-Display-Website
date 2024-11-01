<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{
	"backMenu": [{
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "老师",
			"menuJump": "列表",
			"tableName": "laoshi"
		}],
		"menu": "老师管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "科研项目信息",
			"menuJump": "列表",
			"tableName": "keyan"
		}],
		"menu": "科研项目管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "院系信息",
			"menuJump": "列表",
			"tableName": "xueyuan"
		}],
		"menu": "院系管理"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "学院信息",
			"menuJump": "列表",
			"tableName": "yuanxi"
		}],
		"menu": "学院模块"
	}, {
		"child": [{
			"buttons": ["新增", "修改", "删除"],
			"menu": "轮播图管理",
			"tableName": "config"
		},{
			"buttons": ["新增", "修改", "删除"],
			"menu": "新闻公告",
			"tableName": "news"
		}],
		"menu": "系统管理"
	}],
	"frontMenu": [],
	"hasBackLogin": "是",
	"hasBackRegister": "否",
	"hasFrontLogin": "否",
	"hasFrontRegister": "否",
	"roleName": "管理员",
	"tableName": "users"
}];

var hasMessage = '';
