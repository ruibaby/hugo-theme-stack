{{ define "right-sidebar" }}
    {{ if .Scratch.Get "hasWidget" }}{{ partial "sidebar/right.html" (dict "Context" . "Scope" "page") }}{{ end}}
{{ end }}
<#include "layouts/partials/article/article.ftl" />
<#include "layouts/partials/comments/include.ftl" />
<@layout.extends name="layouts/_default/baseof.ftl">
    <@layout.put block="title" type="replace">${post.title!} - ${blog_title!}</@layout.put>
    <@layout.put block="body-class" type="replace">
        article-page
        {{/*
        Enable the right sidebar if
        - Widget different from 'TOC' is enabled
        - TOC is enabled and not empty
        */}}
        {{- $HasWidgetNotTOC := false -}}
        {{- $TOCWidgetEnabled := false -}}
        {{- range .Site.Params.widgets.page -}}
        {{- if ne .type "toc" -}}
        {{ $HasWidgetNotTOC = true -}}
        {{- else -}}
        {{ $TOCWidgetEnabled = true -}}
        {{- end -}}
        {{- end -}}

        {{- $TOCManuallyDisabled := eq .Params.toc false -}}
        {{- $TOCEnabled := and (not $TOCManuallyDisabled) $TOCWidgetEnabled -}}
        {{- $hasTOC := ge (len .TableOfContents) 100 -}}
        {{- .Scratch.Set "TOCEnabled" (and $TOCEnabled $hasTOC) -}}

        {{- .Scratch.Set "hasWidget" (or $HasWidgetNotTOC (and $TOCEnabled $hasTOC)) -}}
    </@layout.put>
    <@layout.put block="main" type="replace">
        <@article_article post=post />

        {{ if .Params.links }}
        {{ partial "article/components/links" . }}
        {{ end }}

        {{ partial "article/components/related-contents" . }}

        <@comment post=post type="post" />

        <#include "layouts/partials/footer/footer.ftl" />

        {{ partialCached "article/components/photoswipe" . }}
    </@layout.put>
</@layout.extends>