<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<c:if test="${userType=='admin' || userType=='agent' }">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
      <tbody>      
          <tr>
            <th><span>商品总数：</span></th>
            <td><span ><a <c:if test="${goodsss.allcount > 0 }">  onclick="parent.addTab1('全部商品','${ctx }/shop/admin/goods!list.do')" class="imp" target="ajax"</c:if>>${ goodsss.allcount}</a>个</span></td>
          </tr>
          <tr>
            <th><span>回收站商品：</span></th>
            <td><span ><a <c:if test="${goodsss.disabledcount > 0 }"> href="${ctx }/shop/admin/goods!trash_list.do"  class="imp"</c:if>>${ goodsss.disabledcount}</a>个</span></td>
          </tr>          
         <tr>
            <th><span>上架商品：</span></th>
            <td><span ><a <c:if test="${goodsss.salecount > 0 }">  onclick="parent.addTab1('上架商品','${ctx }/shop/admin/goods!list.do?market_enable=1')" class="imp" target="ajax"</c:if>>${ goodsss.salecount}</a>个</span></td>
          </tr>
          <tr>
            <th><span>下架商品：</span></th>
            <td><span><a <c:if test="${goodsss.unsalecount> 0 }">  onclick="parent.addTab1('下架商品','${ctx }/shop/admin/goods!list.do?market_enable=0')" class="imp" target="ajax"</c:if>>${ goodsss.unsalecount}</a>个</span></td>
          </tr>     
        </tbody>            
 </table>
 </c:if>