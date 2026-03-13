root := justfile_directory()
posts_dir := root + "/src/content/posts"
editor := "nvim"
deploy_dir := "/srv/kotori_blog/blog"

default:
  @just --list

list:
  @eza --long --all --icons {{root}}/src/content/posts

new name title="":
  #!/usr/bin/env bash
  # check if the post exists
  if [[ -d "{{posts_dir}}/{{name}}" || -f "{{posts_dir}}/{{name}}.md" ]]
  then
    echo "File already exists skipping"
    exit 0
  fi
  # cretion of the post with default content
  mkdir "{{posts_dir}}/{{name}}"
  cat > "{{posts_dir}}/{{name}}/index.md" << EOF
  ---
  title: '{{title}}'
  published: $(date +"%Y-%m-%d")
  draft: true
  description: ''
  tags: ['']
  ---
  EOF
  echo "New post created"

edit name:
  @{{editor}} "{{posts_dir}}/{{name}}/index.md"

delete name:
  @echo "Deleting post {{name}}"
  @rm -rf {{posts_dir}}/{{name}}

deploy:
  @echo "Building blog"
  pnpm build
  @echo "Uploading to server directory"
  rsync --progress -av --chown=www-data:services dist {{deploy_dir}}

