EXTRA_CFLAGS += -Werror

obj-m := mt76.o mt76x2e.o mt7603e.o mt76x2-common.o mt76-usb.o mt76x2u.o

mt76-y := \
	mmio.o util.o trace.o dma.o mac80211.o debugfs.o eeprom.o \
	tx.o agg-rx.o

mt76-usb-y := usb.o usb_trace.o usb_mcu.o

mt76x2-common-y := \
	mt76x2_eeprom.o mt76x2_tx_common.o mt76x2_mac_common.o \
	mt76x2_init_common.o mt76x2_common.o mt76x2_phy_common.o \
	mt76x2_debugfs.o

mt76x2e-y := \
	mt76x2_pci.o mt76x2_dma.o \
	mt76x2_main.o mt76x2_init.o mt76x2_tx.o \
	mt76x2_core.o mt76x2_mac.o mt76x2_mcu.o mt76x2_phy.o \
	mt76x2_dfs.o mt76x2_trace.o

mt76x2u-y := \
	mt76x2_usb.o mt76x2u_init.o mt76x2u_main.o mt76x2u_mac.o \
	mt76x2u_mcu.o mt76x2u_phy.o mt76x2u_core.o

mt7603e-y := \
	mt7603_pci.o mt7603_soc.o mt7603_main.o mt7603_init.o mt7603_mcu.o \
	mt7603_core.o mt7603_dma.o mt7603_mac.o mt7603_eeprom.o \
	mt7603_beacon.o mt7603_debugfs.o
