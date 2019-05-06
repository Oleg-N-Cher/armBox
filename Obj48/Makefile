# https://habr.com/post/211751/

TARGET = ../armBox
CC = gcc -g -I../C -Wfatal-errors -c
LINK = gcc -g -o $(TARGET) -ldl `pkg-config --cflags --libs gtk+-2.0`

.PHONY: all clean

### Link

all: Main.o SYSTEM.o Types.o Kernel.o Math.o Strings.o Files.o Dates.o Fonts.o \
     Log.o Meta.o Ports.o Printers.o Services.o Dialog.o Stores.o Sequencers.o \
     Models.o Converters.o Views.o Controllers.o Properties.o Mechanisms.o \
     Containers.o Printing.o Documents.o Windows_.o Controls.o Config.o Init.o \
     Out.o Gtk2GLib.o Gtk2GObject.o Gtk2Pango.o Gtk2Gtk.o Gtk2Gdk.o \
     Gtk2Keysyms.o Gtk2Util.o FormModels.o FormViews.o FormControllers.o \
     HostFiles.o HostRegistry.o HostFonts.o HostPorts.o HostWindows.o \
     HostCmds.o HostClipboard.o HostCFrames.o HostDialog.o HostMechanisms.o \
     HostTabFrames.o HostTextConv.o HostMenus.o HostLang.o HostConsole.o \
     HostDates.o StdTabViews.o StdDialog.o StdApi.o StdCFrames.o \
     StdInterpreter.o StdCmds.o StdLinks.o StdLog.o StdMenuTool.o DevMarkers.o \
     TextModels.o TextMappers.o TextRulers.o TextSetters.o TextViews.o \
     TextCmds.o TextControllers.o Console.o
	$(LINK) \
     Main.o SYSTEM.o Types.o Kernel.o Math.o Strings.o Files.o Dates.o Fonts.o \
     Log.o Meta.o Ports.o Printers.o Services.o Dialog.o Stores.o Sequencers.o \
     Models.o Converters.o Views.o Controllers.o Properties.o Mechanisms.o \
     Containers.o Printing.o Documents.o Windows_.o Controls.o Config.o Init.o \
     Out.o Gtk2GLib.o Gtk2GObject.o Gtk2Pango.o Gtk2Gtk.o Gtk2Gdk.o \
     Gtk2Keysyms.o Gtk2Util.o FormModels.o FormViews.o FormControllers.o \
     HostFiles.o HostRegistry.o HostFonts.o HostPorts.o HostWindows.o \
     HostCmds.o HostClipboard.o HostCFrames.o HostDialog.o HostMechanisms.o \
     HostTabFrames.o HostTextConv.o HostMenus.o HostLang.o HostConsole.o \
     HostDates.o StdTabViews.o StdDialog.o StdApi.o StdCFrames.o \
     StdInterpreter.o StdCmds.o StdLinks.o StdLog.o StdMenuTool.o DevMarkers.o \
     TextModels.o TextMappers.o TextRulers.o TextSetters.o TextViews.o \
     TextCmds.o TextControllers.o Console.o

### SYSTEM, System, Kernel

Main.o: Main.c
		$(CC) Main.c
SYSTEM.o: ../C/SYSTEM.c
		$(CC) ../C/SYSTEM.c
Types.o: Types.c
		$(CC) Types.c
Kernel.o: Kernel.c
		$(CC) Kernel.c
Math.o: Math.c
		$(CC) Math.c
Strings.o: Strings.c
		$(CC) Strings.c
Files.o: Files.c
		$(CC) Files.c
Dates.o: Dates.c
		$(CC) Dates.c
Fonts.o: Fonts.c
		$(CC) Fonts.c
Log.o: Log.c
		$(CC) Log.c
Meta.o: Meta.c
		$(CC) Meta.c
Ports.o: Ports.c
		$(CC) Ports.c
Printers.o: Printers.c
		$(CC) Printers.c
Services.o: Services.c
		$(CC) Services.c
Dialog.o: Dialog.c
		$(CC) Dialog.c
Stores.o: Stores.c
		$(CC) Stores.c
Sequencers.o: Sequencers.c
		$(CC) Sequencers.c
Models.o: Models.c
		$(CC) Models.c
Converters.o: Converters.c
		$(CC) Converters.c
Views.o: Views.c
		$(CC) Views.c
