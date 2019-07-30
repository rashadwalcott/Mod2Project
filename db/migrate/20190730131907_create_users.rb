class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :user_name
      t.belongs_to :horoscope, foreign_key: true

      t.timestamps
    end
  end
end
