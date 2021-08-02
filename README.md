# テーブル設計

## usersテーブル

| Colum              | Type   | Option       |
| ------------------ | ------ | ------------ |
| email              | string | null: false  |
| encrypted_password | string | null: false  |
| name               | string | null: false  |
| profile            | text   | null: false  |
| occupation         | text   | null: false  |
| position           | text   | null: false  |


### Association

- has_many :prototypes
- has_many :comments


## prototypesテーブル

| Colum       | Type       | Option                         |
| ----------- | ---------  | ------------------------------ |
| title       | string     | null: false                    |
| catch_copy  | text       | null: false                    |
| concept     | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

belongs_to :users 
has_many :comments


## commentsテーブル

| Colum       | Type       | Option                         |
| ----------- | ---------  | ------------------------------ |
| text        | text       | null: false                    |
| user        | references | null: false, foreign_key: true |
| prototype   | references | null: false, foreign_key: true |

### Association

has_many :users
has_many :prototypes