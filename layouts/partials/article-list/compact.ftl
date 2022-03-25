<#macro article_list_compact post>
<article>
    <a href="${post.fullPath!}">
        <div class="article-details">
            <h2 class="article-title">
                ${post.title!}
            </h2>
            <footer class="article-time">
                <time datetime='${post.createTime?iso_local}'>
                    ${post.createTime?string('yyyy-MM-dd')}
                </time>
            </footer>
        </div>

        <#if post.thumbnail?? && post.thumbnail!=''>
            <div class="article-image">
                <img src="${post.thumbnail!}" loading="lazy" alt="Featured image of post ${post.title!}" />
            </div>
        </#if>
    </a>
</article>
</#macro>