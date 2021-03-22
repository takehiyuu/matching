class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  has_one :company, dependent: :destroy

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8}+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には半角英数8文字で設定してください'

  validates :name, presence: true, length: { maximum: 10 }
end
