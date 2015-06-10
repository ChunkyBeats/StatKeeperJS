require('spec_helper')

describe Train do
  it('ensures the train has an atis_ref_id') do
    train = Train.create(atis_ref_id: "13332")
    expect(train.atis_ref_id).to(eq("13332"))
  end
  it('properly assigns a maintenance to a train') do
    train = Train.create(atis_ref_id: "2")
    maint = Maintenance.create(description: "Oil Change")
    train.maintenances.push(maint)
    expect(train.maintenances).to(eq([maint]))
  end
  it('assigns a worker to a train') do
    train = Train.create(atis_ref_id: "5")
    worker = Worker.create(first_name: "Dan", last_name: "Lynch")
    train.workers.push(worker)
    expect(train.workers).to(eq([worker]))
  end
  it ('assigns a worker and a maintenance to a train') do
    train = Train.create(atis_ref_id: "10")
    worker = Worker.create(first_name: "Cory", last_name:"Ribson")
    maint = Maintenance.create(description: "Oil Change")
    train.workers.push(worker)
    train.maintenances.push(maint)
    expect(train.workers).to(eq([worker]))
    expect(train.maintenances).to(eq([maint]))
  end
end
