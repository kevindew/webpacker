require "test_helper"

class EngineRakeTasksTest < Minitest::Test
  def test_rake_tasks
    output = Dir.chdir(test_app_path) { `#{rake_command} -T` }
    assert_includes output, "app:webpacker"
  end

  private
    def test_app_path
      File.expand_path("test_app", __dir__)
    end

    def rake_command
      "rake -f Rakefile.engine"
    end
end
