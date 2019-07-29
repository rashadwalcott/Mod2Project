class CreateCompatibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :compatibilities do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :horoscope, foreign_key: true

      t.timestamps
    end
  end
end
