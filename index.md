---
title: index
---
Hello World!
{% for release in site.github.releases %}
{% if release.id == 1 %}
{% for asset in release.assets %}
  {{ asset.browser_download_url }}
  {% if asset.browser_download_url.endswith('.pdf') %}
    <meta http-equiv="refresh" content="0; URL={{ asset.browser_download_url }} />
  {% endif %}
{% endfor %}
{% endif %}
{% endfor %}
