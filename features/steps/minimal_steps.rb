require 'rspec'

Transform /^table:attribute,value$/ do |table|
  table.map_headers! { |header| header.downcase.to_sym }
  table
end

Given('I have the following table') do |table|
  @table = table
end

Then('I should have a table with attribute as symbols') do
  is_symbol = @table.hashes[0].keys[0].is_a? Symbol
  expect(is_symbol).to eq(true)
end

Then('I should not have a table with attribute as symbols') do
  is_symbol = @table.hashes[0].keys[0].is_a? Symbol
  expect(is_symbol).to eq(false)
end
