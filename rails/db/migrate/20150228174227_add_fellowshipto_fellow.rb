class AddFellowshiptoFellow < ActiveRecord::Migration
  def change
  	add_column :fellows, :fellowship, :string
  	add_column :fellows, :email, :string
  	add_column :fellows, :github, :string
  end
end
