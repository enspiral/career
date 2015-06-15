class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :attachment

      t.timestamps null: false
    end
  end
end
