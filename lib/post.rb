require 'pry'

class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    binding.pry
    @author.name
  end

end
