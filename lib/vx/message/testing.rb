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

    class PerformBuild
      class << self

        def test_attributes(options = {})
          key = File.read File.expand_path("../../../../fixtures/insecure_private_key", __FILE__)
          travis = File.read File.expand_path("../../../../fixtures/travis.yml", __FILE__)
          options.merge({
            id:         options[:id]         || 1,
            name:       options[:name]       || 'evrone/test-repo',
            src:        options[:src]        || "git@github.com:dima-exe/ci-worker-test-repo.git",
            sha:        options[:sha]        || "b665f90239563c030f1b280a434b3d84daeda1bd",
            deploy_key: options[:deploy_key] || key,
            travis:     options[:travis]     || travis,
            branch:     options[:branch]     || "master"
          })
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

  end
end
