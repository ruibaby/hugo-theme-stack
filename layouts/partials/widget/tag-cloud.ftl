<section class="widget tagCloud">
    <div class="widget-icon">
        <#include "../../../assets/icons/tag.svg" />
    </div>
    <h2 class="widget-title section-title">标签云</h2>

    <div class="tagCloud-tags">
        <@tagTag method="list">
            <#list tags as tag>
                <a href="${tag.fullPath!}" class="font_size_${tag.postCount!}">
                    ${tag.name!}
                </a>
            </#list>
        </@tagTag>
    </div>
</section>