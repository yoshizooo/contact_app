# アプリケーション名
CONTACT APP

# アプリケーション概要
保育園と保護者がアプリを通じて1対1でチャットを簡単に行うことができる

# URL
https://contactapp-vmch.onrender.com

# テスト用アカウント
【user】
Email:user@user1.co.jp<br>
PW:a123456<br>

【admin】
Email:asmin2@test.co.jp<br>
PW:a123456<br>

# 利用方法
## 連絡をする
### 【user】<br>
①新期登録<br>
ヘッダー上部にある新期登録ボタンより新規登録を行なってください。<br>
     
②ログイン<br>
ログインの場合はヘッダー上部にあるログインボタンより必要な情報を入力しログインを行なってください。<br>

③チャットルームに遷移してメッセージを送信する<br>
adminによって作成されたチャットルームに入室し、メッセージ欄よりメッセージ及び任意の写真１枚を送ることができます。<br>

### 【admin】<br>
①新期登録<br>
ヘッダー上部にある新期登録ボタンをクリックし、新期登録画面へ遷移後、<br>
urlを以下のurlに変更しadmin専用新期登録画面に遷移し登録を行なってください。<br>
``` https://contactapp-vmch.onrender.com/admins/sign_up ```<br>

②ログイン<br>
ヘッダー上部にあるログインボタンをクリックし、ログイン画面へ遷移後、<br>
urlを以下のurlに変更しadmin専用ログイン画面に遷移しログインを行なってください。<br>
``` https://contactapp-vmch.onrender.com/admins/sign_in ```<br>

③チャットルームの作成(adminのみ作成可能)<br>
ヘッダー左上部にあるボタンをクリックし、ルームの作成をクリックをしてチャットルームを作成してください。<br>

④チャットルームに遷移してメッセージを送信する<br>
作成されたチャットルームに入室し、メッセージ欄よりメッセージ及び任意の写真１枚を送ることができます。<br>
     
# アプリケーションを開発した背景<
保育園や幼稚園では手書きの連絡帳を使用して、保護者と連絡をしています。朝　の忙しい時間に保護者の方は連絡帳に記入している時間はありません。<br>
また、保育園若くは幼稚園の先生方も多忙中、いちいち連絡帳に記入する時間は面倒　です。<br>
そこでweb上で保護者と保育園若くは幼稚園が連絡をすることができるアプリがあれば便利だと思い開発しました。<br>

