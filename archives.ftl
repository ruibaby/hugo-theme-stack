<#include "layouts/partials/article-list/compact.ftl"/>
<@layout.extends name="layouts/_default/baseof.ftl">
    <@layout.put block="title" type="replace">文章归档 - ${blog_title!}</@layout.put>
    <@layout.put block="template-archives" type="replace"></@layout.put>
    <@layout.put block="main" type="replace">
        <header>
            <h2 class="section-title">分类</h2>
            <div class="subsection-list">
                <div class="article-list--tile">
                    {{ range $terms }}
                    {{ partial "article-list/tile" (dict "context" . "size" "250x150" "Type" "taxonomy") }}
                    {{ end }}
                </div>
            </div>
        </header>

        <@postTag method="archiveYear">
            <#list archives as archive>
                <div class="archives-group" id="${archive.year?c}">
                    <h2 class="archives-date section-title"><a href="${archives_url!}#${archive.year?c}">${archive.year?c}</a></h2>
                    <div class="article-list--compact">
                        <#list archive.posts?sort_by("createTime")?reverse as post>
                            <@article_list_compact post=post />
                        </#list>
                    </div>
                </div>
            </#list>
        </@postTag>

        <#include "layouts/partials/footer/footer.ftl" />
    </@layout.put>
</@layout.extends>