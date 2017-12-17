RSpec.describe Nzholidays do
  it "has a version number" do
    expect(Nzholidays::VERSION).not_to be nil
  end

  it "responds to nz_public_holiday?" do
    expect(Nzholidays).to respond_to(:nz_public_holiday?)
  end

  it "responds to nz_anniversary?" do
    expect(Nzholidays).to respond_to(:nz_anniversary?)
  end

  it "returns true on the 25th December" do
    time = Nzholidays.nz_time(2017, 12, 25)
    expect(Nzholidays.nz_public_holiday?(time)).to be true
  end
end
