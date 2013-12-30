class AddAgeToHome < ActiveRecord::Migration
  def change
    add_column :homes, :age, :integer
  end
end
