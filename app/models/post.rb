class Post < ActiveRecord::Base
  validates_presence_of :header
  belongs_to :post
  has_many :posts, :order => "created_at DESC, header"
  default_scope "created_at DESC, header"
  belongs_to :host
  

  def root_post(item = self)
    if !item.post
      item
    else
      root_post(item.post)
    end
  end

end
