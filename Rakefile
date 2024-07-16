# Rakefile

desc "Initialize, update, and refresh all submodules to their latest versions"
task :update do
  # Ensure all submodules are initialized
  puts "Initializing and updating submodules..."
  system("git submodule update --init --recursive")

  # Get list of all submodules
  submodules = `git config --file .gitmodules --get-regexp path`.lines.map { |line| line.split.last }

  if submodules.empty?
    puts "No submodules found."
  else
    submodules.each do |submodule|
      puts "Updating submodule at #{submodule}..."
      system("git submodule update --remote #{submodule}")

      puts "Status submodule at #{submodule}..."
      system("git submodule status #{submodule}")
    end
  end

  puts "All submodules have been initialized and updated to their latest versions."
end
