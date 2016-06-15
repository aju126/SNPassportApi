class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :mobile
      t.text   :address
      t.string :email
      t.references :roles

      t.timestamps null: false
    end
  end
end
