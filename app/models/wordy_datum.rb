class WordyDatum < ActiveRecord::Base
  validates_presence_of :word
  validates_presence_of :def1
end
