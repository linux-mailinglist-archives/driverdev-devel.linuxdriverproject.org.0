Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72726279147
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B3F68764E;
	Fri, 25 Sep 2020 19:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1qyndkcrWFK; Fri, 25 Sep 2020 19:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8765B87625;
	Fri, 25 Sep 2020 19:02:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAAF21BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A769A86D2E
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VFx0Xg8nlDXM for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8EA786D22
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:02:07 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id x69so3836393oia.8
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=YOENFyQOD9R10SzJS7OPPO2Yo0ajdZ/LL2b6t2F3g8g=;
 b=xxZ4XJxDSH/vaBAwM6FqFTOLWtBHtcBqRvOCRYfcmkdS4j+waJI3OGp/Dl0JUkhhjY
 yBOoCV177nMlDVI661q/pYE/hEhzN8F+85XfSnStIugsyITFzNqGXndWpfXP6EHCkxLS
 samtReMN6dfufYnVaTSjsOrtclaK+XqVfk/V3hnhPxelQ6OuNQNSNCeu+maOIKISzcB5
 Ik5mcEc2R8AthmpBeciizgvUhx9vAf3bEkmiCid2vEL3IeivRrsPcay1H8bm55NVjXaZ
 WH2w9q4fQ3nK++q1DXPQzp32WybUXrNSDhn2UrOqN+sGOhrBCvKdprXf1YvlNsLgwaD1
 NptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YOENFyQOD9R10SzJS7OPPO2Yo0ajdZ/LL2b6t2F3g8g=;
 b=G/x6vDvOAfUAWFyEE89XBJgHTIdtxDCfKp9Bk2HDNVB4X7JUaLXmi4N73rrHmBXXF9
 bV9PqfJKIHD/gAzOiEeu0g+wSPktLwwNfd7S1atkBeKIijIDNp1xc7dbPMGcquIddksb
 Q2TpzzoZzHCQ3H0DI4/a0r0auEXDbZK7IS1R992A2tK9//BO+B0zk4GiomkJzByLTf7k
 YsHd/txvWVLMG23CmUeeZvM+djtDEBj17yJYLFJ1hZfhfujU8HxFv2CQcOGUtimyQFAO
 fQdU3ngIizbqwR3/okYcto8CAOJ1Cqnzimpr8Nm7MxRjm2DpYixUBH7BFC3pN8LHRlPW
 qtSg==
X-Gm-Message-State: AOAM5335rS0etsZBTBD6jr/JWAwLQZ7oCwrHVJFYGLD1NThRgxNvuJaZ
 YsGy/jjFhUZadqTsW+rl7JGYeqrSp9+5BQ==
X-Google-Smtp-Source: ABdhPJzlrCgIsbK7QqEiN4fPrnEFDFyIYIzrLEx8bdXVOVjRCkFUL3CCuixez7tiLjDpxi618QYtmA==
X-Received: by 2002:a17:90a:ae12:: with SMTP id
 t18mr818297pjq.147.1601058675384; 
 Fri, 25 Sep 2020 11:31:15 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.31.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:31:14 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 00/47] staging: media: bring back zoran driver
Date: Fri, 25 Sep 2020 18:30:10 +0000
Message-Id: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
and is such a hack (a copy of some private ffmpeg structure) that it is
unfixable.
Happily, when I started to work on zoran, a patch was posted on ffmpeg
ML which permit it to output non-raw video stream (and so MJPEG for
zoran case).
But the zoran hw does not like some part of JPEG header it receives, so
a filter need to be written.
Anyway, this disabling is not a regression, since this feature was not
usable since a long time.

Since the driver was in staging, I targeted staging, but probably the
driver is in a sufficient good shape to target media and bypass staging.

This driver is tested on a DC10+ (on x86). Tests on different hardware
are welcome.

I would like to thanks all people that helped me to achieve this (mostly
#v4l)

Regards

PS: this serie is resent a bit soon since linux-media didnt get some patch
and cover letter

Changes since RFC1
- removed fallthough patch
- removed unsplit lines patch
- fixed line size in "Use DMA coherent for stat_com" patch

Corentin Labbe (47):
  staging: media: Revert "media: zoran: remove deprecated driver"
  MAINTAINERS: change maintainer of the zoran driver
  staging: media: zoran: datasheet is no longer available from zoran.com
  staging: media: zoran: Documentation: fix typo
  staging: media: zoran: fix checkpatch issue
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
 drivers/staging/media/zoran/zoran_card.c   | 1333 ++++++++++++++++++++
 drivers/staging/media/zoran/zoran_card.h   |   30 +
 drivers/staging/media/zoran/zoran_device.c | 1013 +++++++++++++++
 drivers/staging/media/zoran/zoran_device.h |   64 +
 drivers/staging/media/zoran/zoran_driver.c | 1038 +++++++++++++++
 drivers/staging/media/zoran/zr36016.c      |  433 +++++++
 drivers/staging/media/zoran/zr36016.h      |   92 ++
 drivers/staging/media/zoran/zr36050.c      |  842 +++++++++++++
 drivers/staging/media/zoran/zr36050.h      |  163 +++
 drivers/staging/media/zoran/zr36057.h      |  154 +++
 drivers/staging/media/zoran/zr36060.c      |  872 +++++++++++++
 drivers/staging/media/zoran/zr36060.h      |  201 +++
 22 files changed, 7883 insertions(+)
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
