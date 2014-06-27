## Generated from proto/messages.proto for vx.message
require "beefcake"

module Vx
  module Message

    class PerformBuild
      include Beefcake::Message
    end

    class PerformJob
      include Beefcake::Message
    end

    class JobLog
      include Beefcake::Message
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
    end

    class PerformBuild
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
      required :company_id, :string, 1
      required :company_name, :string, 2
      required :project_id, :string, 3
      required :project_name, :string, 4
      required :build_id, :string, 5
      required :build_number, :uint64, 6
      required :job_id, :string, 7
      required :job_number, :uint64, 8
      required :job_version, :uint64, 9
      required :before_script, :string, 10
      required :script, :string, 11
      required :after_script, :string, 12
      optional :image, :string, 13
    end

    class JobLog
      required :company_id, :string, 1
      required :company_name, :string, 2
      required :project_id, :string, 3
      required :project_name, :string, 4
      required :build_id, :string, 5
      required :build_number, :uint64, 6
      required :job_id, :string, 7
      required :job_number, :uint64, 8
      required :job_version, :uint64, 9
      required :log, :string, 10
      required :tm, :uint64, 11
    end

    class JobStatus
      required :company_id, :string, 1
      required :company_name, :string, 2
      required :project_id, :string, 3
      required :project_name, :string, 4
      required :build_id, :string, 5
      required :build_number, :uint64, 6
      required :job_id, :string, 7
      required :job_number, :uint64, 8
      required :job_version, :uint64, 9
      required :status, JobStatus::Status, 10
      required :tm, :uint64, 11
    end
  end
end
