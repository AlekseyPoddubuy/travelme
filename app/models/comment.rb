class Comment < MailForm::Base
	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :city, :validate => true
	attribute :mail
	attribute :text, :validate => true

	def headers 
		{
			:subject => "Заявка с сайта франшиза Travel-me.agency",
			:to => "franchise@travel-me.agency",
			:from => %("#{name}" <it@euroukrgroup.com>)
		}
	end
end