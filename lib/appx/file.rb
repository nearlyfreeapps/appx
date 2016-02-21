require 'zip'

module Appx
  class File
    MANIFEST = 'AppxManifest.xml'

    attr_reader :path
    attr_reader :manifest

    def initialize(path)
      @path = path

      raise Appx::FileNotFoundError, path unless ::File.exist?(path)

      begin
        @zip_file = Zip::File.open(@path)
      rescue Zip::Error => e
        raise Appx::InvalidAppxError, e.message
      end

      manifest_data = @zip_file.read(@zip_file.find_entry(MANIFEST))
      @manifest = Appx::Manifest.new(manifest_data)
    end
  end
end
