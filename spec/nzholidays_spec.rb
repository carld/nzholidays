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

  it "nz_public_holiday? returns true on 25th December 2017" do
    time = Nzholidays.nz_time(2017, 12, 25)
    expect(Nzholidays.nz_public_holiday?(time)).to be true
  end

  it "nz_public_holiday? returns false on 13th November 2009" do
    time = Time.new(2009, 11, 13)
    expect(Nzholidays.nz_public_holiday?(time)).to be false
  end

  it "nz_anniversary? returns true on Canterbury Anniversary 13th November 2009" do
    time = Time.new(2009, 11, 13)
    expect(Nzholidays.nz_anniversary?(time)).to be true
  end

  it "nz_anniversary? returns false on 25th December 2017" do
    time = Nzholidays.nz_time(2017, 12, 25)
    expect(Nzholidays.nz_anniversary?(time)).to be false
  end
end
