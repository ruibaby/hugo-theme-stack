<#include "../article/components/header.ftl" />
<#macro article_list_default post>
<article class="<#if post.thumbnail?? && post.thumbnail!=''>has-image</#if>">
    <@article_components_header post=post />
</article>
</#macro>