<#include "layouts/partials/article-list/default.ftl" />
<#include "layouts/partials/pagination.ftl" />
<@layout.extends name="layouts/_default/baseof.ftl">
    <@layout.put block="title" type="replace">${blog_title!}</@layout.put>
    <@layout.put block="main" type="replace">
        {{ $pages := where .Site.RegularPages "Type" "in" .Site.Params.mainSections }}
        {{ $notHidden := where .Site.RegularPages "Params.hidden" "!=" true }}
        {{ $filtered := ($pages | intersect $notHidden) }}
        {{ $pag := .Paginate ($filtered) }}

        <section class="article-list">
            <#list posts.content as post>
                <@article_list_default post=post />
            </#list>
        </section>

        <@pagination method="index" page="${posts.number}" total="${posts.totalPages}" display="3" />
        <#include "./layouts/partials/footer/footer.ftl" />
    </@layout.put>
    <@layout.put block="right-sidebar" type="replace">
        <#include "layouts/partials/sidebar/right.ftl" />
    </@layout.put>
</@layout.extends>