<#include "../include/imports.ftl">
  <@hst.setBundle basename="essentials.homepage" />
  <div class="hero_bg_box">
    <div class="bg_img_box">
      <img src="<@hst.webfile  path='/images/hero-bg.png' />" alt="">
    </div>
  </div>
  <div class="slider_section">
    <div class="detail-box">
      <h1>
        <@fmt.message key="homepage.title" var="title" />
        ${title?html}
      </h1>
      <p>
        <@fmt.message key="homepage.text" var="text" />
        ${text?html}
      </p>
      </p>
      <#if !hstRequest.requestContext.channelManagerPreviewRequest>
        <p>
          [This text can be edited
          <a href="http://localhost:8080/cms/?1&path=/content/documents/administration/labels/homepage" target="_blank">here</a>.]
        </p>
      </#if>
    </div>
    <div>
      <@hst.include ref="container" />
    </div>