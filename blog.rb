class Blog
  def initialize
    @posts = []
  end

  def current_count
    puts "There are currently #{@posts.length} instances of blog posts."
  end

  def new_post
    @posts << BlogPost.new
  end

  def present
    @posts.each(&:present)
  end
end

class BlogPost
  def initialize
    puts 'Please enter the title.'
    @title = gets.chomp
    puts 'Please enter content.'
    @content = gets.chomp
    puts 'Please enter publish date.'
    @publish_date = gets.chomp
    puts 'Please enter the author name.'
    @author = gets.chomp
  end

  def get_title
    @title
  end

  def get_content
    @content
  end

  def get_publish_date
    @publish_date
  end

  def get_author
    @author
  end

  def present
    puts get_title
    puts get_content
    puts get_publish_date
    puts get_author
  end
end

blog = Blog.new
puts 'Do you want to create another blog post? [Y/N]'
answer = gets.chomp.downcase

while
  if answer == 'y'
    blog.new_post
    puts blog.current_count
    puts 'Do you want to create another blog post? [Y/N]'
    answer = gets.chomp.downcase
  elsif answer == 'n'
    puts 'Do you want to publish your blog post?'
    answer_publish = gets.chomp.downcase
    if answer_publish == 'y'
      blog.present
      nil
    elsif answer_publish == 'n'
      nil
    end
  else answer != ('y' && 'n')
       puts "Wrong format. Please answer [Y/N].\nDo you want to create another blog post? [Y/N]"
       answer = gets.chomp.downcase
  end
end
