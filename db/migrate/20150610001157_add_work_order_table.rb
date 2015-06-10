class AddWorkOrderTable < ActiveRecord::Migration
  def change
    create_table(:work_order) do |t|
      t.belongs_to :train, index: true
      t.belongs_to :worker, index: true
      t.belongs_to :maintenance, index: true
      t.column(:start_time, :datetime)
      t.column(:end_time, :datetime)
    end
  end
end
