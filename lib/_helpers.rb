module Helpers
  require 'nanoc/helpers/html_escape'
  include Nanoc::Helpers::HTMLEscape

  def slugify(text)
		text.downcase.gsub(/['"]+/, "").gsub(/[^a-zA-Z0-9]+/,"-").gsub("/--/", "-")
	end
end

include Helpers