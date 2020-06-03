Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 526241EC9FB
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 949F921515;
	Wed,  3 Jun 2020 07:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFSooD73SXTG; Wed,  3 Jun 2020 07:01:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E865D214E9;
	Wed,  3 Jun 2020 07:01:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB2C1BF9B3
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6855020477
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqfxCcVRCFyV for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EA8D6204C9
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A99420810;
 Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591167665;
 bh=ZpRhtr1qwdn49YQdRddrvCTO/l7i3ButPbzAvxfFfTY=;
 h=From:To:Cc:Subject:Date:From;
 b=lD6BJwreq9+4F2+FyLeh5V+XSR4/BRkzoaCVg0SjsiTSvTHfjotmdM+JeIaK+b5is
 rU7Sq+yqmzkgJCGh7nJBs0uqlp/NPaRcOjutYLYqYqY/1KJNeokkyA69hqTdP46oYb
 gR80WzNUL0Yj8ZWGHOr38a4u5RPq1a4JrtO1e+z0=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgNOZ-004j81-1j; Wed, 03 Jun 2020 09:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 00/15] More atomisp fixes and cleanups
Date: Wed,  3 Jun 2020 09:00:46 +0200
Message-Id: <cover.1591167358.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Most of the code here is meant to make the IRQ handling code clearer,
and the ISP frequency setting (DFS).

There's a fix there at the DFS setting: right now, if the sensor doesn't
provide the number of frames per second, DFS is kept on its minimal
value, with will likely fail. The logic at patch 13 changes it to default
to the maximum value. While this will drain more power, the camera
should be able to work.

Mauro Carvalho Chehab (15):
  media: atomisp: improve IRQ handling debug messages
  media: atomisp: do some cleanup at irq_local.h
  media: atomisp: get rid of a duplicated file
  media: atomisp: get rid of ifdef nonsense
  media: atomisp: simplify IRQ ifdef logic
  media: atomisp: remove some unused defines from *mamoiada_params.h
  media: atomisp: use just one mamoiada_params.h
  media: atomisp: get rid of a detection hack for a BYT Andorid-based
    tablet
  media: atomisp: don't set hpll_freq twice with different values
  media: atomisp: use macros from intel-family.h
  media: atomisp: change the detection of ISP2401 at runtime
  media: atomisp: use different dfs failed messages
  media: atomisp: set DFS to MAX if sensor doesn't report fps
  media: atomisp: use strscpy() instead of less secure variants
  media: atomisp: get rid of a string_support.h abstraction layer

 .../media/atomisp/include/linux/atomisp.h     |   3 -
 .../atomisp/include/linux/atomisp_platform.h  |  21 +-
 .../staging/media/atomisp/pci/atomisp_cmd.c   |  71 +++---
 .../media/atomisp/pci/atomisp_common.h        |   4 -
 .../media/atomisp/pci/atomisp_compat_css20.c  |  14 +-
 .../staging/media/atomisp/pci/atomisp_file.c  |   2 +-
 .../media/atomisp/pci/atomisp_gmin_platform.c |   2 +-
 .../staging/media/atomisp/pci/atomisp_ioctl.c |  46 ++--
 .../media/atomisp/pci/atomisp_subdev.c        |   2 +-
 .../staging/media/atomisp/pci/atomisp_tpg.c   |   2 +-
 .../media/atomisp/pci/atomisp_trace_event.h   |   6 +-
 .../staging/media/atomisp/pci/atomisp_v4l2.c  | 110 +++------
 .../pci/camera/pipe/src/pipe_binarydesc.c     |   4 +-
 .../hrt/isp2400_mamoiada_params.h             | 229 ------------------
 .../pci/hive_isp_css_2401_irq_types_hrt.h     |  69 ------
 .../pci/hive_isp_css_common/host/irq.c        |  29 +--
 .../pci/hive_isp_css_common/host/irq_local.h  |  17 +-
 .../pci/hive_isp_css_common/irq_global.h      |  10 +-
 .../pci/hive_isp_css_common/isp_global.h      |  12 +-
 .../pci/hive_isp_css_common/sp_global.h       |  10 -
 .../hive_isp_css_include/host/irq_public.h    |  16 +-
 .../pci/hive_isp_css_include/string_support.h | 165 -------------
 ...sp_css_irq_types_hrt.h => irq_types_hrt.h} |   0
 .../ctc/ctc_1.0/ia_css_ctc_table.host.c       |   3 +-
 .../kernels/gc/gc_1.0/ia_css_gc_table.host.c  |   3 +-
 .../kernels/gc/gc_2/ia_css_gc2_table.host.c   |   3 +-
 .../xnr/xnr_1.0/ia_css_xnr_table.host.c       |   3 +-
 .../atomisp/pci/isp2400_input_system_local.h  |  15 +-
 .../media/atomisp/pci/isp2400_system_global.h |  31 ---
 .../media/atomisp/pci/isp2400_system_local.h  |   8 -
 .../media/atomisp/pci/isp2401_system_global.h |  31 ---
 .../media/atomisp/pci/isp2401_system_local.h  |   8 -
 ...01_mamoiada_params.h => mamoiada_params.h} |  20 +-
 .../atomisp/pci/runtime/binary/src/binary.c   |   4 +-
 .../pci/runtime/debug/src/ia_css_debug.c      |  65 ++---
 .../pci/runtime/isys/src/virtual_isys.c       |  29 +--
 .../tagger/interface/ia_css_tagger_common.h   |   4 -
 drivers/staging/media/atomisp/pci/sh_css.c    |  50 ++--
 .../media/atomisp/pci/sh_css_firmware.c       |   6 +-
 .../media/atomisp/pci/sh_css_internal.h       |  10 -
 .../staging/media/atomisp/pci/sh_css_mipi.c   |   8 +-
 .../staging/media/atomisp/pci/sh_css_params.c |  22 +-
 drivers/staging/media/atomisp/pci/sh_css_sp.c |   5 +-
 .../media/atomisp/pci/sh_css_version.c        |   5 +-
 44 files changed, 247 insertions(+), 930 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/css_2400_system/hrt/isp2400_mamoiada_params.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_include/string_support.h
 rename drivers/staging/media/atomisp/pci/{css_2400_system/hrt/hive_isp_css_irq_types_hrt.h => irq_types_hrt.h} (100%)
 rename drivers/staging/media/atomisp/pci/{isp2401_mamoiada_params.h => mamoiada_params.h} (91%)

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
