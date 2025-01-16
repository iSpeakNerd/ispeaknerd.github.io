#!/usr/bin/env ruby
#
# Check for resume.yml changes and update last_edit, last_commit, and last_commit_url  date

Jekyll::Hooks.register :site, :after_init do |site|
  resume_path = File.join(site.source, '_data', 'resume.yml')

  if File.exist?(resume_path)
    commit_num = `git rev-list --count HEAD "#{resume_path}"`

    if commit_num.to_i > 1
      lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{resume_path}"`.strip
      last_commit = `git log -1 --pretty="%H" "#{resume_path}"`.strip

      # Get the remote URL and construct the commit URL
      remote_url = `git remote get-url origin`.strip
      repo_url = remote_url.sub(/\.git$/, '').sub(/^git@github\.com:/, 'https://github.com/')
      commit_url = "#{repo_url}/commit/#{last_commit}"

      # Read and update the YAML file
      resume_data = YAML.load_file(resume_path)
      resume_data['last_edit'] = lastmod_date
      resume_data['last_commit'] = last_commit
      resume_data['last_commit_url'] = commit_url

      File.write(resume_path, resume_data.to_yaml)
    end
  end
end
