class CreateRoleCreaters < ActiveRecord::Migration[6.0]
  def change
    create_table :role_creaters do |t|
      t.string :race
      t.string :role

      t.timestamps
    end
  end
end
