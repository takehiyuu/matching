class Recruitment < ApplicationRecord
     belongs_to :company
     has_many :huntings, dependent: :destroy
     has_many_attached :images

     validates :prefecture_id, numericality: { other_than: 1 } 
     extend ActiveHash::Associations::ActiveRecordExtensions
     belongs_to :prefecture
end
