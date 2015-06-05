require('spec_helper')

describe Train do
  it('ensures the train has an atis_ref_id') do
    train = Train.create(atis_ref_id: "13332")
    expect(train.atis_ref_id).to(eq("13332"))
  end
  it('properly assigns a worker to a train') do
    train = Train.create(atis_ref_id: "2")
    maint = Maintenance.create(description: "Oil Change")
    train.maintenances.push(maint)
    expect(train.workers).to(eq(["Oil Change"]))
  end
end
