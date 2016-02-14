class Curry < ActiveRecord::Base
   belongs_to :chef
   validates :name, presence: true, length: {minimum:5, maximum:100 }
   validates :summary, presence: true, length: {minimum:5, maximum:150 }
   validates :description, presence: true, length: {minimum:5, maximum:500 }
end