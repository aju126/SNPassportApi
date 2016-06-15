class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :mobile
      t.text :address
      t.string :email
      t.references :groups
      t.references :status
      t.timestamps null: false
    end
  end
end
