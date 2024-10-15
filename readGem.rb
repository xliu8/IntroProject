# install_gems.rb
File.read('Gemfile').each_line do |line|
  if line =~ /gem\s+'(\w+)',\s+'(~>?\s*\d+\.\d+)?'/
    gem_name = $1
    gem_version = $2
    system("gem install #{gem_name} -v '#{gem_version}'") if gem_version
  end
end
