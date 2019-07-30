class CreateHoroscopes < ActiveRecord::Migration[5.1]
  def change
    create_table :horoscopes do |t|
      t.string :name

      t.timestamps
    end
  end
end
