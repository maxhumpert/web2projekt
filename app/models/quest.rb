class Quest < ActiveRecord::Base
  has_many :quest_categories
  has_many :categories, through: :quest_categories
  validates :title, :description, :points, presence: true
  validates :image_url, allow_blank: true, format: {
                          with:    %r{\.(gif|jpg|png)\Z}i,
                          message: 'must be a URL for GIF, JPG or PNG image.'}
end

