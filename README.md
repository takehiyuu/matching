# アプリ名
### **Work matching**

# 概要
1日限定の短期アルバイトを募集する企業と応募するユーザーがマッチングできるアプリ

<!-- # URL(完成後記述) -->

<!-- ログイン情報（テスト用） (完成後記述)
- Eメール:
- password: -->

# 制作背景（意図）
- 以前空いた時間に気軽に働ける求人サイトがあればいいなと思い、募集する企業と応募するユーザーが働き方や雇用の形態をもっと自由に作っていけるアプリを作りたいと思いました。

### 現状 <br>
- 労働者はシフトなどがありに労働する日が決まっている
- コロナ対策などの影響で不意に職場が休みになる場合ある
- コロナなどで今後の企業の稼働率が不透明である

### 課題、問題点 <br>
- 予定していなかった休日に働きたい場合はシフト制だと事前に決まったローテーションがあるので働きたくても働けない
- コロナ対策などの影響で不意に職場が休みになる場合があり働きたくても働けない人もいる
- 人材を契約的に雇用する上で稼働率が下がると雇用している人材が余ってしまうリスクがある

### 解決策
- 企業は雇用する人材を抱えるのではなく、その日その都度、あるいは稼働率の高い日低い日で人材を新たに雇うことができるようにする
- 労働者は働きたい日、働きたい環境に合わせてその条件に合う企業を見つけることができる

# 機能一覧
- ユーザー登録（gem devise)
- ログイン、ログアウト機能(gem devise)
- プロフィール作成機能（active hash）
- プロフィール詳細表示機能（active hash）
- プロフィール編集・削除機能（active hash）
- 企業情報作成機能（active hash）
- 企業情報詳細表示機能（active hash）
- 企業情報編集・削除機能（active hash）
- 求人情報作成機能（active hash）
- 求人情報一覧・詳細表示機能（active hash）
- 求人情報編集・削除機能（active hash）
- マッチング機能
- マッチング状態表示機能
- 求人採用機能

# 使用技術
## フロントエンド
- HTML
- CSS(SCSS)
- Bootstrap4
- Javascript

## バックエンド
- Ruby2.6.5
- Ruby on Rails 6.0.3.4

## データベース
- MySQL2

## テスト
- RSpec(SystemSpec)
- FactoryBot
- Faker

<!-- ## 本番環境(完成後) -->

## ソース管理
- GitHub, GitHubDesktop
<br>

# DB設計

## usersテーブル

| Column             | Type      | Options     
| ----------         | ------    | ----------- 
| name               | string    | null: false
| email              | string    | null: false, unique: true
| encrypted_password | string    | null: false

### Association
- has_one  :company
- has_one  :profile

## profilesテーブル
| Column           | Type      | Options     
| ----------       | ------    | ----------- 
| last_name        | string    | null: false
| first_name       | string    | null: false
| last_name_kana   | string    | null: false
| first_name_kana  | string    | null: false
| phone_number     | string    | null: false
| city             | string    | null: false
| pr               | text      | 
| prefecture_id    | integer   | null: false
| gender_id        | integer   | null: false
| birth_id         | integer   | null: false
| user             | reference | foreign_key: true

### Association
- belongs_to :user

## companiesテーブル
| Column        | Type      | Options     
| -------       | ------    | ----------- 
| name          | string    | null: false
| occupaion     | string    | null: false
| phone_number  | string    | null: false
| city          | string    | null: false
| address       | string    | null: false
| building      | string    | 
| prefecture_id | integer   | null: false
| user          | reference | foreign_key: true

### Association
- belongs_to :user
- has_many :recruitment


## recruitmentsテーブル
| Column        | Type      | Options     
| -------       | ------    | ----------- 
| category      | string    | null: false
| price         | string    | null: false
| work          | string    | null: false
| work_day      | string    | null: false
| work_time     | string    | null: false
| city          | string    | null: false
| address       | string    | null: false
| prefecture_id | integer   | null: false
| building      | string    |
| pr            | text      | 
| company       | reference | foreign_key: true

### Association
- belongs_to :company


## huntingsテーブル
| Column        | Type      | Options     
| -------       | ------    | ----------- 
| profile       | reference | foreign_key: true
| company       | reference | foreign_key: true

### Association
- belongs_to :profile
- belongs_to :company


# ER図
![alt](ER.png)
