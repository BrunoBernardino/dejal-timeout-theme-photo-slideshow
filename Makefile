OUT_DIR = "Photo Slideshow.totheme"
OUT_ZIP = "bb-photo-slideshow.zip"

.PHONY: clean
clean:
	rm -fr *.totheme *.zip

.PHONY: build
build:
	make clean
	mkdir -p $(OUT_DIR)/Documents
	cp src/Info.json $(OUT_DIR)/Info.json
	cp src/index.html $(OUT_DIR)/Documents/index.html
	cp src/*.jpg $(OUT_DIR)/Documents/
	zip -rX $(OUT_ZIP) $(OUT_DIR)

.PHONY: start
start:
	@cd src && echo "Open http://localhost:3000" && python3 -m http.server 3000
