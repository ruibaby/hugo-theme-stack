<#macro article_components_content post>
<section class="article-content">
    <!-- Refer to https://discourse.gohugo.io/t/responsive-tables-in-markdown/10639/5 -->
<#--    {{ $wrappedTable := printf "<div class=\"table-wrapper\">${1}</div>" }}-->
<#--    {{ .Content | replaceRE "(<table>(?:.|\n)+?</table>)" $wrappedTable | safeHTML }}-->

    ${post.formatContent!}
</section>
</#macro>