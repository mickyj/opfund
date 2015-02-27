class CreateFellows < ActiveRecord::Migration
  def change
    create_table :fellows do |t|
      t.string :image
      t.string :name
      t.string :nonprofit
      t.string :benefactor
      t.string :employer
      t.string :metro
      t.string :cohort

      t.timestamps
    end
  end
end
