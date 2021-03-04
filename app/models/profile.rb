class Profile < ApplicationRecord
     belongs_to :user
     has_one :hunting
     has_one_attached :image
     
     validates :prefecture_id, numericality: { other_than: 1 } 
     validates :gender_id, numericality: { other_than: 1 } 
     validates :birth_id, numericality: { other_than: 1 } 

     extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to :prefecture
     belongs_to :gender
     belongs_to :birth
end
