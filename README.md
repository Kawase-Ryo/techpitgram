# README

## users テーブル

| Column             | Type      | Options                       |
| ------------------ | ------    | -----------                   |
| name               | string    | null: false                   |
| email              | string    | null: false, unique: true     |
| encrypted_password | string    | null: false                   |

### Association

- has_many :comments
- has_many :posts
- has_many :likes

## comments テーブル

| Column             | Type      | Options                      |
| ------------------ | ------    | -----------                  |
| comment            | text      | null: false                  | 
| post_id            | references| null: false,foreign_key: true|
| user_id            | references| null: false,foreign_key: true|

### Association

- belongs_to :user
- belongs_to :post

## posts テーブル

| Column             | Type      | Options                      |
| ------------------ | ------    | -----------                  |
| caption            | string    | null: false                  |
| user_id            | references| null: false,foreign_key: true|

### Association

- belongs_to :user
- has_many :posts
- has_many :likes
- has_many :comments

## likes テーブル（購入）

| Column             | Type      | Options                      |
| ------------------ | ------    | -----------                  |
| post_id            | references| null: false,foreign_key: true|
| user_id            | references| null: false,foreign_key: true|

### Association

- belongs_to :user
- belongs_to :post

## photos テーブル

| Column             | Type      | Options                      |
| ------------------ | ------    | -----------                  |
| image              | string    | null: false                  |
| post_id            | references| null: false,foreign_key: true|

### Association

- belongs_to :post
