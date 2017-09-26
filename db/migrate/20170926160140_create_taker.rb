class CreateTaker < ActiveRecord::Migration[5.1]
  def change
    create_table(:takers) do |t|
      t.column(:name, :string)
      t.column(:survery_id, :integer)

      t.timestamps
    end
  end
end
