---
title: index
---
Hello World!
{% for release in site.github.releases %}
{% for asset in release.assets %}
  {{ asset.browser_download_url }}
  {% if asset.browser_download_url.endswith('.pdf') %}
    <meta http-equiv="refresh" content="0; URL={{ asset.browser_download_url }} />
  {% endif %}
{% endfor %}
{% endfor %}
