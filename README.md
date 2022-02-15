# テーブル設計

## users テーブル

| Column              | Type    | Options                   |
| ------------------- | ------- | ------------------------- |
| nickname            | string  | null: false               |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false               |

### Association

- has_many :spendings

## spendings テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| place            | string     | null: false                    |
| detail           | text
| money            | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user