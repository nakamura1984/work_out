# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

- has_many :calenders
- has_many :contents


## calenders テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| year_id    | integer    | null: false                    |
| month_id   | integer    | null: false                    |
| date_id    | integer    | null: false                    |

- belongs_to :user
- has_one :content

## contents テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| calender         | references | null: false, foreign_key: true |
| time_id          | integer    | null: false                    |
| training_id      | integer    | null: false                    |

- belongs_to :user
- belongs_to :calender