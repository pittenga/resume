---
title: index
---
{% for release in site.github.releases %}
{% for asset in release.assets %}
  <meta http-equiv="refresh" content="0; URL={{ asset.browser_download_url }} />
{% endfor %}
{% endfor %}
