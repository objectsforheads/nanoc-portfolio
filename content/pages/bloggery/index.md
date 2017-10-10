---
title: "Bloggery"
kind: page
---

# <%= @item[:title] %>

<% sorted_articles.each do |post| %>

## [<%= post[:title] %> ](<%= post.path %>)

filed under <%= tags_for(post) %>

<% end %>