class CreateEmployee < ActiveRecord::Migration[5.0]
  def change
    create_table(:employee) do |t|
      t.column(:first_name, :string)
      t.column(:last_name, :string)
      t.column(:division_id, :integer)

      t.timestamps
    end
  end
end
