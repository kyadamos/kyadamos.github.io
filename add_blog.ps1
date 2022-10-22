<# powershell script:
receives the title of the blog post
creates a new blog post file with headers
appends blog post title and url to navigation#>

$today = get-date -Format "yyyy-dd-MM"
$site_path = '..\kyadamos.github.io'
set-location $site_path

$blog_title = read-host 'enter blog title'
$blog_path = $site_path + '\_posts\' + $today + '-' + $blog_title + '.md'

write-host creating new post: $blog_path
new-item -Path "$site_path\_posts\$today-$blog_title.md"
set-content -Path $blog_path -value "---
layout:	post
author:	kyle
date:	$(get-date -Format "yyyy-dd-MM HH:mm:ss K")
title:	$blog_title
categories:	Blog
permalink:	/:categories/$blog_title/
---
"
add-content $site_path\_data\posts.yml "- link: /blog/$blog_title/
  name: $blog_title"