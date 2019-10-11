# coding: utf-8
require 'html-proofer'
require 'jekyll'

task :build do
  puts 'Building site...'.bold
  Jekyll::Commands::Build.process(profile: true)
end

task :test => [:clean, :build] do
  puts 'Running view tests...'.bold
  opts = {
    empty_alt_ignore: true,
    url_ignore: [
      "#",
      /^(https?\:\/\/)?(www\.)?youtube\.com\/.+$/,
    ],
    disable_external: true
  }
  HTMLProofer.check_directory('./_site', opts).run
end

task :clean do
  puts 'Cleaning up _site...'.bold
  Jekyll::Commands::Clean.process({})
end
