Given(/^Se crea un libro$/) do
end

When(/^Se ingresa a la pagina$/) do
  visit "http://0.0.0.0:4567"
end

Then(/^Aparece el libro$/) do
  expect(page).to have_content("Papelucho")
end
