<#macro pagination method page total display>
    <nav class='pagination'>
        <@paginationTag method="${method}" page="${page}" total="${total}" display="${display}">
            <#list pagination.rainbowPages as number>
                <#if number.isCurrent>
                    <span class='page-link current'>
                        ${number.page!}
                    </span>
                <#else>
                    <a class='page-link' href='${number.fullPath!}'>
                        ${number.page!}
                    </a>
                </#if>
            </#list>
            {{ if eq . $.Paginator }}
            <span class='page-link current'>
                {{- .PageNumber -}}
            </span>
            {{ else if or (or (eq . $.Paginator.First) (eq . $.Paginator.Prev)) (or  (eq . $.Paginator.Next) (eq . $.Paginator.Last )) }}
                <a class='page-link' href='{{ .URL }}'>
                    {{- .PageNumber -}}
                </a>
            {{ else }}
                {{ if and (not ($.Scratch.Get "hasPrevDots")) (lt .PageNumber $.Paginator.PageNumber)  }}
                    {{ $.Scratch.Set "hasPrevDots" true }}
                    <span class='page-link dots'>&hellip;</span>
                {{ else if and (not ($.Scratch.Get "hasNextDots")) (gt .PageNumber $.Paginator.PageNumber) }}
                    {{ $.Scratch.Set "hasNextDots" true }}
                    <span class='page-link dots'>&hellip;</span>
                {{ end }}
            {{ end }}
        </@paginationTag>
    </nav>
</#macro>