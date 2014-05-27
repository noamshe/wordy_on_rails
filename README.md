

rails2.0 new wordydb -d mysql -j jquer

bundle2.0 install

rake db:create

gem 'active_scaffold', github: 'activescaffold/active_scaffold', branch: 'master'
bundle2.0 install

rails2.0 g active_scaffold wordy_data word:string def1:string def2:string def3:string

rake db:migrate

add the following: 
\*= require active_scaffold to app/assets/stylesheets/application.css 

//= require active_scaffold to app/assets/javascripts/application.js


Start server
rails2.0 s

adding validation (in the model)
  validates_presence_of :def1



Sample controller with change of column order in view (scaffold configuration)
class WordyDataController < ApplicationController
  active_scaffold :"wordy_datum" do |conf|
    conf.create.columns = [:word, :def1, :def2, :def3]
  end
end


