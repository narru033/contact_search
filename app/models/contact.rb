class Contact < ActiveRecord::Base

	def self.search(search)
	  if search
	    key = "%#{search}%"
	    where('name LIKE ? OR number LIKE ?', key, key).order(:name)
	  else
	    all
	  end
	end

end
