class Post < ActiveRecord::Base
  translates :title, paranoia: true
end
