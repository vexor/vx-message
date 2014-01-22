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


      required :project_id, :uint64, 1
      required :id, :uint64, 2
      required :name, :string, 3
      required :job_id, :uint64, 4
      required :before_script, :string, 5
      required :script, :string, 6
      required :after_script, :string, 7

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

      required :project_id, :uint64, 1
      required :build_id, :uint64, 2
      required :job_id, :uint64, 3
      required :status, JobStatus::Status, 4
      required :tm, :uint64, 5

    end
  end
end
