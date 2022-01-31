FactoryBot.define do
  factory :movie do
    title { 'Dune' }
    description do
      "Feature adaptation of Frank Herbert's science fiction novel about the
       son of a noble family entrusted with the protection of the most valuable
       asset and most vital element in the galaxy."
    end
    duration { '2h 35m' }
    release_date { Date.new(2021, 10, 22) }
    cast { 'Timothee Chalamet, Rececca Ferguson. Zendaya' }
  end
end
