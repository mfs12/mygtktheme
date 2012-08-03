DESTDIR = /usr/local/share/themes

DIRS =  ./MyTheme/ \
	./MyTheme/gtk-2.0 \
	./MyTheme/metacity-1 \

FILES = ./MyTheme/gtk-2.0/panel_bg_30.png \
	./MyTheme/gtk-2.0/gtkrc \
	./MyTheme/gtk-2.0/panel_bg.png \
	./MyTheme/index.theme \
	./MyTheme/metacity-1/minimize_unfocused.png \
	./MyTheme/metacity-1/metacity-theme-1.xml \
	./MyTheme/metacity-1/trough_middle.png \
	./MyTheme/metacity-1/close.png \
	./MyTheme/metacity-1/unmaximize.png \
	./MyTheme/metacity-1/minimize_unfocused_over.png \
	./MyTheme/metacity-1/maximize_unfocused_over.png \
	./MyTheme/metacity-1/maximize.png \
	./MyTheme/metacity-1/close_unfocused.png \
	./MyTheme/metacity-1/minimize.png \
	./MyTheme/metacity-1/trough_right.png \
	./MyTheme/metacity-1/menu_prelight.png \
	./MyTheme/metacity-1/close_unfocused_over.png \
	./MyTheme/metacity-1/maximize_unfocused.png \
	./MyTheme/metacity-1/trough_left.png \
	./MyTheme/metacity-1/unmaximize_unfocused_over.png \
	./MyTheme/metacity-1/menu.png \
	./MyTheme/metacity-1/unmaximize_unfocused.png

SCRIPTS = ./MyTheme/metacity-1/gconf-settings.sh


activate_theme:
	install -m 755 $@ $(DESTDIR)/$@

$(DIRS):
	mkdir -p $(DESTDIR)/$@

$(FILES): $(DIRS)
	install -m 644 $@ $(DESTDIR)/$@

$(SCRIPTS): $(DIRS)
	install $@ $(DESTDIR)/$@

install: $(FILES) $(SCRIPTS) activate_theme

.PHONY: install $(DIRS) $(FILES) $(SCRIPTS) activate_theme

