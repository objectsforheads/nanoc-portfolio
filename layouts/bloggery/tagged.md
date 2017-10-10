# <%= @item[:tagged] %>

<% items_with_tag(sorted_articles, @item[:tagged]).each do |post| %>

## [<%= post[:title] %>](<%= post.path %>)

<% end %>