$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'appx'
  
def fixture_file(file_name)
  File.join(File.expand_path(File.dirname(__FILE__)), 'fixtures', 'files', file_name)
end
