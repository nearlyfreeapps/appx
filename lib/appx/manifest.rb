require 'nokogiri'

module Appx
  class Manifest
    attr_reader :xml

    def initialize(data)
      @xml = Nokogiri::XML(data)
    end

    def display_name
      @xml.at_css('DisplayName').content
    end

    def identity_name
      @xml.at_css('Identity').attributes['Name'].content
    end

    def publisher_display_name
      @xml.at_css('PublisherDisplayName').content
    end

    def version
      @xml.at_css('Identity').attributes['Version'].content
    end
  end
end
