<h3>
  title=[${article.title}]
</h3>

<pre>

description      =[${article.fields["description"]}]
article.url      =${article.url}
binary.value.href=${article.fields.binary.value.href}
</pre>

<h4>Original</h4>
<img
  src="${article.fields.binary.value.href}"
  alt="${article.fields.description}"
  title="${article.title}"
  />

<h4>Versions</h4>
<img
  src="${article.fields.alternates.value["wide-big"].href}"
  alt="${article.fields.description}"
  title="${article.title}"
/>
<p>
  <a href="${article.url}">${article.url}</a>
</p>
