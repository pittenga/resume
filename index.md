---
title: index
---
Hello World!
{% for release in site.github.releases %}
{% for asset in release.assets %}
  {{ asset.browser_download_url }}
  {% if asset.browser_download_url.endswith('.pdf') %}
    <a href='{{ asset.browser_download_url }}'>{{ asset.browser_download_url }}</a>
  {% endif %}
{% endfor %}
{% endfor %}

{% for asset in site.github.releases['latest'] %}
  {{ asset.browser_download_url }}
  {% if asset.browser_download_url.endswith('.pdf') %}
    <a href='{{ asset.browser_download_url }}'>{{ asset.browser_download_url }}</a>
  {% endif %}
{% endfor %}

