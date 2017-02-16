json.array!@companies.each do |company|
  json.id company.id
  json.name company.name
  json.profession company.profession
  json.logo company.logo
end