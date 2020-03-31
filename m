Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3F81994F1
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 13:12:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59B95886F3;
	Tue, 31 Mar 2020 11:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MH2dXzqoh2R5; Tue, 31 Mar 2020 11:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A4D9886E8;
	Tue, 31 Mar 2020 11:12:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0A001BF836
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 11:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD6C02155E
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 11:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bKdCHu9WUnuM for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 11:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CBCB124F8D
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 11:12:13 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4375B20838;
 Tue, 31 Mar 2020 11:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585653133;
 bh=G1rKh20PNlZcrxj0bxu7OOVq4n7E9ZdfbkM1U0Pfy5o=;
 h=From:To:Cc:Subject:Date:From;
 b=jMAH8T3JQt43zBzG4nQRWAScKIhZLvgP7nGREPtHt0KGxCEAxfzTjGbeICtbGWS/S
 3rS/HRfVk33Ss7ts+utriBE3afmyScZfXqd28Bh5Gv2VzyPI2qVB2ayy4+QUXJtxjC
 mBpHaG0Xk0Ku4tcuWIjLEkyxxN+zyPdHEUM8HmVQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jJEoU-002bpp-Vs; Tue, 31 Mar 2020 13:12:10 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v4 00/33] Media Kconfig menu reorg and improvements
Date: Tue, 31 Mar 2020 13:11:36 +0200
Message-Id: <cover.1585651678.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux1394-devel@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The media Kconfig menu is complex. From time to time, it requires some
improvements.

This series is organized on two parts:

1. Patches 1 to 19: cleanups and improvements;

- Try to be smarter when selecting features. So, auto-select
  Cypress firmware support on drivers that use it.
  Also, auto-select Media Controller and V4L2 subdevice
  API for devices that won't work without such features.

  Please notice that some drivers have can work optionally
  with those features enabled (or not). For those, users
  should still explicitly enable such features.

- Platform and test drivers have now an option at the device
  support selection;

- The test drivers are not platform drivers. They deserve
  their own directory.  When a test driver is selected, the
  needed API support will be automatically selected.

- Do some Kconfig reorg, in order to keep the main media
  Kconfig as clean as possible.

- The help messafe for media support was outdated;

- The ddbridge driver was abusing at the dvb dummy frontend
  driver (meant to be just an example). It will now have its
  own internal dummy driver, as the original one will soon receive
  more code and become a virtual driver.

- There's a longstanding issue with hybrid TV devices: for
  an hybrid device to work, *both* analog and digital TV
  would need to be selected. As the Kconfig language 
  improved, we can now address it. So, selecting either
  analog or digital TV support should display all hybrid
  devices. When an hybrid driver is selected, both V4L2
  and DVB core will be available.

2. Patches 20 to 33: visual changes.

- At the beginning, media had just "technical" options to
  enable/disable each feature. However, that leads into
  hundreds of different options, being a nightmare for a
  mortal to set it up.

  So, the Kconfig menu options were re-designed in order
  to bring a more user-oriented view:

  The initial items select the type of devices (analog TV,
  digital TV, cameras, ...). Selecting it would auto-select
  the core drivers.  The next step would be to select
  either PCI or USB, and the needed driver.

  While this makes life simpler, now there are many
  embedded developers. Most seem to prefer to be
  able of seeing everything without filters.

  The main focus of this part is to make everybody
  happy: it is now possible to unselect the filters, making
  all options visible. Also, now, when the filter is enabled,
  the media drivers menu will show a message warning
  that the filter is active.

  Hopefully, this should make both embedded developers
  and normal users happy.

- The media menus now have a more modern visual, grouping
  options in a way that it is now clearer about what they do.

  So, the Media support menu is now:

	--- Media support
	[ ] Filter media drivers
	[ ] Autoselect ancillary drivers
	    Media device types --->
	    Media core support --->
	    Video4Linux options --->
	    Media controller options --->
	    Digital TV options --->
	    HDMI CEC options --->
	    Media drivers --->
	    Media ancillary drivers --->

