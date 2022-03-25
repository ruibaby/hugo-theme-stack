{{- partial "helper/external" (dict "Context" . "Namespace" "Vibrant") -}}

{{- $opts := dict "minify" hugo.IsProduction -}}
{{- $script := resources.Get "ts/main.ts" | js.Build $opts -}}

<script type="text/javascript" src="{{ $script.RelPermalink }}" defer></script>

{{- with resources.Get "ts/custom.ts" -}}
    {{/* Place your custom script in HUGO_SITE_FOLDER/assets/ts/custom.ts */}}
    {{- $customScript := . | js.Build $opts -}}
    <script type="text/javascript" src="{{ $customScript.RelPermalink }}" defer></script>
<script defer src='https://d33wubrfki0l68.cloudfront.net/js/503ffd96442263b7595044014228e9b8c75dc5c8/ts/main.js' type='text/javascript'></script>
{{- end -}}