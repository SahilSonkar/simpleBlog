class CreateManagerHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :manager_histories do |t|
      t.date :date_of_joining
      t.string :yaer_of_exp
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
