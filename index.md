---
title: index
---
Hello World!
{% for asset in site.github.releases.assets %}
  {{ asset.browser_download_url }}
  {% if asset.browser_download_url.endswith('.pdf') %}
    <a href='{{ asset.browser_download_url }}'>{{ asset.browser_download_url }}</a>
  {% endif %}
{% endfor %}