# 洗い出した要件定義
https://docs.google.com/spreadsheets/d/1zed4Vx7X_RuRULC10goob0AvJehEy7s2HdnJL34B1I8/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明※
### 【user】<br>
①新期登録<br>
   [![Image from Gyazo](https://i.gyazo.com/bbc2958a26cd79789033e00ede7fd107.gif)](https://gyazo.com/bbc2958a26cd79789033e00ede7fd107)
   [![Image from Gyazo](https://i.gyazo.com/dd859d31c420e822ec072282867fc1fa.gif)](https://gyazo.com/dd859d31c420e822ec072282867fc1fa)
   ②ログイン<br>
   [![Image from Gyazo](https://i.gyazo.com/3fb3f9137adc97b752632759c7667a2d.gif)](https://gyazo.com/3fb3f9137adc97b752632759c7667a2d)
   [![Image from Gyazo](https://i.gyazo.com/b6c3eb9861a0e15de071d0c894ec9250.gif)](https://gyazo.com/b6c3eb9861a0e15de071d0c894ec9250)
   ③メッセージの送信<br>
   [![Image from Gyazo](https://i.gyazo.com/e5adca2b99d38f98e7ded347b94f7836.gif)](https://gyazo.com/e5adca2b99d38f98e7ded347b94f7836)
   [![Image from Gyazo](https://i.gyazo.com/1c37fcbb87d1c47e079c741ff04f457e.gif)](https://gyazo.com/1c37fcbb87d1c47e079c741ff04f457e)

### 【admin】<br>
①新期登録<br>
   [![Image from Gyazo](https://i.gyazo.com/7744c09f577a9b4bcfd6c653fabce6dd.gif)](https://gyazo.com/7744c09f577a9b4bcfd6c653fabce6dd)
   [![Image from Gyazo](https://i.gyazo.com/a162113cb0b85d34d39c2f69167da205.gif)](https://gyazo.com/a162113cb0b85d34d39c2f69167da205)
   ②ログイン<br>
   [![Image from Gyazo](https://i.gyazo.com/f45a00efbc29ac26bdc7bde3f7bfa954.gif)](https://gyazo.com/f45a00efbc29ac26bdc7bde3f7bfa954)
   [![Image from Gyazo](https://i.gyazo.com/3a40f3dc5cb8c90a59058ea0d3cfc545.gif)](https://gyazo.com/3a40f3dc5cb8c90a59058ea0d3cfc545)
   ③チャットルームの作成<br>
   [![Image from Gyazo](https://i.gyazo.com/59cfc97016ef0caf4ce95fab10822b9d.gif)](https://gyazo.com/59cfc97016ef0caf4ce95fab10822b9d)
   ④メッセージの送信<br>
   [![Image from Gyazo](https://i.gyazo.com/86a097d6493cf81451d39829be0b7ca3.gif)](https://gyazo.com/86a097d6493cf81451d39829be0b7ca3)
   [![Image from Gyazo](https://i.gyazo.com/60fcbaf4d681883c95f5261ad0ea46fa.gif)](https://gyazo.com/60fcbaf4d681883c95f5261ad0ea46fa)
   [![Image from Gyazo](https://i.gyazo.com/14b86b76cd1ba4dadb3b60eb61247d0d.gif)](https://gyazo.com/14b86b76cd1ba4dadb3b60eb61247d0d)
   ⑤チャットルームの削除(adminのみ可能)<br>
   [![Image from Gyazo](https://i.gyazo.com/6981253034219f2862aa3d0ac30724ca.gif)](https://gyazo.com/6981253034219f2862aa3d0ac30724ca)
　　　　　　[![Image from Gyazo](https://i.gyazo.com/13bf524503632eff594ee9edc26b2a68.png)](https://gyazo.com/13bf524503632eff594ee9edc26b2a68)
      
# 実装予定の機能
【実装予定】<br>
- 体調報告フォーマット実装中（体調報告フォーマットは入力後、所属チャットルームに送信されます）。
- 保育園若くは幼稚園のイベントを投稿及び閲覧することができる機能
- 登園を確認することができる機能

# データベース設計
![contact_app](https://github.com/yoshizooo/contact_app/assets/122874207/17a8bf24-dc39-40ec-acd7-5ff6fca649c1)

# 画面遷移図
![contact_app(user)](https://github.com/yoshizooo/contact_app/assets/122874207/1d97ad9b-d7c9-4b5e-83aa-4b8eb15bd359)
![contact_app(admin)](https://github.com/yoshizooo/contact_app/assets/122874207/a63db88a-a678-4bee-9311-dcf33484098d)

# 開発環境
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理
- mysql

# ローカルでの動作方法
``` % git clone https://github.com/yoshizooo/contact_app.git ```<br>
``` % cd contact_app ```<br>
``` % bundle install ```<br>
``` % yarn install ```<br>

# 工夫したポイント
アウトプットを兼ねて初めて一人で作成したアプリです。<br>
私の妻は保育士をしており、連絡帳を手書きで書くのは面倒という声をアプリで解決できないかとと思い作成しました。<br>
また、保育士の日々の業務の簡素化、保護者と保育士間で円滑にコミュニケーションが取れないかと考え、業務の1つである連絡帳アプリを制作しました。<br>

保護者と先生が1対1でチャット形式で連絡することができ、任意で１枚nの写真を送信することが出来ます。<br>
写真投稿によって保護者は登園中のお子さんの様子や、先生は家庭での様子を知ることが出来ます。<br>

今後は、追加実装を行なっていき使いやすいアプリを作成していきます<br>



 
   
   




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
