class CreateNewTables < ActiveRecord::Migration
  def change
    create_table(:workers) do |t|
      t.column(:first_name, :string)
      t.column(:last_name, :string)
    end
    create_table(:bays) do |t|
    end
    create_table(:trains) do |t|
      t.column(:atis_ref_id, :string) #comes from RFID?
    end
    create_table(:maintenance) do |t|
      t.column(:desription, :string)
    end
  end
end
