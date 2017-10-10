module Tags
  # loop through a collection with [:tags] defined, adding unique tags to the array
  def all_tags(collection)
    collection.map{|i| i[:tags]}.flatten.uniq.compact.sort
  end

  # pass an @item with [:tags] associated with it
  def tags_for(item)
    links_for(item[:tags])
  end

  def items_with_tag(items, tag)
    items.select{|i| i[:tags] and i[:tags].include?(tag)}
  end

  private
    # return slugify'ed tag in the base namespace
    def link_for(name)
      %[<a href="/bloggery/tagged/#{h slugify(name)}/">#{h name}</a>]
    end

    # for each tag, return a linked version and join them with a comma
    def links_for(values)
      if values.nil? || values.empty?
        "(none)"
      else
        values.map {|v| link_for(v) }.join(", ")
      end
    end
end

include Tags