BUILD = ../build
BOOKNAME_tutorial = 心灯录
METADATA_tutorial = metadata.yaml
TOC = --toc --toc-depth=2
SRC_DIR = ./content

EPUB_BUILDER = pandoc

epub: $(BUILD)/$(BOOKNAME_tutorial).epub

$(BUILD)/$(BOOKNAME_tutorial).epub:
	mkdir -p $(BUILD)
	$(EPUB_BUILDER) -o $@ $(METADATA_tutorial) $(TOC) `ls $(SRC_DIR)/*.md` --verbose
	# pandoc -o ../build/心灯录.docx metadata.yaml -t docx --toc `ls ./content/*.md` --verbose

clean:
	rm $(BUILD)/$(BOOKNAME_tutorial).epub

.PHONY: clean epub
