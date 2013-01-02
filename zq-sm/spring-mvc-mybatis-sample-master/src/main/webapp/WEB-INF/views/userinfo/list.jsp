﻿﻿﻿<%-- 
    Document   : new
    Created on : 2012-12-30, 15:19:35
    Author     : alan
--%>
<%@ page session="false" %>
<%@ include file="/WEB-INF/commons/taglibs.jsp" %>



<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add</title>
        <link href="<c:url value="/resources/css/base.css" />" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="<c:url value="/resources/javascripts/base.js" />" ></script>
    </head>
    <body>
    
 <ec:table items='page.result' var="item" method="get" 
                  retrieveRowsCallback="limit" sortRowsCallback="limit" filterRowsCallback="limit"
                  action="${ctx}/account/page" autoIncludeParameters="true">
      <ec.exportXls fileName="listuser.xls" tooltip="Export Excel"/>     
            <ec:row>
                <ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" sortable="false" width="3%" viewsAllowed="html">
                    <input type="checkbox" name="items" value="${item.id}"/>
                </ec:column>
                <ec:column property="id" sortable="false"  title="编号"/>
                <ec:column property="name"   title="名字"/>
                <ec:column property="age"  title="密码"/>
                <ec:column property="操作" title="操作" sortable="false" viewsAllowed="html">
                    <a href="${ctx}/userinfo/${item.id}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
                </ec:column>
            </ec:row>
        </ec:table>
    </body>
</html>