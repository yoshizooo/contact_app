require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'class_name_idとguodian_name、children_name、passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'emailにて@を含んでいれば登録できる' do
        @user.email = Faker::Internet.free_email
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上かつ英数字混合であれば登録できる' do
        @user.password = Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1)
        @user.password_confirmation = @user.password
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'children_nameが空では登録できない' do
        @user.children_name = ''
        @user.valid?
        binding.pry
      end
      it 'guodian_nameが空では登録できない' do
      end
      it 'emailが空では登録できない' do
      end
      it 'passwordが空では登録できない' do
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
      end
      it 'emailは@を含まないと登録できない' do
      end
      it 'passwordが5文字以下では登録できない' do
      end
      it 'passwordが129文字以上では登録できない' do
      end
      it 'passwordは英語のみでは登録できない' do
      end
      it 'passwordは数字のみでは登録できない' do
      end
      it 'クラス名にて---を選択すると登録できない' do
      end
    end
  end
end
