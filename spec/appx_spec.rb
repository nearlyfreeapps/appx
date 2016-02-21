require 'spec_helper'

describe Appx do
  let(:test_file_path) { fixture_file('test.appx') }
  let(:appx) { Appx::File.new(test_file_path) }

  describe 'manifest' do
    it 'should have a display name' do
      expect(appx.manifest.display_name).to eq('EdpSample')
    end

    it 'should have an identity name' do
      expect(appx.manifest.identity_name).to eq('Microsoft.SDKSamples.EnterpriseDataProtection.CS')
    end

    it 'should have a publisher display name' do
      expect(appx.manifest.publisher_display_name).to eq('Microsoft Corporation')
    end

    it 'should have a version' do
      expect(appx.manifest.version).to eq('1.0.0.0')
    end
  end
end
