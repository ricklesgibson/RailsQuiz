class CreateQuizbees < ActiveRecord::Migration
  def change
    create_table :quizbees do |t|
      t.string :name
      t.string :email
      t.date :DOB

      t.timestamps
    end
  end
end
