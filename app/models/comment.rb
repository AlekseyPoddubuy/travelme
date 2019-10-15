class Comment < MailForm::Base
	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :mail, :validate => true
	attribute :text, :validate => true

	def headers 
		{
			:subject => "Форма подбора тура с EURO TOUR",
			:to => "info@eurotour-agency.com",
			:from => %("#{name}" <it@euroukrgroup.com>)
		}
	end
end