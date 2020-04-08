# freemarket_sample_67e DB設計

## usersテーブル

|column|type|options|
|------|----|-------|
|nickname|varchar|null: false|
|e-mail|varchar|null: false|
|password|varchar|null: false|
|first_name|varchar|null: false|
|first_name_kana|varchar|null: false|
|last_name|varchar|null: false|
|last_name_kana|varchar|null: false|
|birthday|date|null: false|
|phone_number|varchar|null: false|

### Association
- has_many :address
- has_many :creditcards
- has_mamy :comments
- has_many :products


## addressテーブル
|column|type|options|
|------|----|-------|
|postcode|varchar|null: false|
|city|varchar|null: false|
|city_block|varchar|null :false|
|building|varchar|null :false|
|prefecture|varchar|null :false|
|user_id|integer|null :false,foreign_key:true|

### Association
- belongs_to :user


## creditcardsテーブル
|column|type|options|
|------|----|-------|
|card_number|varchar|null: false|
|month_data|int|null: false|
|year_data|int|null: false|
|security_code|varchar|null: false|
|user_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user


## commentsテーブル
|column|type|options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null :false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product


## productsテーブル
|column|type|options|
|------|----|-------|
|product_name|varchar|null: false|
|price|int|null: false|
|size|varchar||
|status|varchar||
|postage|varchar|null: false|
|explanation|text||
|delivery_method|text||
|delivery_origin|varchar|null: false|
|arrival_date|int|null: false|
|brand|varchar||

### Association
- belongs_to :user
- has_mamy :comments
- has_many :images
- belongs_to :category


## categoriesテーブル
|column|type|options|
|------|----|-------|
|ladies|varchar||
|mens|varchar||
|baby_kids|varchar||
|interior|varchar||
|book|varchar||
|ticket|varchar||
|other|varchar||

### Association
- has_mamy: products


## imagesテーブル
|column|type|options|
|------|----|-------|
|image|string|null: false|
|product_id|string|null:, foreign_key:true|

### Association