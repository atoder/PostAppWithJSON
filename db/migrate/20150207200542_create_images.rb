class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :attachment
      t.references :post, index: true
      t.timestamps null: false
    end
  end
end
