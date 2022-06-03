Jekyll::Hooks.register :posts, :post_write do |post|
  all_existing_categories = Dir.entries("_categories")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }

  categories = post['categories'].reject { |t| t.empty? }
  categories.each do |categories|
    generate_catego_file(categories) if !all_existing_categories.include?(categories)
  end
end

def generate_catego_file(categories)
  File.open("_categories/#{categories}.md".downcase, "wb") do |file|
    file << "---\nlayout: categories\ncategories: #{categories}\n---\n"

  end
end
