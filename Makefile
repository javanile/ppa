
install:
	bundle install --path vendor/bundle

serve:
	bundle exec jekyll serve --verbose  --incremental

build:
	bundle exec jekyll build --verbose  --incremental
