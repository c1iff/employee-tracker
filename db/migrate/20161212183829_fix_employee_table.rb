class FixEmployeeTable < ActiveRecord::Migration[5.0]
  def change
    rename_table(:employee, :employees)

  end
end
