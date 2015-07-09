---
---
{% for asset in site.github.releases.assets %}
  {% if asset.browser_download_url.endswith('.pdf') %}
  <a href='{{ asset.browser_download_url }}'>{{ asset.browser_download_url }}</a>
  {% endif %}
{% endfor %}
