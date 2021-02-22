class Company < ApplicationRecord
     belongs_to :user
     has_one_attached :image

     validates :prefecture_id, numericality: { other_than: 1 } 
     extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to :prefecture
end
