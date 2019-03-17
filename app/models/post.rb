class Post < ApplicationRecord
  before_save :set_slug

  def to_param
    self.slug
  end

  private
  def set_slug
    self.slug = to_slug(self.name)
  end
end
