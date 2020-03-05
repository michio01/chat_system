class CreateMymodels < ActiveRecord::Migration[6.0]
  def change
    create_table :mymodels do |t|
      t.string :user_id
      t.string :name
      t.string :password_digest
      t.integer :authority

      t.timestamps
    end
  end
end
