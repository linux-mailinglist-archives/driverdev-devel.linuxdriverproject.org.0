Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3174A272015
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B558C85F92;
	Mon, 21 Sep 2020 10:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 208NTgf5haqh; Mon, 21 Sep 2020 10:20:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6330685F45;
	Mon, 21 Sep 2020 10:20:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC041BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 11A63871CA
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8RAirgihfVW for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A406871C6
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:33 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id e16so12142669wrm.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=P114LNEQNNS9Xncao7G55/+Y79iVyKDqvr9Jcf50RWg=;
 b=Ge816K6xH8yGoe0zeqBNbGeD8dUcZqlLPClrIpQEx/9buJqnSewe3lxgGeilETM7T1
 LLGeTdIXCcaEtNz9XuDZxgvB3OMVGocgQMMJaAiHvIur9lRuRHexce5FQzsYBhfboKwd
 zmOHKRdmXIqaIUw0DfFtTmLkezmlmFsv5ta4pK9rqFzjcFwm98A2B5wJLPt+Sfg+KDsY
 AOmthdyfN4R0lGZEvG//XlXFhzoleYoFEn1EAdk9W3zyoY5JzhUVMZAPwDKpImpOnaA8
 xyeyjIOMWwEd9bhettsZ9az/xfBRdPNDMysyGV2sz+0V4A8imGy07FoQXthnXOJmkcJD
 RA+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=P114LNEQNNS9Xncao7G55/+Y79iVyKDqvr9Jcf50RWg=;
 b=Rklbf3VMJ8DoWSR3BRV3YQ5AUvKM1IqSJyFJDgy19LKYQik3cf9HYqgq7p3EN+Gjx4
 4wtkc4INY+OH6fHZqn9+Qh5J80FtDInFPcKt32M3jOqRU9W69eJUfOtMpTp8QJdcFX2/
 BRz7SvoIwpHLN1j3peCHcrAELtFV8hXFxK/ieIJ12G3pCFcm0bIuJSZ8z2+fiZRyVTB2
 JKq3Lj/VP4gPVeQANsmGQXf3+D896Qu+00892YH5lpNCHylpZcudnMvZsUbEhjcriJIJ
 h+Fi2BF8+dzO0OK6BoH31EQbDPMl1QehHJw7B3plXHfsoNAxeXzbAcdIq67OvMmCTkrA
 OVzg==
X-Gm-Message-State: AOAM5318MqPfhtWeDSL5g+TivmTx0vexA4/gzr70HvcyCHB+o2DUvgkw
 UyRSl++uZ/iyMKPxKuVGMfIixw==
X-Google-Smtp-Source: ABdhPJx3U+75iHspfhNxbPS5+Qo2TcAZCebOPLwZNmi52sDHPeD7v6uBea1FXv9SOWNpYLwsJ7mUDw==
X-Received: by 2002:a5d:568d:: with SMTP id f13mr50607391wrv.303.1600683631278; 
 Mon, 21 Sep 2020 03:20:31 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 00/49] staging: media: bring back zoran driver
Date: Mon, 21 Sep 2020 10:19:35 +0000
Message-Id: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

The zoran driver was removed in 5.3
The main reason of the removing was lack of motivation to convert it to
VB2
Since I need it, I worked on bringing it back.

So the plan to achieve it was:
- clean up the coding style.
- convert old usage/API
- clean unused code
- convert to VB2

I have tried to split a bit the VB2 patch (by adding/removing code in
another patch), but the result is unfortunately still a big patch.

The result of this serie is a working zoran driver.
Furthermore it is now compliant to v4l-compliance.

In the process some old (useless) feature (fbuf, overlay) was removed
for simplifying maintenance.

The zoran hardware support MJPEG decompression, but this feature is
temporarily disabled by this serie.
But basically, this feature was unusable, since the only tool which
permitted to use it was a mplayer option.
But this mplayer option no longer compile (probably since a long time)
and is such a hack (a copy of some private ffmpeg structure) that it is unfixable.
Happily, when I started to work on zoran, a patch was posted on ffmpeg
ML which permit it to output non-raw video stream (and so MJPEG for zoran case).
But the zoran hw does not like some part of JPEG header it receives, so
a filter need to be written.
Anyway, this disabling is not a regression, since this feature was not
usable since a long time.

Since the driver was in staging, I targeted staging, but probably the
driver is in a sufficient good shape to target media and bypass staging.

This driver is tested on a DC10+ (on x86). Tests on different hardware
are welcome.

