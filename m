Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB9E1E5759
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB3B086F73;
	Thu, 28 May 2020 06:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lCXH-d-V6me4; Thu, 28 May 2020 06:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1618A86F13;
	Thu, 28 May 2020 06:14:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5301BF9B9
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9829186D7B
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GScpJPqLvhq4 for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DFFA586D20
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:25 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94BE22078C;
 Thu, 28 May 2020 06:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646465;
 bh=5SUnx6Cx/3SsU3rxuMAruQ7MwuxBkvNw8KolDqWYV74=;
 h=From:To:Cc:Subject:Date:From;
 b=AR2OIgDo4R3fz2MxnbMorkhIUFNeUUj5ghYp3xoSY8UXw09/A7qARy3PikXKtmkBX
 7znceZzF+dfgUywTsUIZOrpAWWRP2d2J+QN5Tu3hEFIx7zFSVu+YeMkQC87lxAMoSe
 zy+/3DI4lbLaEoOIuOcd+Nm9BjYB9vKXvJ8pe208=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo7-000VH0-IQ; Thu, 28 May 2020 08:14:23 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 00/20] More atomisp fixes and cleanups
Date: Thu, 28 May 2020 08:14:00 +0200
Message-Id: <cover.1590646166.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Most of this series are working at the memory management abstraction.

The last patch contain an important bug fix: the logic which configures 
the hardware pipelines add some "delay frames" that are NULL, causing
the driver to crash when userspace selects a resolution different
than the sensor resolution.

It took me a lot of time debugging it, due to all the weirdness and
abstractions with the mm/ allocation, plus the 4+ abstraction
layers that it takes for the driver to actually do something.

We should try to get rid of at least some of the layers as soon as
possible, as it takes a lot of time to debug certain things with all
those layers.

