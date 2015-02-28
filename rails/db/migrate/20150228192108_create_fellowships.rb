class CreateFellowships < ActiveRecord::Migration
  def change
    create_table :fellowships do |t|
      t.string :title
      t.integer :fellow_id

      t.timestamps
    end
  end
end
