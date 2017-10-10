module Helpers
  require 'nanoc/helpers/html_escape'
  include Nanoc::Helpers::HTMLEscape

  def slugify(text)
		text.downcase.gsub(/['"]+/, "").gsub(/[^a-zA-Z0-9]+/,"-").gsub("/--/", "-")
	end

  def get_data(name)
    @items.select { |item| item[:kind] == 'data' && item[:name] == name }[0][:data]
  end
end

include Helpers