Mauro Carvalho Chehab (20):
  media: atomisp: simplify hive_isp_css_mm_hrt wrapper
  media: atomisp: get rid of the hrt/hive_isp_css_mm_hrt abstraction
    layer
  media: atomisp: reduce abstraction at ia_css_memory_access
  media: atomisp: go one step further to drop ia_css_memory_access.c
  media: atomisp: get rid of mmgr_load and mmgr_store
  media: atomisp: get rid of unused memory_realloc code
  media: atomisp: change the type returned by mmgr alloc
  media: atomisp: get rid of memory_access.c
  media: atomisp: hmm_bo: untag user pointers
  media: atomisp: add debug message to help debugging hmm code
  media: atomisp: use Yocto Aero default hmm pool sizes
  media: atomisp: get rid of a warning message
  media: atomisp: fix driver caps
  media: atomisp: use pin_user_pages() for memory allocation
  media: atomisp: add debug for hmm alloc
  media: atomisp: improve warning for IRQ enable function
  media: atomisp: add debug functions for received events
  media: atomisp: add more comments about frame allocation
  media: atomisp: remove kvmalloc/kvcalloc abstractions
  media: atomisp: avoid OOPS due to non-existing ref_frames

 drivers/staging/media/atomisp/Makefile        |   8 -
 .../staging/media/atomisp/include/hmm/hmm.h   |   7 +-
 .../media/atomisp/include/hmm/hmm_bo.h        |  11 +-
 .../media/atomisp/include/linux/atomisp.h     |   2 +
 .../staging/media/atomisp/pci/atomisp_acc.c   |  27 ++-
 .../staging/media/atomisp/pci/atomisp_cmd.c   |   2 +-
 .../media/atomisp/pci/atomisp_compat.h        |   2 +-
 .../media/atomisp/pci/atomisp_compat_css20.c  |  19 +-
 .../staging/media/atomisp/pci/atomisp_fops.c  |   3 -
 .../staging/media/atomisp/pci/atomisp_ioctl.c |  48 +----
 .../media/atomisp/pci/atomisp_subdev.c        |   8 +-
 .../staging/media/atomisp/pci/atomisp_v4l2.c  |  30 +--
 .../base/refcount/interface/ia_css_refcount.h |  13 +-
 .../atomisp/pci/base/refcount/src/refcount.c  |  19 +-
 .../pci/hive_isp_css_common/host/debug.c      |  15 +-
 .../hive_isp_css_common/host/debug_private.h  |   9 +-
 .../hive_isp_css_include/host/debug_public.h  |   5 +-
 .../memory_access/memory_access.h             | 174 ------------------
 .../pci/hive_isp_css_include/memory_realloc.h |  38 ----
 .../staging/media/atomisp/pci/hive_types.h    |   3 -
 drivers/staging/media/atomisp/pci/hmm/hmm.c   |  35 +++-
 .../staging/media/atomisp/pci/hmm/hmm_bo.c    | 153 +++------------
 .../atomisp/pci/hrt/hive_isp_css_mm_hrt.c     | 124 -------------
 .../atomisp/pci/hrt/hive_isp_css_mm_hrt.h     |  57 ------
 .../media/atomisp/pci/ia_css_frame_public.h   |   2 +-
 .../media/atomisp/pci/ia_css_memory_access.c  |  85 ---------
 .../staging/media/atomisp/pci/ia_css_pipe.h   |   2 +-
 .../pci/isp/kernels/bh/bh_2/ia_css_bh.host.c  |   1 -
 .../isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c |   5 +-
 .../isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h |   2 +-
 .../raw_aa_binning_1.0/ia_css_raa.host.c      |   1 -
 .../isp/kernels/ref/ref_1.0/ia_css_ref.host.c |  13 +-
 .../kernels/ref/ref_1.0/ia_css_ref_param.h    |   4 +-
 .../kernels/sdis/sdis_1.0/ia_css_sdis.host.c  |  13 +-
 .../kernels/sdis/sdis_2/ia_css_sdis2.host.c   |   9 +-
 .../kernels/tnr/tnr_1.0/ia_css_tnr_param.h    |   2 +-
 .../media/atomisp/pci/memory_realloc.c        |  81 --------
 .../media/atomisp/pci/mmu/sh_mmu_mrfld.c      |   1 -
 .../atomisp/pci/runtime/binary/src/binary.c   |   8 +-
 .../pci/runtime/debug/src/ia_css_debug.c      |   5 +-
 .../atomisp/pci/runtime/event/src/event.c     |   1 -
 .../frame/interface/ia_css_frame_comm.h       |   4 +-
 .../atomisp/pci/runtime/frame/src/frame.c     |  38 ++--
 .../isp_param/interface/ia_css_isp_param.h    |   2 +-
 .../pci/runtime/isp_param/src/isp_param.c     |  15 +-
 .../pci/runtime/pipeline/src/pipeline.c       |   5 +-
 .../pci/runtime/queue/src/queue_access.c      |  11 +-
 .../runtime/rmgr/interface/ia_css_rmgr_vbuf.h |   3 +-
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  |   6 +-
 .../runtime/spctrl/interface/ia_css_spctrl.h  |   2 +-
 .../atomisp/pci/runtime/spctrl/src/spctrl.c   |  17 +-
 drivers/staging/media/atomisp/pci/sh_css.c    |  52 ++----
 .../media/atomisp/pci/sh_css_firmware.c       |   9 +-
 .../media/atomisp/pci/sh_css_firmware.h       |   2 +-
 .../media/atomisp/pci/sh_css_host_data.c      |   2 +-
 .../media/atomisp/pci/sh_css_internal.h       |  76 ++++----
 .../media/atomisp/pci/sh_css_metrics.c        |   9 +-
 .../staging/media/atomisp/pci/sh_css_mmu.c    |   1 -
 .../media/atomisp/pci/sh_css_param_dvs.c      |  21 +--
 .../media/atomisp/pci/sh_css_param_shading.c  |   3 +-
 .../staging/media/atomisp/pci/sh_css_params.c | 161 ++++++++--------
 .../staging/media/atomisp/pci/sh_css_params.h |  12 +-
 drivers/staging/media/atomisp/pci/sh_css_sp.c |  18 +-
 .../staging/media/atomisp/pci/sh_css_struct.h |   2 +-
 64 files changed, 437 insertions(+), 1081 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_access/memory_access.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_realloc.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.c
 delete mode 100644 drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.h
 delete mode 100644 drivers/staging/media/atomisp/pci/ia_css_memory_access.c
 delete mode 100644 drivers/staging/media/atomisp/pci/memory_realloc.c

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
