class WordyDataController < ApplicationController
  active_scaffold :"wordy_datum" do |conf|
    conf.list.columns = [:word, :def1, :def2, :def3]
    conf.create.columns = [:word, :def1, :def2, :def3]
    conf.show.columns = [:word, :def1, :def2, :def3]
  end
end
