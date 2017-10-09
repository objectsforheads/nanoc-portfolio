desc "Build the frontmatter for a new post"
task :draft, :title do |t, args|
  title = args.title
  title_slug = args.title.downcase.gsub(/['"]+/, "").gsub(/[^a-zA-Z0-9]+/,"-").gsub("/--/", "-")
  mkdir_p "./content/posts/#{title_slug}"
  filename = "./content/posts/#{title_slug}/index.md"

  if File.exist?(filename)
    abort('Post already exists!')
  end

  open(filename, 'w') do |post|
    post.puts '---'
    post.puts "title: \"#{title}\""
    post.puts "created_at: #{Time.now}"
    post.puts "updated_at: #{Time.now}"
    post.puts "kind: article"
    post.puts "tags: ['uncategorized']"
    post.puts "---\n\n"
  end
  puts "Created #{title} in /posts/#{title_slug}"
end