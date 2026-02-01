class Myroute < ApplicationRecord
belongs_to :myprogram
after_create :hello
def hello
programtitle="#{myprogram.title.parameterize.downcase}#{myprogram.user_id}"
mytitle=title.parameterize.underscore
othertitle=title.parameterize.underscore.camelcase
File.write("../#{programtitle}/addroute.sh", myprogram.framework.myroutecode.gsub("DOWNCASE_NOM_DE", mytitle).gsub("DOWNCASE_MA_ROUTE", mytitle).gsub("NOM_DE", othertitle).gsub("_MA_ROUTE", othertitle).gsub("DESCRIPTION", description).gsub("MY_URL", myurl))
x=`(cd ../#{programtitle} && sh ./addroute.sh)`
end

end
