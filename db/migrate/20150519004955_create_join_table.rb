class CreateJoinTable < ActiveRecord::Migration
  def change
    drop_table(:maintenance)
    create_table(:maintenances) do |t|
      t.column(:description, :string)
    end
    create_table(:bays_maintenances_trains_workers) do |t|
      t.belongs_to :bay, index: true
      t.belongs_to :maintenance, index: true
      t.belongs_to :train, index:true
      t.belongs_to :worker, index:true
    end
  end
end
