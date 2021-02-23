class Recruitment < ApplicationRecord
     belongs_to :company

     validates :prefecture_id, numericality: { other_than: 1 } 
     extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to :prefecture
end