Mauro Carvalho Chehab (33):
  media: dvb-usb: auto-select CYPRESS_FIRMWARE
  media: Kconfig: add an option to filter in/out platform drivers
  media: Kconfig: not all V4L2 platform drivers are for camera
  media: pci: move VIDEO_PCI_SKELETON to a different Kconfig
  media: Kconfig: update the MEDIA_SUPPORT help message
  media: split test drivers from platform directory
  media: Kconfig: move comment to siano include
  media: Kconfig: move drivers-specific TTPCI_EEPROM Kconfig var
  media: Kconfig: mode firewire comment to firewire/Kconfig
  media: ddbridge: copy the dvb_dummy_fe driver to ddbridge
  media: ddbridge-dummy_fe: do some vars and function renames
  media: ddbridge: use the ddbridge's own dummy fe driver
  media: Kconfig: mark other drivers as test drivers
  media: Kconfig: simplify some dependencies
  media: Kconfig: better support hybrid TV devices
  media: Kconfig: fix selection for test drivers
  media: add SPDX headers on Kconfig and Makefile files
  media: dvb-core: Kconfig: default to use dynamic minors
  media: Kconfig files: use select for V4L2 subdevs and MC
  media: Kconfig: reorganize the drivers menu options
  media: Kconfig: use a sub-menu to select supported devices
  media: Kconfig: make filtering devices optional
  media: Kconfig: warn if drivers are filtered
  media: Kconfig: move CEC-specific options to cec/Kconfig
  media: Kconfig: move DVB-specific options to dvb-core/Kconfig
  media: Kconfig: move V4L2 subdev API to v4l2-core/Kconfig
  media: Kconfig: move media controller core select to main Kconfig
  media: Kconfig: place all options under a sub-menu
  media: Kconfig: move the position of sub-driver autoselection
  media: Kconfig: on !EMBEDDED && !EXPERT, enable driver filtering
  media: Kconfig: Better organize the per-API options
  media: i2c/Kconfig: reorganize items there
  media: Kconfig: don't use visible for device type select

 drivers/media/Kconfig                         | 262 ++++++-----
 drivers/media/cec/Kconfig                     |  10 +
 drivers/media/common/Kconfig                  |   2 +-
 drivers/media/dvb-core/Kconfig                |  27 ++
 drivers/media/dvb-frontends/Kconfig           |  15 +-
 drivers/media/firewire/Kconfig                |   5 +-
 drivers/media/i2c/Kconfig                     | 406 +++++++++++-------
 drivers/media/i2c/et8ek8/Kconfig              |   4 +-
 drivers/media/i2c/m5mols/Kconfig              |   5 +-
 drivers/media/i2c/smiapp/Kconfig              |   5 +-
 drivers/media/mc/Kconfig                      |  11 +-
 drivers/media/mmc/Kconfig                     |   1 -
 drivers/media/mmc/siano/Kconfig               |   2 +
 drivers/media/pci/Kconfig                     |  24 +-
 drivers/media/pci/bt8xx/Kconfig               |   5 +-
 drivers/media/pci/cobalt/Kconfig              |   4 +-
 drivers/media/pci/cx18/Kconfig                |   2 +-
 drivers/media/pci/cx23885/Kconfig             |   4 +-
 drivers/media/pci/cx88/Kconfig                |   4 +-
 drivers/media/pci/ddbridge/Kconfig            |   1 -
 drivers/media/pci/ddbridge/Makefile           |   2 +-
 drivers/media/pci/ddbridge/ddbridge-core.c    |   4 +-
 .../media/pci/ddbridge/ddbridge-dummy-fe.c    | 153 +++++++
 .../media/pci/ddbridge/ddbridge-dummy-fe.h    |  16 +
 drivers/media/pci/intel/ipu3/Kconfig          |   4 +-
 drivers/media/pci/saa7134/Kconfig             |   4 +-
 drivers/media/pci/saa7164/Kconfig             |   2 +-
 drivers/media/pci/sta2x11/Kconfig             |   6 +-
 drivers/media/platform/Kconfig                |  56 +--
 drivers/media/platform/Makefile               |   5 -
 drivers/media/platform/am437x/Kconfig         |   4 +-
 drivers/media/platform/atmel/Kconfig          |   4 +-
 drivers/media/platform/cadence/Kconfig        |   8 +-
 drivers/media/platform/exynos4-is/Kconfig     |   5 +-
 drivers/media/platform/rcar-vin/Kconfig       |   8 +-
 drivers/media/platform/sunxi/Kconfig          |   2 +
 drivers/media/platform/sunxi/Makefile         |   2 +
 .../media/platform/sunxi/sun4i-csi/Kconfig    |   6 +-
 .../media/platform/sunxi/sun4i-csi/Makefile   |   2 +
 .../media/platform/sunxi/sun6i-csi/Kconfig    |   4 +-
 drivers/media/platform/xilinx/Kconfig         |   4 +-
 drivers/media/spi/Kconfig                     |   4 +-
 drivers/media/test_drivers/Kconfig            |  28 ++
 drivers/media/test_drivers/Makefile           |   9 +
 .../vicodec/Kconfig                           |   0
 .../vicodec/Makefile                          |   0
 .../vicodec/codec-fwht.c                      |   0
 .../vicodec/codec-fwht.h                      |   0
 .../vicodec/codec-v4l2-fwht.c                 |   0
 .../vicodec/codec-v4l2-fwht.h                 |   0
 .../vicodec/vicodec-core.c                    |   0
 .../media/{platform => test_drivers}/vim2m.c  |   0
 .../{platform => test_drivers}/vimc/Kconfig   |   4 +-
 .../{platform => test_drivers}/vimc/Makefile  |   0
 .../vimc/vimc-capture.c                       |   0
 .../vimc/vimc-common.c                        |   0
 .../vimc/vimc-common.h                        |   0
 .../vimc/vimc-core.c                          |   0
 .../vimc/vimc-debayer.c                       |   0
 .../vimc/vimc-scaler.c                        |   0
 .../vimc/vimc-sensor.c                        |   0
 .../vimc/vimc-streamer.c                      |   0
 .../vimc/vimc-streamer.h                      |   0
 .../{platform => test_drivers}/vivid/Kconfig  |   0
 .../{platform => test_drivers}/vivid/Makefile |   0
 .../vivid/vivid-cec.c                         |   0
 .../vivid/vivid-cec.h                         |   0
 .../vivid/vivid-core.c                        |   0
 .../vivid/vivid-core.h                        |   0
 .../vivid/vivid-ctrls.c                       |   0
 .../vivid/vivid-ctrls.h                       |   0
 .../vivid/vivid-kthread-cap.c                 |   0
 .../vivid/vivid-kthread-cap.h                 |   0
 .../vivid/vivid-kthread-out.c                 |   0
 .../vivid/vivid-kthread-out.h                 |   0
 .../vivid/vivid-kthread-touch.c               |   0
 .../vivid/vivid-kthread-touch.h               |   0
 .../vivid/vivid-meta-cap.c                    |   0
 .../vivid/vivid-meta-cap.h                    |   0
 .../vivid/vivid-meta-out.c                    |   0
 .../vivid/vivid-meta-out.h                    |   0
 .../vivid/vivid-osd.c                         |   0
 .../vivid/vivid-osd.h                         |   0
 .../vivid/vivid-radio-common.c                |   0
 .../vivid/vivid-radio-common.h                |   0
 .../vivid/vivid-radio-rx.c                    |   0
 .../vivid/vivid-radio-rx.h                    |   0
 .../vivid/vivid-radio-tx.c                    |   0
 .../vivid/vivid-radio-tx.h                    |   0
 .../vivid/vivid-rds-gen.c                     |   0
 .../vivid/vivid-rds-gen.h                     |   0
 .../vivid/vivid-sdr-cap.c                     |   0
 .../vivid/vivid-sdr-cap.h                     |   0
 .../vivid/vivid-touch-cap.c                   |   0
 .../vivid/vivid-touch-cap.h                   |   0
 .../vivid/vivid-vbi-cap.c                     |   0
 .../vivid/vivid-vbi-cap.h                     |   0
 .../vivid/vivid-vbi-gen.c                     |   0
 .../vivid/vivid-vbi-gen.h                     |   0
 .../vivid/vivid-vbi-out.c                     |   0
 .../vivid/vivid-vbi-out.h                     |   0
 .../vivid/vivid-vid-cap.c                     |   0
 .../vivid/vivid-vid-cap.h                     |   0
 .../vivid/vivid-vid-common.c                  |   0
 .../vivid/vivid-vid-common.h                  |   0
 .../vivid/vivid-vid-out.c                     |   0
 .../vivid/vivid-vid-out.h                     |   0
 drivers/media/usb/Kconfig                     |  14 +-
 drivers/media/usb/au0828/Kconfig              |   6 +-
 drivers/media/usb/cx231xx/Kconfig             |   4 +-
 drivers/media/usb/dvb-usb/Kconfig             |   1 +
 drivers/media/usb/pvrusb2/Kconfig             |   4 +-
 drivers/media/usb/tm6000/Kconfig              |   4 +-
 drivers/media/v4l2-core/Kconfig               |  19 +-
 drivers/staging/media/hantro/Kconfig          |   5 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/imx/Kconfig             |   5 +-
 drivers/staging/media/ipu3/Kconfig            |   3 +-
 drivers/staging/media/omap4iss/Kconfig        |   4 +-
 drivers/staging/media/rkisp1/Kconfig          |   4 +-
 drivers/staging/media/rkisp1/Makefile         |   2 +
 drivers/staging/media/sunxi/cedrus/Kconfig    |   5 +-
 122 files changed, 829 insertions(+), 398 deletions(-)
 create mode 100644 drivers/media/pci/ddbridge/ddbridge-dummy-fe.c
 create mode 100644 drivers/media/pci/ddbridge/ddbridge-dummy-fe.h
 create mode 100644 drivers/media/test_drivers/Kconfig
 create mode 100644 drivers/media/test_drivers/Makefile
 rename drivers/media/{platform => test_drivers}/vicodec/Kconfig (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/Makefile (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.c (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.h (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.c (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.h (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/vicodec-core.c (100%)
 rename drivers/media/{platform => test_drivers}/vim2m.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/Kconfig (83%)
 rename drivers/media/{platform => test_drivers}/vimc/Makefile (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-capture.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-common.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-common.h (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-core.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-debayer.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-scaler.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-sensor.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/Kconfig (100%)
 rename drivers/media/{platform => test_drivers}/vivid/Makefile (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-core.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-core.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.h (100%)

-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
