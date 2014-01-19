## Generated from proto/messages.proto for vx.message
require "beefcake"

module Vx
  module Message

    class PerformBuild
      include Beefcake::Message


      required :id, :uint64, 1
      required :name, :string, 2
      required :src, :string, 3
      required :sha, :string, 4
      optional :deploy_key, :string, 6
      required :travis, :string, 7
      required :branch, :string, 8
      optional :pull_request_id, :uint64, 9

    end

    class PerformJob
      include Beefcake::Message


      required :id, :uint64, 1
      required :name, :string, 2
      required :job_id, :uint64, 7
      required :before_script, :string, 8
      required :script, :string, 9
      required :after_script, :string, 11
      repeated :matrix_keys, :string, 10

    end

    class BuildLog
      include Beefcake::Message


      required :build_id, :uint64, 1
      required :log, :string, 2
      required :tm, :uint64, 3

    end

    class JobLog
      include Beefcake::Message


      required :build_id, :uint64, 1
      required :log, :string, 2
      required :tm, :uint64, 3
      required :job_id, :uint64, 5

    end

    class BuildStatus
      include Beefcake::Message

      module Status
        INITIALIZED = 0
        STARTED = 2
        FINISHED = 3
        BROKEN = 4
        FAILED = 5
      end

      required :build_id, :uint64, 1
      required :status, BuildStatus::Status, 2
      required :tm, :uint64, 3
      required :jobs_count, :uint32, 5

    end

    class JobStatus
      include Beefcake::Message

      module Status
        INITIALIZED = 0
        STARTED = 2
        FINISHED = 3
        BROKEN = 4
        FAILED = 5
      end

      required :build_id, :uint64, 1
      required :job_id, :uint64, 2
      required :status, JobStatus::Status, 3
      required :tm, :uint64, 4
      repeated :matrix, :string, 6

    end
  end
end
