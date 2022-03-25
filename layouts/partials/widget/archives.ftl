<section class="widget archives">
    <div class="widget-icon">
        <#include "../../../assets/icons/infinity.svg" />
    </div>
    <h2 class="widget-title section-title">归档</h2>
    <div class="widget-archive--list">
        <@postTag method="archiveYear">
            <#list archives as archive>
                <div class="archives-year">
                    <a href="${archives_url!}#${archive.year?c}">
                        <span class="year">${archive.year?c}</span>
                        <span class="count">${archive.posts?size}</span>
                    </a>
                </div>
            </#list>
        </@postTag>
    </div>
</section>