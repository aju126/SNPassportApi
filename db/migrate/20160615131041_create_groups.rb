class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|

      t.references :parent
      t.string :name
      t.integer :mobile
      t.text :address
      t.string :email
      t.references :groups
      t.references :status
      t.references :users

      t.timestamps null: false
    end
  end
end
