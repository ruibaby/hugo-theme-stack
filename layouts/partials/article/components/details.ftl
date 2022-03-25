<#macro article_components_details post>
<div class="article-details">
    <#if post.categories?? && post.categories?size gt 0>
    <header class="article-category">
        <#list post.categories as category>
            <a href="${category.fullPath!}">
                ${category.name!}
            </a>
        </#list>
    </header>
    </#if>

    <div class="article-title-wrapper">
        <h2 class="article-title">
            <a href="${post.fullPath!}">
                ${post.title!}
            </a>
        </h2>
<#--        TODO-->
        <h3 class="article-subtitle">
            ${post.summary!}
        </h3>
    </div>

    <footer class="article-time">
        <div>
            <#include "../../../../assets/icons/date.svg" />
            <time class="article-time--published">
                ${post.createTime?string('yyyy-MM-dd')}
            </time>
        </div>

        <div>
            <#include "../../../../assets/icons/clock.svg" />
            <time class="article-time--reading">
                阅读时长: ${(post.wordCount/200)?int} 分钟
            </time>
        </div>
    </footer>
</div>
</#macro>