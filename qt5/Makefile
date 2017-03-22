USER = tuetuopay
TAGS = arch arch-clang fedora fedora-clang ubuntu ubuntu-clang

all: $(TAGS)

$(TAGS):
	docker build -t $(USER)/qt5:$@ -f Dockerfile.$@ .

.PHONY: $(TAGS)

