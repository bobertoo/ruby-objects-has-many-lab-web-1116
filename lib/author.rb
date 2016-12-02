class Author
  attr_reader :name, :posts

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

end
