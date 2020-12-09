class CreateCvs < ActiveRecord::Migration[6.0]
  def change
    create_table :cvs do |t|
      t.string :user_name
      t.string :user_email
      t.string :position
      t.text :education
      t.text :experience
      t.text :about

      t.timestamps
    end
  end
end
