class CreateAnswer < ActiveRecord::Migration[5.1]
  def change
    create_table(:answers) do |t|
      t.column(:answer, :string)
      t.column(:question_id, :integer)
      t.column(:taker_id, :integer)

      t.timestamps
    end
  end
end
