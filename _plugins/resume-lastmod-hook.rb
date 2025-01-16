#!/usr/bin/env ruby
#
# Check for resume.yml changes and update last_edit, last_commit, and last_commit_url  date

Jekyll::Hooks.register :site, :after_init do |site|
  resume_path = File.join(site.source, '_data', 'resume.yml')

  if File.exist?(resume_path)
    commit_num = `git rev-list --count HEAD "#{resume_path}"`

    if commit_num.to_i > 1
      # Get the current content
      content = File.read(resume_path)

      # Get the new values
      lastmod_date = `git log -1 --pretty="%ad" --date=format:"%Y-%m-%d" "#{resume_path}"`.strip
      last_commit = `git log -1 --pretty="%H" "#{resume_path}"`.strip

      # Get the remote URL and construct the commit URL
      remote_url = `git remote get-url origin`.strip
      repo_url = remote_url.sub(/\.git$/, '').sub(/^git@github\.com:/, 'https://github.com/')
      commit_url = "#{repo_url}/commit/#{last_commit}"

      # Update only the specific fields using regex
      content.sub!(/^last_edit: .*$/, "last_edit: \"#{lastmod_date}\"")
      content.sub!(/^last_commit: .*$/, "last_commit: #{last_commit}")
      content.sub!(/^last_commit_url: .*$/, "last_commit_url: #{commit_url}")

      # Write back to file
      File.write(resume_path, content)
    end
  end
end
