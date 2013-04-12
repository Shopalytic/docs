desc 'Publishes jekyll blog to github pages'
task :publish do
  if !`git status`.include?('nothing to commit')
    puts 'Publish cant run until all files are committed or stashed'
    next
  end

  puts 'Checkout out source'
  system 'git checkout source branch'

  puts 'Building jekyll to .build/'
  system 'jekyll .build --no-server --no-auto'

  puts 'Checking out gh-pages branch'
  system 'git checkout gh-pages'

  puts 'Deleting all files'
  Dir.glob('**/*').each { |f| File.delete(f) unless File.directory?(f) }

  puts 'Cleaning up directories'
  Dir.glob('*/').each { |f| FileUtils.rm_r("#{f}") }

  puts 'Moving build files into place'
  system 'cp -r .build/. .'
  system 'rm -r .build'

  puts 'Committing files'
  system 'git add -A'
  system 'git status -s | git commit -F-'

  puts 'Deploying to github pages'
  system 'git push upstream gh-pages'
  system 'git checkout source'
end
