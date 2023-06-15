# アプリケーション名
CONTACT APP

# アプリケーション概要
保育園と保護者がアプリを通じて1対1でチャットを簡単に行うことができる




# テーブル設計

## adminテーブル
|Column            |Type    |Options                  |  
|------------------|--------|-------------------------|
|admin_name        |string  |null: false              |
|email             |string  |null: false ,unique: true|
|encrypted_password|string  |null: false              |
|admin_number      |integer |null: false              |
### Association
- has_many :users
- has_many :rooms
- has_many :messages
- has_many :admin_messages

## usersテーブル
|Column            |Type    |Options                  |  
|------------------|--------|-------------------------|
|email             |string  |null: false ,unique: true|            
|children_name     |string  |null: false              |
|guodian_name      |string  |null: false              |
|class_name_id     |integer |null: false              |
### Association
- belongs_to :class_name
- belongs_to :admin, optional: true
- has_many :rooms
- has_many :messages
- has_many :user_messages

#### プルダウンデータ
- class_name

## contacts
|Column            |Type       |Options                        |  
|------------------|-----------|-------------------------------|
|title             |string     |null: false                    |
|date              |date       |null: false                    |
|temperature_id    |integer    |null: false                    |
|special_content   |string     |presence: true                 |
|user              |references |null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :room

#### プルダウンデータ
- temperature_id 体温データ

## rooms
|Column     |Type       |Options                        |
|-----------|---------- |------------------------------ |
|name       |string     |null: false                    |

### Association
- belongs_to :user
- belongs_to :admin 
- has_many :messages, dependent: :destroy


## messages
|Column     |Type       |Options                        |
|-----------|---------- |------------------------------ |
|content    |string     |presence: true                 |
|room       |references |null: false, foreign_key: true |
|admin_user |references |null: false, foreign_key: true |
|user       |references |null: false, foreign_key: true |
### Association
- belongs_to :room
- has_one :user_message, dependent: :destroy
- has_one :admin_message, dependent: :destroy
- has_one_attached :image, dependent: :destroy

## admin_messages
|Column     |Type       |Options                        |
|-----------|---------- |------------------------------ |
|message    |references |null: false, foreign_key: true |
|admin      |references |null: false, foreign_key: true |

## user_messages
|Column     |Type       |Options                        |
|-----------|---------- |------------------------------ |
|message    |references |null: false, foreign_key: true |
|user       |references |null: false, foreign_key: true |
