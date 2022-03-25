<#include "../../article/components/details.ftl" />
<#macro article_components_header post>
<header class="article-header">
    <#if post.thumbnail?? && post.thumbnail!=''>
        <div class="article-image">
            <a href="${post.fullPath!}">
                <img src="${post.thumbnail!}" loading="lazy" alt="Featured image of post ${post.title!}" />
            </a>
        </div>
    </#if>

    <@article_components_details post=post />
</header>
</#macro>