################################################################################
# composer settings file
################################################################################

override _EXPORT_GIT_REPO		:= ssh://git@github.com/garybgenett/www.garygearguy.com.git
override _EXPORT_GIT_BNCH		:= gh-pages

override _EXPORT_FIRE_ACCT		:= contact.garygearguy@gmail.com
override _EXPORT_FIRE_PROJ		:= garygearguy-site

################################################################################

override COMPOSER_EXPORTS		:= CNAME README.markdown .nojekyll
override COMPOSER_EXPORTS		+= .composer.mk .composer.yml .composer-*
override COMPOSER_EXPORTS		+= _header* _footer* _photos.yml
override COMPOSER_EXPORTS		+= .targets
ifneq ($(COMPOSER_CURDIR),)
override COMPOSER_SUBDIRS		:= .null
override COMPOSER_IGNORES		:= library
endif

########################################

override MAKEJOBS			:= 0
override COMPOSER_INCLUDE		:= 1

override c_site				:= 1
override c_logo				:= $(COMPOSER_ROOT)/_branding/logo.png
override c_icon				:= $(COMPOSER_ROOT)/_branding/logo.png

################################################################################

%.html: $(COMPOSER_ROOT)/_header.md.cms
#>%.html: $(COMPOSER_ROOT)/_header-pages.md.cms
#>%.html: $(COMPOSER_ROOT)/_footer-pages.md.cms
%.html: $(COMPOSER_ROOT)/_footer.md.cms

%.html: $(COMPOSER_ROOT)/_photos.yml

################################################################################
ifeq ($(COMPOSER_CURDIR),)
################################################################################

.PHONY: $(notdir $(COMPOSER_ROOT))-$(EXPORTS)
$(notdir $(COMPOSER_ROOT))-$(EXPORTS):
	@$(TOUCH) $(COMPOSER_ROOT)/.nojekyll
	@(cd $(COMPOSER_ROOT) && $(HOME)/.bashrc git-perms root)

################################################################################
endif
################################################################################
# end of file
################################################################################
