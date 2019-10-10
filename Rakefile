require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
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
