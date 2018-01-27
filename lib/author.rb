class Author
  attr_reader :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end

end
