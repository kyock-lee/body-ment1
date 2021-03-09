# README

## usersテーブル

| Column              | Type       | Options                   |
| ------------------- | ---------- | ------------------------- |
| name                | string     | null: false               |
| email               | string     | null: false, unique: true |
| encrypted_password  | string     | null: false               |
| family_name         | string     | null: false               |
| last_name           | string     | null: false               |
| family_name_kana    | string     | null: false               |
| last_name_kana      | string     | null: false               |
| birthday            | date       | null: false               |

### Association
- has_many :weights
- has_many :meals
- has_many :trainings


## weightsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| weight  | integer    | null: false                    |
| date    | date       | null: false                    |


### Association
- belongs_to :user


## mealsテーブル 

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| date          | date       | null: false                    |
| description   | text       |                                |

### Association
- belongs_to :user

## usersテーブル

| Column       | Type       | Options                        |
| ------       | ---------- | ------------------------------ |
| menu1_id     | integer    | null: false, foreign_key: true |
| menu2_id     | integer    |                                |
| menu3_id     | integer    |                                |
| menu4_id     | integer    |                                |
| menu5_id     | integer    |                                |
| description  | text       |                                |


### Association
- belongs_to :user
