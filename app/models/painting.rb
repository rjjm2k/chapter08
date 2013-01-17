class Painting < ActiveRecord::Base
  attr_accessible :description, :gallery_id, :image, :name
  belongs_to :gallery
end
