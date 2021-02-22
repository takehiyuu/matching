class Profile < ApplicationRecord
     extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to :user
     belongs_to :gender
     belongs_to :prefecture
     
     validates :prefecture_id, numericality: { other_than: 1 } 
     validates :gender_id, numericality: { other_than: 1 } 
end
