<#--{{- $scope := default "homepage" .Scope -}}-->
<#--{{- $context := .Context -}}-->
<#--{{- with (index .Context.Site.Params.widgets $scope) -}}-->
    <aside class="sidebar right-sidebar sticky">
<#--        {{ range $widget := . }}-->
<#--            {{ if templates.Exists (printf "partials/widget/%s.html" .type) }}-->
<#--                {{ partial (printf "widget/%s" .type) (dict "Context" $context "Params" .params) }}-->
<#--            {{ else }}-->
<#--                {{ warnf "Widget %s not found" .type }}-->
<#--            {{ end }}-->
<#--        {{ end }}-->
        <#include "../widget/search.ftl" />
        <#include "../widget/archives.ftl" />
        <#include "../widget/categories.ftl" />
        <#include "../widget/tag-cloud.ftl" />
    </aside>
<#--{{ end }}-->