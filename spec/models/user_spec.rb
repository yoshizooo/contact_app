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
        expect(@user.errors.full_messages).to include("お子さんのお名前を入力してください")
      end
      it 'guodian_nameが空では登録できない' do
        @user.guodian_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("保護者様のお名前を入力してください")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください", "パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = 'a12345'
        @user.password_confirmation = 'b12345'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'emailは@を含まないと登録できない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'a1234'
        @user.password_confirmation = 'a1234'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください", "パスワードは不正な値です")
      end
      it 'passwordが129文字以上では登録できない' do
        @user.password = Faker::Lorem.characters(number: 129, min_alpha: 1, min_numeric: 1)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは128文字以内で入力してください")
      end
      it 'passwordは英語のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it 'passwordは数字のみでは登録できない' do
        @user.password = '123456'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it 'クラス名にて---を選択すると登録できない' do
        @user.class_name_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("所属クラス選択してください")
      end
    end
  end
end
