USER = tuetuopay
IMAGES = $(shell find . -type d -not -path . | cut -f2 -d/ | uniq | grep -v .git)
BUILDFLAGS =

all: $(IMAGES)

$(IMAGES):
	@if [[ -e $@/Makefile ]]; then \
		$(MAKE) -C $@ USER=$(USER); \
	else \
		echo docker build -t $(USER)/$@ $@; \
		docker build $(BUILDFLAGS) -t $(USER)/$@ $@; \
	fi

.PHONY: $(IMAGES)

