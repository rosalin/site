class Site::Newsletter < ActiveRecord::Base
  attr_accessible :email, :nome

  validates :nome, :email, :presence => true

  validates_format_of :email,
  :with=> /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
end
