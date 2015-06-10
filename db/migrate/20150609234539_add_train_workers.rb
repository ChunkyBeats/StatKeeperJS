class AddTrainWorkers < ActiveRecord::Migration
  def change
    create_table(:trains_workers) do |t|
      t.belongs_to :train, index: true
      t.belongs_to :worker, index:true
    end
  end
end
