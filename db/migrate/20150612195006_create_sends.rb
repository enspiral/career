class CreateSends < ActiveRecord::Migration
  def change
    create_table :sends do |t|
      t.string :full_name
      t.string :email
      t.string :message

      t.timestamps null: false
    end
  end
end
