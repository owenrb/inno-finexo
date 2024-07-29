<#include "../include/imports.ftl">

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->
<#if menu??>
<div class="has-edit-button collapse navbar-collapse" id="navbarSupportedContent">
  <#if menu.siteMenuItems??>
    <ul class="nav nav-pills navbar-nav">
      <#list menu.siteMenuItems as item>
        <#if !item.hstLink?? && !item.externalLink??>
          <#if item.selected || item.expanded>
            <li class="nav-item active"><div style="padding: 10px 15px;">${item.name?html}</div></li>
          <#else>
            <li class="nav-item"><div style="padding: 10px 15px;">${item.name?html}</div></li>
          </#if>
        <#else>
          <#if item.hstLink??>
            <#assign href><@hst.link link=item.hstLink/></#assign>
          <#elseif item.externalLink??>
            <#assign href>${item.externalLink?replace("\"", "")}</#assign>
          </#if>
          <#if  item.selected || item.expanded>
            <li class="nav-item active"><a href="${href}">${item.name?html}</a></li>
          <#else>
            <li class="nav-item"><a href="${href}">${item.name?html}</a></li>
          </#if>
        </#if>
      </#list>
    </ul>
  </#if>
  <@hst.cmseditmenu menu=menu/>
</div>
</#if>