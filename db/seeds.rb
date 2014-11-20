# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

party_names = ["ABANDON", "ABANDONED", "ABANDONING", "ABANDONMENT", "ABANDONMENTS","ABANDONS", "ABDICATED", "ABDICATES",
               "ABDICATING","ABDICATION","ABDICATIONS","ABERRANT","ABERRATION","ABERRATIONAL","ABERRATIONS","ABETTING",
               "ABNORMAL","ABNORMALITIES","ABNORMALITY","ABNORMALLY","ABOLISH","ABOLISHED","ABOLISHES","ABOLISHING",
               "ABROGATE","ABROGATED","ABROGATES","ABROGATING","ABROGATION","ABROGATIONS","ABRUPT"]

(0..party_names.length).each do |n|
  Party.create(:name => party_names[n])
end
