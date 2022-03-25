<!DOCTYPE html>
<html lang="zh-CN" dir="ltr">
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>

        <meta name='description' content='${meta_description!}' />
        <meta name="keywords" content="${meta_keywords!}" />

        <title><@layout.block name="title" /></title>

        <link rel='canonical' href='{{ .Permalink }}'>

        <#include "../partials/head/style.ftl" />
<#--        <#include "../partials/head/opengraph/include.ftl" />-->

        <@global.head />

        <@layout.block name="head" />
    </head>
    <body class="<@layout.block name="body-class" />">
        <#include "../partials/head/colorScheme.ftl" />

<#--        {{/* The container is wider when there's any activated widget */}}-->
<#--        {{- $hasWidget := false -}}-->
<#--        {{- range .Site.Params.widgets -}}-->
<#--            {{- if gt (len .) 0 -}}-->
<#--                {{- $hasWidget = true -}}-->
<#--            {{- end -}}-->
<#--        {{- end -}}-->
        <div class="container main-container flex on-phone--column {{ if $hasWidget }}extended{{ else }}compact{{ end }} extended">
            <@layout.block name="left-sidebar">
                <#include "../partials/sidebar/left.ftl" />
            </@layout.block>
            <main class="main full-width">
                <@layout.block name="main" />
            </main>
            <@layout.block name="right-sidebar" />
        </div>
        <#include "../partials/footer/include.ftl" />
    </body>
</html>
