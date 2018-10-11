Given(/^the following movies exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |hash|
    Movie.create hash
  end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |movie_name, director|
  movie = Movie.find_by(title: movie_name)
  visit movie_path(movie)
  expect(page.body).to match(/Director:\s#{director}/)
end

When(/^I check the rating:([^"]*)$/) do |arg1|
  check("ratings_#{arg1}")
  # find(:css, :id => "ratings_#{arg1}").set(true)
end

When(/^I uncheck the rating:([^"]*)$/) do |arg1|
  uncheck("ratings_#{arg1}")
  # find(:css, :id => "ratings_#{arg1}").set(false)
end

Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  a= page.body.index("#{arg1}")
  b= page.body.index("#{arg2}")
  # print("#{arg1}",a)
  # print("#{arg2}",b)
  a.should be < b
end