I would like to thanks all people that helped me to achieve this (mostly #v4l)

Regards

Corentin Labbe (49):
  staging: media: Revert "media: zoran: remove deprecated driver"
  MAINTAINERS: change maintainer of the zoran driver
  staging: media: zoran: datasheet is no longer available from zoran.com
  staging: media: zoran: Documentation: fix typo
  staging: media: zoran: fix checkpatch issue
  staging: media: zoran: unsplit lines
  staging: media: zoran: do not forward declare zr36057_init_vfe
  staging: media: zoran: convert all error dprintk to pci_err/pr_err
  staging: media: zoran: convert dprintk warn
  staging: media: zoran: convert dprintk info to pci_info
  staging: media: zoran: convert dprintk debug
  staging: media: zoran: zoran_device.c: convert pr_x to pci_x
  staging: media: zoran: remove proc_fs
  staging: media: zoran: use VFL_TYPE_VIDEO
  staging: media: zoran: use v4l2_buffer_set_timestamp
  staging: media: zoran: do not print random guest 0
  staging: media: zoran: move buffer_size out of zoran_fh
  staging: media: zoran: move v4l_settings out of zoran_fh
  staging: media: zoran: move jpg_settings out of zoran_fh
  staging: media: zoran: move overlay_settings out of zoran_fh
  staging: media: zoran: Use video_drvdata to get struct zoran
  staging: media: zoran: Change zoran_v4l_set_format parameter from
    zoran_fh to zoran
  staging: media: zoran: remove overlay
  staging: media: zoran: Use DMA coherent for stat_com
  staging: media: zoran: use ZR_NORM
  staging: media: zoran: zoran does not support STD_ALL
  staging: media: zoran: convert irq to pci irq
  staging: media: zoran: convert zoran alloc to devm
  staging: media: zoran: convert mdelay to udelay
  staging: media: zoran: use devm for videocodec_master alloc
  staging: media: zoran: use pci_request_regions
  staging: media: zoran: use devm_ioremap
  staging: media: zoran: add stat_com buffer
  staging: media: zoran: constify struct tvnorm
  staging: media: zoran: constify codec_name
  staging: media: zoran: Add more check for compliance
  staging: media: zoran: add fallthrough keyword
  staging: media: zoran: Add vb_queue
  staging: media: zoran: disable output
  staging: media: zoran: device support only 32bit DMA address
  staging: media: zoran: enable makefile
  staging: media: zoran: remove framebuffer support
  staging: media: zoran: add vidioc_g_parm
  staging: media: zoran: remove test_interrupts
  staging: media: zoran: fix use of buffer_size and sizeimage
  staging: media: zoran: fix some compliance test
  staging: media: zoran: remove deprecated .vidioc_g_jpegcomp
  staging: media: zoran: convert to vb2
  staging: media: zoran: update TODO

 Documentation/media/v4l-drivers/zoran.rst  |  575 +++++++++
 MAINTAINERS                                |   10 +
 drivers/staging/media/Kconfig              |    2 +
 drivers/staging/media/Makefile             |    1 +
 drivers/staging/media/zoran/Kconfig        |   76 ++
 drivers/staging/media/zoran/Makefile       |    7 +
 drivers/staging/media/zoran/TODO           |   19 +
 drivers/staging/media/zoran/videocodec.c   |  330 +++++
 drivers/staging/media/zoran/videocodec.h   |  308 +++++
 drivers/staging/media/zoran/zoran.h        |  320 +++++
 drivers/staging/media/zoran/zoran_card.c   | 1320 ++++++++++++++++++++
 drivers/staging/media/zoran/zoran_card.h   |   30 +
 drivers/staging/media/zoran/zoran_device.c | 1002 +++++++++++++++
 drivers/staging/media/zoran/zoran_device.h |   64 +
 drivers/staging/media/zoran/zoran_driver.c | 1022 +++++++++++++++
 drivers/staging/media/zoran/zr36016.c      |  433 +++++++
 drivers/staging/media/zoran/zr36016.h      |   92 ++
 drivers/staging/media/zoran/zr36050.c      |  842 +++++++++++++
 drivers/staging/media/zoran/zr36050.h      |  163 +++
 drivers/staging/media/zoran/zr36057.h      |  154 +++
 drivers/staging/media/zoran/zr36060.c      |  872 +++++++++++++
 drivers/staging/media/zoran/zr36060.h      |  201 +++
 22 files changed, 7843 insertions(+)
 create mode 100644 Documentation/media/v4l-drivers/zoran.rst
 create mode 100644 drivers/staging/media/zoran/Kconfig
 create mode 100644 drivers/staging/media/zoran/Makefile
 create mode 100644 drivers/staging/media/zoran/TODO
 create mode 100644 drivers/staging/media/zoran/videocodec.c
 create mode 100644 drivers/staging/media/zoran/videocodec.h
 create mode 100644 drivers/staging/media/zoran/zoran.h
 create mode 100644 drivers/staging/media/zoran/zoran_card.c
 create mode 100644 drivers/staging/media/zoran/zoran_card.h
 create mode 100644 drivers/staging/media/zoran/zoran_device.c
 create mode 100644 drivers/staging/media/zoran/zoran_device.h
 create mode 100644 drivers/staging/media/zoran/zoran_driver.c
 create mode 100644 drivers/staging/media/zoran/zr36016.c
 create mode 100644 drivers/staging/media/zoran/zr36016.h
 create mode 100644 drivers/staging/media/zoran/zr36050.c
 create mode 100644 drivers/staging/media/zoran/zr36050.h
 create mode 100644 drivers/staging/media/zoran/zr36057.h
 create mode 100644 drivers/staging/media/zoran/zr36060.c
 create mode 100644 drivers/staging/media/zoran/zr36060.h

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
