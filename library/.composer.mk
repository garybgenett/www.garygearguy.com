override COMPOSER_INCLUDE := 
override COMPOSER_DEPENDS := 
override COMPOSER_KEEPING := 100
override COMPOSER_LOG := .composed
override COMPOSER_EXT := .md
override COMPOSER_TARGETS := 
override COMPOSER_SUBDIRS := 
override COMPOSER_EXPORTS := CNAME README.markdown .nojekyll .composer.mk .composer.yml .composer-* _header* _footer* _photos.yml *.html *.pdf *.epub *.revealjs.html *.docx *.pptx *.txt *.md.txt
override COMPOSER_IGNORES := +Composer 404.md index.md _photos pictures _posted.txt _branding _template* _profile*
override c_site := 1
override c_type := html
override c_lang := en-US
override c_logo := $(COMPOSER_ROOT)/_branding/logo.png
override c_icon := $(COMPOSER_ROOT)/_branding/logo.png
override c_css := 
override c_toc := 
override c_level := 2
override c_margin := 0.8in
override c_options := 
index.html: index-include.md.cms
sitemap.html: sitemap-include.md.cms