Controllers.o: Controllers.c
		$(CC) Controllers.c
Properties.o: Properties.c
		$(CC) Properties.c
Mechanisms.o: Mechanisms.c
		$(CC) Mechanisms.c
Containers.o: Containers.c
		$(CC) Containers.c
Printing.o: Printing.c
		$(CC) Printing.c
Documents.o: Documents.c
		$(CC) Documents.c
Windows_.o: Windows_.c
		$(CC) Windows_.c
Controls.o: Controls.c
		$(CC) Controls.c
Out.o: Out.c
		$(CC) Out.c
Config.o: Config.c
		$(CC) Config.c
Init.o: Init.c
		$(CC) Init.c
Console.o: Console.c
		$(CC) Console.c

### Gtk

Gtk2GLib.o: Gtk2GLib.c
		$(CC) Gtk2GLib.c
Gtk2GObject.o: Gtk2GObject.c
		$(CC) Gtk2GObject.c
Gtk2Pango.o: Gtk2Pango.c
		$(CC) Gtk2Pango.c
Gtk2Gtk.o: Gtk2Gtk.c
		$(CC) Gtk2Gtk.c
Gtk2Gdk.o: Gtk2Gdk.c
		$(CC) Gtk2Gdk.c
Gtk2Keysyms.o: Gtk2Keysyms.c
		$(CC) Gtk2Keysyms.c
Gtk2Util.o: Gtk2Util.c
		$(CC) Gtk2Util.c

### Form

FormModels.o: FormModels.c
		$(CC) FormModels.c
FormViews.o: FormViews.c
		$(CC) FormViews.c
FormControllers.o: FormControllers.c
		$(CC) FormControllers.c

### Host

HostFiles.o: HostFiles.c
		$(CC) HostFiles.c
HostRegistry.o: HostRegistry.c
		$(CC) HostRegistry.c
HostFonts.o: HostFonts.c
		$(CC) HostFonts.c
HostPorts.o: HostPorts.c
		$(CC) HostPorts.c
HostWindows.o: HostWindows.c
		$(CC) HostWindows.c
HostClipboard.o: HostClipboard.c
		$(CC) HostClipboard.c
HostCFrames.o: HostCFrames.c
		$(CC) HostCFrames.c
HostDialog.o: HostDialog.c
		$(CC) HostDialog.c
HostCmds.o: HostCmds.c
		$(CC) HostCmds.c
HostMechanisms.o: HostMechanisms.c
		$(CC) HostMechanisms.c
HostTabFrames.o: HostTabFrames.c
		$(CC) HostTabFrames.c
HostTextConv.o: HostTextConv.c
		$(CC) HostTextConv.c
HostMenus.o: HostMenus.c
		$(CC) HostMenus.c
HostLang.o: HostLang.c
		$(CC) HostLang.c
HostConsole.o: HostConsole.c
		$(CC) HostConsole.c
HostDates.o: HostDates.c
		$(CC) HostDates.c

### Std

StdTabViews.o: StdTabViews.c
		$(CC) StdTabViews.c
StdDialog.o: StdDialog.c
		$(CC) StdDialog.c
StdApi.o: StdApi.c
		$(CC) StdApi.c
StdInterpreter.o: StdInterpreter.c
		$(CC) StdInterpreter.c
StdCFrames.o: StdCFrames.c
		$(CC) StdCFrames.c
StdCmds.o: StdCmds.c
		$(CC) StdCmds.c
StdLinks.o: StdLinks.c
		$(CC) StdLinks.c
StdLog.o: StdLog.c
		$(CC) StdLog.c
StdMenuTool.o: StdMenuTool.c
		$(CC) StdMenuTool.c

### Text

TextModels.o: TextModels.c
		$(CC) TextModels.c
TextMappers.o: TextMappers.c
		$(CC) TextMappers.c
TextRulers.o: TextRulers.c
		$(CC) TextRulers.c
TextSetters.o: TextSetters.c
		$(CC) TextSetters.c
TextViews.o: TextViews.c
		$(CC) TextViews.c
TextControllers.o: TextControllers.c
		$(CC) TextControllers.c
TextCmds.o: TextCmds.c
		$(CC) TextCmds.c

# Dev

DevMarkers.o: DevMarkers.c
		$(CC) DevMarkers.c

clean:
		rm -rf $(TARGET) *.o
