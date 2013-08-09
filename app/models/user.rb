class User < ActiveRecord::Base
  attr_accessible :age, :name
  paginates_per 10
end
