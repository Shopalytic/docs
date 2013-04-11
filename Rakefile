desc ""
task :publish do
  system 'git checkout source'
  system 'jekyll build --no-server --no-auto'
  system 'git stash'
  system 'git checkout gh-pages'
  system 'cp -r build/. .'
  system 'rm -r build'
  system 'git add -A'
  #system 'git status -s | git commit -F-'
  #system 'git push upstream gh-pages || exit'
end

