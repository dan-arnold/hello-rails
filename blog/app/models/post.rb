class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  no_blank_msg = "can't be blank!"
  validates :name,  :presence => {:message => no_blank_msg}
  validates :title, :presence => {:message => no_blank_msg},
                    :length => { :minimum => 5, :message => "must be at least 5 characters!" }
end
