<section class="widget tagCloud">
    <div class="widget-icon">
        <#include "../../../assets/icons/categories.svg" />
    </div>
    <h2 class="widget-title section-title">分类</h2>
    <div class="tagCloud-tags">
        <@categoryTag method="list">
            <#list categories as category>
                <a href="${category.fullPath!}" class="font_size_${category.postCount!}">
                    ${category.name!}
                </a>
            </#list>
        </@categoryTag>
    </div>
</section>
