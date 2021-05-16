Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25908381E4C
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 464D240413;
	Sun, 16 May 2021 10:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lHPab8smkAz; Sun, 16 May 2021 10:54:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75D78403CB;
	Sun, 16 May 2021 10:54:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3591BF97D
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E6314021C
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d3-A2loSz4vo for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B04BF40131
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D6C5F611B0;
 Sun, 16 May 2021 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=o26owUkPzbznUNvf/j3gzXChdDLd5dBQkyI4OqYODuI=;
 h=From:To:Cc:Subject:Date:From;
 b=QFHKbB86hlLT6YE/Y5p2Xq6owAKd3NAKrqIxLKOeio5VQLDOtyRcjooYAVbZ8VEvy
 Hpcmj0GU5Vor56djP1oyKIrL622tkwCKQ56UOH2BCzq/aMeavv7uMNdkTaI+UG1vHl
 O4wZl8v2wNjzbOoMRclbQ5GozJrfm+qslbRw9VDAR/5aisGNQGt2mSbCNLtscqsaCm
 w2Z64kzMVZLuPz/x72wfGqzDd+gqMa5YOJZ6L+38vdG2NZqIZMvnpbnzKJRU6G6XKC
 WNGuXcLtqWi7chr/AAPBDKjlLvwRlMT5s4D26XS2nOCmBXKZGyW+L+kobDu7tmE0WT
 /30wQz7LGUojQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP8-003s7x-J9; Sun, 16 May 2021 12:53:50 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/17] Add an experimental driver for Intel NUC leds
Date: Sun, 16 May 2021 12:53:28 +0200
Message-Id: <cover.1621161037.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

This series add support for the LEDs found at Intel NUCs since
NUC version 6.

On several NUC models, the function of the LEDs are programmable,
which allow them to indicate several different hardware events.

They can even be programmed to represent an userspace-driven event.

Some models come with single colored or dual-colored LEDs, but
high end models have RGB LEDs.

Programming them can ether be done via BIOS or by the OS.

There are 3 different API types, and there is already some OOT
drivers that were written to support them, using procfs, each
one using a different (and IMO confusing) API.

After looking at the existing drivers and not liking the uAPI
interfaces there, I opted to write a new driver from scratch,
unifying support for all different versions and using sysfs
via the leds class.

It should be noticed that those devices use the Windows Management
Interface (WMI). There are actually 3 different implementations for it:

- one for NUC6/NUC7, which has limited support for programming just
  two LEDs;
- a complely re-written interface for NUC8, which can program up to
  seven LEDs, named version 0.64;
- an extended version of the NUC8 API, added for NUC10, called version 
  1.0, with has a few differences from version 0.64.

Such WMI APIs are documented at:
  - https://www.intel.com/content/www/us/en/support/articles/000023426/intel-nuc/intel-nuc-kits.html
  - https://raw.githubusercontent.com/nomego/intel_nuc_led/master/specs/INTEL_WMI_LED_0.64.pdf
  - https://www.intel.com/content/dam/support/us/en/documents/intel-nuc/WMI-Spec-Intel-NUC-NUC10ixFNx.pdf

I wrote this driver mainly for my NUC8 (NUC8i7HNK), but I used a NUC6
in order to double-check if NUC6 support was not crashing.  Yet, while
the NUC6 model I have accepts the WMI LED API, it doesn't work, as it
seems that the BIOS of my NUC6 doesn't let userspace to program the LEDs.

I don't have any devices using NUC10 API.

Due to the lack of full tests on NUC6 and NUC10, and because I
wrote a new uAPI that's different than the procfs-based ones found
at the OOT drivers, I'm opting to submit this first to staging.

This should allow adjusting the uAPI if needed, and to get feedback from
people using it on NUC6, NUC10 and on other NUC models that would be
compatible with it.

Mauro Carvalho Chehab (17):
  staging: add support for NUC WMI LEDs
  staging: nuc-wmi: detect WMI API detection
  staging: nuc-wmi: add support for changing S0 brightness
  staging: nuc-wmi: add all types of brightness
  staging: nuc-wmi: allow changing the LED colors
  staging: nuc-wmi: add support for WMI API version 1.0
  staging: nuc-wmi: add basic support for NUC6 WMI
  staging: muc-wmi: add brightness and color for NUC6 API
  staging: nuc-wmi: Add support to blink behavior for NUC8/10
  staging: nuc-wmi: get rid of an unused variable
  staging: nuc-wmi: implement blink control for NUC6
  staging: nuc-wmi: better detect NUC6/NUC7 devices
  staging: nuc-led: add support for HDD activity default
  staging: nuc-wmi: fix software blink behavior logic
  staging: nuc-wmi: add support for changing the ethernet type indicator
  staging: nuc-wmi: add support for changing the power limit scheme
  staging: nuc-led: update the TODOs

 MAINTAINERS                       |    6 +
 drivers/staging/Kconfig           |    2 +
 drivers/staging/Makefile          |    1 +
 drivers/staging/nuc-led/Kconfig   |   11 +
 drivers/staging/nuc-led/Makefile  |    3 +
 drivers/staging/nuc-led/TODO      |    8 +
 drivers/staging/nuc-led/nuc-wmi.c | 2100 +++++++++++++++++++++++++++++
 7 files changed, 2131 insertions(+)
 create mode 100644 drivers/staging/nuc-led/Kconfig
 create mode 100644 drivers/staging/nuc-led/Makefile
 create mode 100644 drivers/staging/nuc-led/TODO
 create mode 100644 drivers/staging/nuc-led/nuc-wmi.c

-- 
2.31.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
