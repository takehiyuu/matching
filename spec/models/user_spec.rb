require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context 'うまくいく場合' do
      it '全ての項目の入力が存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context 'うまくいかない場合' do
      it 'nameが空では登録できない' do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Name can't be blank"
      end
      it 'emailが空では登録できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'メールアドレスには@を含まなければならない' do
        @user.email = 'takemail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it 'passwordが空では登録できない' do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordが8文字以下では登録できない' do
        @user.password = 't123456'
        @user.password_confirmation = 't123456'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password には半角英数8文字で設定してください")
      end
      it 'passwordが8文字以上では登録できない' do
        @user.password = 't12345678'
        @user.password_confirmation = 't12345678'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password には半角英数8文字で設定してください")
      end
      it 'passwordが英字と数字の両方を含めていないと登録できない' do
        @user.password = '11111111'
        @user.password_confirmation = '11111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password には半角英数8文字で設定してください')
      end
    end
  end
end
