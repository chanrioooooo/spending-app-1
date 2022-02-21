class CreateSpendings < ActiveRecord::Migration[6.0]
  def change
    create_table :spendings do |t|
      t.string     :place,  null: false
      t.text       :detail
      t.integer    :money,  null: false
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
