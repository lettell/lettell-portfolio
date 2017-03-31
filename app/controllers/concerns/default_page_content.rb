module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Pauliaus J. Portfolio | dar pamastyk :)"
    @seo_keywords = "raktazodziai"
  end
end
