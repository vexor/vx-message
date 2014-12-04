## Generated from proto/messages.proto for vx.lib.message
require "beefcake"

module Vx
  module Lib
    module Message

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
        optional :job_timeout, :uint64, 14
        optional :job_read_timeout, :uint64, 15
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
end
