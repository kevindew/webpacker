namespace :webpacker do
  desc "Support for older Rails versions. Install all JavaScript dependencies as specified via Yarn"
  task :yarn_install do
    Dir.chdir(Rails.root) do
      system "yarn install --no-progress --frozen-lockfile --production"
    end
  end
end
