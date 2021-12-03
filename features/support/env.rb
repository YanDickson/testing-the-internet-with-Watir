require "watir"
require "./page_objects/checkbox_page.rb"

module SiteHelper
  def site
    @site ||= (
      Site.new(Watir::Browser.new(:chrome))
    )
  end
end

World(SiteHelper)