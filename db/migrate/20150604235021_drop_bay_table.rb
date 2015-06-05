class DropBayTable < ActiveRecord::Migration
  def change
    drop_table(:bays)
    drop_table(:bays_maintenances_trains_workers)
    add_column(:workers, :craft, :string)
    create_table(:maintenances_trains_workers) do |t|
      t.belongs_to :maintenance, index: true
      t.belongs_to :train, index:true
      t.belongs_to :worker, index:true
    end
  end
end
