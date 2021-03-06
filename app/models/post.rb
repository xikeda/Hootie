class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true 
  validates :content, presence: true, length: {maximum:140} # Capped at 140 Characters
  default_scope -> { order(created_at: :desc) } # Newest posts first
end
