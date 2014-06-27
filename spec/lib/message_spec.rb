require 'spec_helper'
require 'stringio'

describe Vx::Message do

  %w{ PerformJob JobLog JobStatus }.each do |klass|

    context "#{klass}" do

      let(:inst) { described_class.const_get klass }
      subject { inst.test_message }

      it "should be valid" do
        expect(subject.validate!).to be
      end

      it "should be successfuly serialized/deserialized" do
        bytes = subject.encode
        obj = described_class.const_get(klass).decode(bytes)
        expect(obj.validate!).to be
        expect(obj).to eq subject
      end

    end
  end
end
