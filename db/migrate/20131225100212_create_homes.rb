class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|

      t.string :name
      t.string :avatar
      t.timestamps
    end
  end
end
