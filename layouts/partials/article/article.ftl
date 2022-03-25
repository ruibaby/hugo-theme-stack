<#include "./components/header.ftl" />
<#include "./components/content.ftl" />
<#include "./components/footer.ftl" />
<#macro article_article post>
<article class="<#if post.thumbnail?? && post.thumbnail!=''>has-image</#if> main-article">
    <@article_components_header post=post />
    <@article_components_content post=post />
    <@article_components_footer post=post />
</article>
</#macro>