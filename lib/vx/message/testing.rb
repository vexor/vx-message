# coding: utf-8
require File.expand_path("../../message", __FILE__)

module Vx
  module Message

    class BuildInfo
      class << self

        def test_attributes(options = {})
          {
            build_id:       1,
            commit_author:  'Автор по русски',
            commit_message: 'Сообщение по русски',
          }.merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class JobStatus
      class << self

        def test_attributes(options = {})
          {
            build_id: 1,
            job_id:   2,
            status:   0,
            tm:       1376137604,
            matrix:   ["env:FOO = 1", "rvm:1.9.3"]
          }.merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class BuildStatus
      class << self

        def test_attributes(options = {})
          {
            build_id: 1,
            status:   0,
            tm:       1376137604,
            jobs_count: 1,
          }.merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class JobLog
      class << self

        def test_attributes(options = {})
          {
            build_id: 1,
            job_id:   2,
            log:      'log',
            tm:       1376137604,
          }.merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class BuildLog
      class << self

        def test_attributes(options = {})
          {
            build_id: 1,
            log:      'log',
            tm:       1376137604,
          }.merge(options)
        end

        def test_message(options = {})
          new test_attributes(options)
        end

      end
    end

    class PerformJob
      class << self

        def test_attributes(options = {})
          options.merge({
            id:            options[:id]            || 1,
            name:          options[:name]          || 'evrone/test-repo',
            job_id:        options[:job_id]        || 2,
            before_script: options[:before_script] || 'echo before_script',
            script:        options[:script]        || 'echo script',
            after_script:  options[:after_script]  || 'echo after_script',
            matrix_keys:   options[:matrix_keys]   || %w{ rvm:2.0.0 }
          })
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
