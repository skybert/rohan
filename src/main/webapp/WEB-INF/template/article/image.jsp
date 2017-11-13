<h3>
  title=[${article.title}]
</h3>

<pre>
description=[${article.fields["description"]}]
binary.value.href=${article.fields.binary.value.href}
</pre>

<img
  src="${article.fields.binary.value.href}"
  alt="${article.fields.description}"
  title="${article.title}"
/>
<p>
  <a href="${article.url}">${article.url}</a>
</p>
