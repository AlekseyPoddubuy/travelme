class Comment < MailForm::Base
	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :mail, :validate => true
	attribute :text, :validate => true

	def headers 
		{
			:subject => "Франшиза Travel-me",
			:to => "franchise@travel-me.agency",
			:from => %("#{name}" <it@euroukrgroup.com>)
		}
	end
end