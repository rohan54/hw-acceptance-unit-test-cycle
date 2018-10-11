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