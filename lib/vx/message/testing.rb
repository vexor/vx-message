# coding: utf-8
require File.expand_path("../../message", __FILE__)

module Vx
  module Message

    @@common = {
      company_id:   '1',
      company_name: 'company name',
      project_id:   '2',
      project_name: 'project name',
      build_id:     '3',
      build_number: 4,
      job_id:       '5',
      job_number:   6,
      job_version:  1
    }

    def self.common
      @@common
    end

    class JobStatus
      class << self

        def test_attributes(options = {})
          Message.common.merge(
            status:     0,
            tm:         1376137604,
          ).merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class JobLog
      class << self

        def test_attributes(options = {})
          Message.common.merge(
            log: 'log',
            tm:  1376137604,
          ).merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class PerformJob
      class << self

        def test_attributes(options = {})
          Message.common.merge(
            before_script: 'echo before_script',
            script:        'echo script',
            after_script:  'echo after_script',
          ).merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

  end
end
