class Myprogram < ApplicationRecord
belongs_to :framework
has_many :myroutes
validates_uniqueness_of :title, scope: :user_id
after_create :hello
def hello

x=`(cd ../ && #{framework.mycode.gsub("MYNAME", title.parameterize.downcase+user_id.to_s)})`
end
end
