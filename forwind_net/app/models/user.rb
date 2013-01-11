class User < ActiveRecord::Base
  acts_as_authentic
  def admin?
    true
  end
  def name
    username
  end
end
