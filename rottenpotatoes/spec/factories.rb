FactoryGirl.define do
    factory :movie do
      title         "Test Movie"
      rating        "PG"
      description   "Test description"
      release_date  "2021-10-15"
      director      "Test Director"
      id            1
    end
end