class Selection < MailForm::Base
	attribute :name, :validate => true
	attribute :phone, :validate => true
	attribute :city, :validate => true
	attribute :tour, :validate => true
	attribute :days, :validate => true
	attribute :budget, :validate => true
	attribute :mail
	attribute :text

	def headers 
		{
			:subject => "Подбор тура с сайта Travel-me.agency",
			:to => "info@travel-me.agency",
			:from => %("#{name}" <it@euroukrgroup.com>)
		}
	end
end