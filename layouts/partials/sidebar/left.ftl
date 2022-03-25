<aside class="sidebar left-sidebar sticky {{ if .Site.Params.sidebar.compact }}compact{{ end }}">
    <button class="hamburger hamburger--spin" type="button" id="toggle-menu" aria-label="{{ T `toggleMenu` }}">
        <span class="hamburger-box">
            <span class="hamburger-inner"></span>
        </span>
    </button>

    <header>
        <figure class="site-avatar">
            <a href="${blog_url!}">
                <img src="${user.avatar!}" width="300" height="300" class="site-logo" loading="lazy" alt="Avatar">
            </a>
            <span class="emoji">🌚</span>
        </figure>

        <div class="site-meta">
            <h1 class="site-name"><a href="${blog_url!}">${blog_title!}</a></h1>
            <h2 class="site-description">${user.description!}</h2>
        </div>
    </header>

<#--    {{- with .Site.Menus.social -}}-->
<#--        <ol class="social-menu">-->
<#--            {{ range . }}-->
<#--                <li>-->
<#--                    <a-->
<#--                        href='{{ .URL }}'-->
<#--                        {{ if eq (default true .Params.newTab) true }}target="_blank"{{ end }}-->
<#--                        {{ with .Name }}title="{{ . }}"{{ end }}-->
<#--                    >-->
<#--                        {{ $icon := default "link" .Params.Icon }}-->
<#--                        {{ with $icon }}-->
<#--                            {{ partial "helper/icon" . }}-->
<#--                        {{ end }}-->
<#--                    </a>-->
<#--                </li>-->
<#--            {{ end }}-->
<#--        </ol>-->
<#--    {{- end -}}-->

    <ol class="menu" id="main-menu">
        <@menuTag method="list">
            <#list menus?sort_by("priority") as menu>
                <li class='current'>
                    <a href='${menu.url!}' target="${menu.target!}">
                        <span>${menu.name!}</span>
                    </a>
                </li>
            </#list>
        </@menuTag>

        <div class="menu-bottom-section">
<#--            {{ if (default false .Site.Params.colorScheme.toggle) }}-->
                <li id="dark-mode-toggle">
                    <#include "../../../assets/icons/toggle-left.svg" />
                    <#include "../../../assets/icons/toggle-right.svg" />
                    <span>暗色模式</span>
                </li>
<#--            {{ end }}-->
        </div>
    </ol>
</aside>
