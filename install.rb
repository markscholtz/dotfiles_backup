#!/usr/bin/env ruby
# from http://errtheblog.com/posts/89-huba-huba


# install dotfiles
puts '1) Installing dot files ...'
home_directory = File.expand_path('~')
Dir['*'].each do |file|
  next if file =~ /install|readme|rvmhooks/i
  target = File.join(home_directory, ".#{file}")
  puts "---> ln -svf #{File.expand_path file} #{target}"
  `ln -svf #{File.expand_path file} #{target}`
end

# install rvm hook files
puts "\n2) Installing rvm hook files ..."
rvmhooks_directory = File.join(home_directory, '.rvm/hooks')
myrvmhookfiles = File.join('**', 'rvmhooks', '*')
Dir[myrvmhookfiles].each do |file|
  target = File.join(rvmhooks_directory, "#{file.split('/')[1]}")
  puts "---> ln -svf #{File.expand_path file} #{target}"
  `ln -svf #{File.expand_path file} #{target}`
end

# git push on commit
puts "\n3) Setting up git post-commit hooks"
`echo 'git push' > .git/hooks/post-commit`
`chmod 755 .git/hooks/post-commit`
