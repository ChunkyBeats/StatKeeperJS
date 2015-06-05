class AddMoreJoinTables < ActiveRecord::Migration
  def change
    create_table(:maintenances_trains) do |t|
      t.belongs_to :maintenance, index: true
      t.belongs_to :train, index: true
    end
  end
end
