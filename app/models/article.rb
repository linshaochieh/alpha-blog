class Article < ActiveRecord::Base
  validates :title, presense: true, length: { minimum: 3 }
  validates :description, presense: true, length: { minimum: 10 }

end