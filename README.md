# テーブル設計

## admin_usersテーブル
|Column            |Type    |Options                  |  
|------------------|--------|-------------------------|
|admin_name        |string  |null: false              |
|email             |string  |null: false ,unique: true|
|encrypted_password|string  |null: false              |
|admin_number      |integer |null: false              |
### Association
- has_many :rooms
- has_many :messages
- has_many :users

## usersテーブル
|Column            |Type    |Options                  |  
|------------------|--------|-------------------------|
|email             |string  |null: false ,unique: true|            
|children_name     |string  |null: false              |
|guodian_name      |string  |null: false              |
|class_name_id     |integer |null: false              |
### Association
- has_many :contacts
- has_many :message
- has_many :rooms
- belongs_to :admin_user

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
- has_many :contacts
- has_many :messages
- belongs_to :user
- belongs_to :admin


## messages
|Column     |Type       |Options                        |
|-----------|---------- |------------------------------ |
|content    |string     |presence: true                 |
|room       |references |null: false, foreign_key: true |
|admin_user |references |null: false, foreign_key: true |
|user       |references |null: false, foreign_key: true |
### Association
- belongs_to :room
- belongs_to :admin_user
- belongs_to :user
