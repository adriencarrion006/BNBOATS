class SampleNameChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:boats, :picture, :text)
end
end
