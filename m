Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F291E8ECF
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 09:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6183E89453;
	Sat, 30 May 2020 07:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cwOgshylyV3R; Sat, 30 May 2020 07:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20D34893CB;
	Sat, 30 May 2020 07:05:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B839B1BF282
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 07:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5C9E875DF
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 07:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAwOZlx_mYiw for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 07:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D4B7875F5
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 07:05:14 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDC5822210;
 Sat, 30 May 2020 06:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821766;
 bh=BQKoquk7hsw6gf/gulY29qAk0D1VsR2dAZYyEnySrgk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Mh7zGCYWcpWSAV4axrE/v6Zf/NkaJn4jKDJ0KX4/qwjr46DmJxdWgl5ldpgKeIDCZ
 jUi+UW8BSB8CXRFh7PSgAGl8bKYxrjNqzmPtZg93pFt2jbR2CLc5XRtrJn0Rl6LEYF
 jcgtxfL7PshBC3wkA3x+N2Jmy3YK65EYLYVBA1zI=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPW-001hrN-Hk; Sat, 30 May 2020 08:56:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 41/41] media: atomisp: add SPDX headers
Date: Sat, 30 May 2020 08:55:58 +0200
Message-Id: <b0fa52f2e5a10e2e0037fefb6029399997cd7fc2.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is licensed under GPL 2.0, as stated inside their
headers.

Add the proper tag there. We should probably latter cleanup
the reduntant licensing text, but this could be done later,
after we get rid of other abstraction layers.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Kconfig                            | 1 +
 drivers/staging/media/atomisp/Makefile                           | 1 +
 drivers/staging/media/atomisp/i2c/Kconfig                        | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c               | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-gc2235.c               | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-libmsrlisthelper.c     | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c               | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c              | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-ov2680.c               | 1 +
 drivers/staging/media/atomisp/i2c/atomisp-ov2722.c               | 1 +
 drivers/staging/media/atomisp/i2c/gc0310.h                       | 1 +
 drivers/staging/media/atomisp/i2c/gc2235.h                       | 1 +
 drivers/staging/media/atomisp/i2c/mt9m114.h                      | 1 +
 drivers/staging/media/atomisp/i2c/ov2680.h                       | 1 +
 drivers/staging/media/atomisp/i2c/ov2722.h                       | 1 +
 drivers/staging/media/atomisp/i2c/ov5693/Kconfig                 | 1 +
 drivers/staging/media/atomisp/i2c/ov5693/ad5823.h                | 1 +
 drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c        | 1 +
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.h                | 1 +
 drivers/staging/media/atomisp/include/hmm/hmm.h                  | 1 +
 drivers/staging/media/atomisp/include/hmm/hmm_bo.h               | 1 +
 drivers/staging/media/atomisp/include/hmm/hmm_common.h           | 1 +
 drivers/staging/media/atomisp/include/hmm/hmm_pool.h             | 1 +
 drivers/staging/media/atomisp/include/linux/atomisp.h            | 1 +
 .../staging/media/atomisp/include/linux/atomisp_gmin_platform.h  | 1 +
 drivers/staging/media/atomisp/include/linux/atomisp_platform.h   | 1 +
 drivers/staging/media/atomisp/include/linux/libmsrlisthelper.h   | 1 +
 drivers/staging/media/atomisp/include/media/lm3554.h             | 1 +
 drivers/staging/media/atomisp/include/mmu/isp_mmu.h              | 1 +
 drivers/staging/media/atomisp/include/mmu/sh_mmu_mrfld.h         | 1 +
 drivers/staging/media/atomisp/pci/atomisp-regs.h                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_acc.c                  | 1 +
 drivers/staging/media/atomisp/pci/atomisp_acc.h                  | 1 +
 drivers/staging/media/atomisp/pci/atomisp_cmd.c                  | 1 +
 drivers/staging/media/atomisp/pci/atomisp_cmd.h                  | 1 +
 drivers/staging/media/atomisp/pci/atomisp_common.h               | 1 +
 drivers/staging/media/atomisp/pci/atomisp_compat.h               | 1 +
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c         | 1 +
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.h         | 1 +
 drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c       | 1 +
 drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.h       | 1 +
 drivers/staging/media/atomisp/pci/atomisp_csi2.c                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_csi2.h                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_dfs_tables.h           | 1 +
 drivers/staging/media/atomisp/pci/atomisp_drvfs.c                | 1 +
 drivers/staging/media/atomisp/pci/atomisp_drvfs.h                | 1 +
 drivers/staging/media/atomisp/pci/atomisp_file.c                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_file.h                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_fops.c                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_fops.h                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c        | 1 +
 drivers/staging/media/atomisp/pci/atomisp_helper.h               | 1 +
 drivers/staging/media/atomisp/pci/atomisp_internal.h             | 1 +
 drivers/staging/media/atomisp/pci/atomisp_ioctl.c                | 1 +
 drivers/staging/media/atomisp/pci/atomisp_ioctl.h                | 1 +
 drivers/staging/media/atomisp/pci/atomisp_subdev.c               | 1 +
 drivers/staging/media/atomisp/pci/atomisp_subdev.h               | 1 +
 drivers/staging/media/atomisp/pci/atomisp_tables.h               | 1 +
 drivers/staging/media/atomisp/pci/atomisp_tpg.c                  | 1 +
 drivers/staging/media/atomisp/pci/atomisp_tpg.h                  | 1 +
 drivers/staging/media/atomisp/pci/atomisp_trace_event.h          | 1 +
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c                 | 1 +
 drivers/staging/media/atomisp/pci/atomisp_v4l2.h                 | 1 +
 .../media/atomisp/pci/base/circbuf/interface/ia_css_circbuf.h    | 1 +
 .../atomisp/pci/base/circbuf/interface/ia_css_circbuf_comm.h     | 1 +
 .../atomisp/pci/base/circbuf/interface/ia_css_circbuf_desc.h     | 1 +
 drivers/staging/media/atomisp/pci/base/circbuf/src/circbuf.c     | 1 +
 .../media/atomisp/pci/base/refcount/interface/ia_css_refcount.h  | 1 +
 drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c   | 1 +
 drivers/staging/media/atomisp/pci/bits.h                         | 1 +
 .../atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h   | 1 +
 .../atomisp/pci/camera/pipe/interface/ia_css_pipe_stagedesc.h    | 1 +
 .../media/atomisp/pci/camera/pipe/interface/ia_css_pipe_util.h   | 1 +
 .../staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c  | 1 +
 .../staging/media/atomisp/pci/camera/pipe/src/pipe_stagedesc.c   | 1 +
 drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_util.c    | 1 +
 .../media/atomisp/pci/camera/util/interface/ia_css_util.h        | 1 +
 drivers/staging/media/atomisp/pci/camera/util/src/util.c         | 1 +
 drivers/staging/media/atomisp/pci/cell_params.h                  | 1 +
 .../media/atomisp/pci/css_2400_system/hive/ia_css_isp_configs.c  | 1 +
 .../media/atomisp/pci/css_2400_system/hive/ia_css_isp_params.c   | 1 +
 .../media/atomisp/pci/css_2400_system/hive/ia_css_isp_states.c   | 1 +
 .../atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h | 1 +
 .../atomisp/pci/css_2400_system/hrt/isp2400_mamoiada_params.h    | 1 +
 .../staging/media/atomisp/pci/css_2401_system/csi_rx_global.h    | 1 +
 .../media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c  | 1 +
 .../media/atomisp/pci/css_2401_system/hive/ia_css_isp_params.c   | 1 +
 .../media/atomisp/pci/css_2401_system/hive/ia_css_isp_states.c   | 1 +
 drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c  | 1 +
 .../media/atomisp/pci/css_2401_system/host/csi_rx_local.h        | 1 +
 .../media/atomisp/pci/css_2401_system/host/csi_rx_private.h      | 1 +
 .../staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c   | 1 +
 .../media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h     | 1 +
 .../media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h   | 1 +
 .../staging/media/atomisp/pci/css_2401_system/host/isys_dma.c    | 1 +
 .../media/atomisp/pci/css_2401_system/host/isys_dma_local.h      | 1 +
 .../media/atomisp/pci/css_2401_system/host/isys_dma_private.h    | 1 +
 .../staging/media/atomisp/pci/css_2401_system/host/isys_irq.c    | 1 +
 .../media/atomisp/pci/css_2401_system/host/isys_irq_local.h      | 1 +
 .../media/atomisp/pci/css_2401_system/host/isys_irq_private.h    | 1 +
 .../media/atomisp/pci/css_2401_system/host/isys_stream2mmio.c    | 1 +
 .../atomisp/pci/css_2401_system/host/isys_stream2mmio_local.h    | 1 +
 .../atomisp/pci/css_2401_system/host/isys_stream2mmio_private.h  | 1 +
 .../media/atomisp/pci/css_2401_system/host/pixelgen_local.h      | 1 +
 .../media/atomisp/pci/css_2401_system/host/pixelgen_private.h    | 1 +
 .../atomisp/pci/css_2401_system/hrt/PixelGen_SysBlock_defs.h     | 1 +
 .../media/atomisp/pci/css_2401_system/hrt/ibuf_cntrl_defs.h      | 1 +
 .../atomisp/pci/css_2401_system/hrt/mipi_backend_common_defs.h   | 1 +
 .../media/atomisp/pci/css_2401_system/hrt/mipi_backend_defs.h    | 1 +
 .../staging/media/atomisp/pci/css_2401_system/hrt/rx_csi_defs.h  | 1 +
 .../media/atomisp/pci/css_2401_system/hrt/stream2mmio_defs.h     | 1 +
 .../staging/media/atomisp/pci/css_2401_system/ibuf_ctrl_global.h | 1 +
 .../staging/media/atomisp/pci/css_2401_system/isys_dma_global.h  | 1 +
 .../staging/media/atomisp/pci/css_2401_system/isys_irq_global.h  | 1 +
 .../media/atomisp/pci/css_2401_system/isys_stream2mmio_global.h  | 1 +
 .../staging/media/atomisp/pci/css_2401_system/pixelgen_global.h  | 1 +
 .../staging/media/atomisp/pci/css_receiver_2400_common_defs.h    | 1 +
 drivers/staging/media/atomisp/pci/css_receiver_2400_defs.h       | 1 +
 drivers/staging/media/atomisp/pci/css_trace.h                    | 1 +
 drivers/staging/media/atomisp/pci/defs.h                         | 1 +
 drivers/staging/media/atomisp/pci/dma_v2_defs.h                  | 1 +
 drivers/staging/media/atomisp/pci/gdc_v2_defs.h                  | 1 +
 drivers/staging/media/atomisp/pci/gp_timer_defs.h                | 1 +
 drivers/staging/media/atomisp/pci/gpio_block_defs.h              | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h  | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/debug_global.h | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/dma_global.h   | 1 +
 .../media/atomisp/pci/hive_isp_css_common/event_fifo_global.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/fifo_monitor_global.h  | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/gdc_global.h   | 1 +
 .../media/atomisp/pci/hive_isp_css_common/gp_device_global.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_common/gp_timer_global.h      | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/gpio_global.h  | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/hmem_global.h  | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/host/debug.c   | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/debug_local.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/debug_private.h   | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma.c | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/dma_local.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/dma_private.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/event_fifo.c      | 1 +
 .../atomisp/pci/hive_isp_css_common/host/event_fifo_local.h      | 1 +
 .../atomisp/pci/hive_isp_css_common/host/event_fifo_private.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/fifo_monitor.c    | 1 +
 .../atomisp/pci/hive_isp_css_common/host/fifo_monitor_local.h    | 1 +
 .../atomisp/pci/hive_isp_css_common/host/fifo_monitor_private.h  | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc.c | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gdc_local.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gdc_private.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gp_device.c       | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gp_device_local.h | 1 +
 .../atomisp/pci/hive_isp_css_common/host/gp_device_private.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gp_timer.c        | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gp_timer_local.h  | 1 +
 .../atomisp/pci/hive_isp_css_common/host/gp_timer_private.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gpio_local.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/gpio_private.h    | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/host/hmem.c    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/hmem_local.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/hmem_private.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/input_formatter.c | 1 +
 .../atomisp/pci/hive_isp_css_common/host/input_formatter_local.h | 1 +
 .../pci/hive_isp_css_common/host/input_formatter_private.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/input_system.c    | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq.c | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/irq_local.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/irq_private.h     | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp.c | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/isp_local.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/isp_private.h     | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu.c | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/mmu_local.h       | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp.c  | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/sp_local.h        | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/sp_private.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/timed_ctrl.c      | 1 +
 .../atomisp/pci/hive_isp_css_common/host/timed_ctrl_local.h      | 1 +
 .../atomisp/pci/hive_isp_css_common/host/timed_ctrl_private.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/vamem_local.h     | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/host/vmem.c    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/vmem_local.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_common/host/vmem_private.h    | 1 +
 .../atomisp/pci/hive_isp_css_common/input_formatter_global.h     | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/irq_global.h   | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/isp_global.h   | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/mmu_global.h   | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/sp_global.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_common/timed_ctrl_global.h    | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/vamem_global.h | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_common/vmem_global.h  | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_defs.h            | 1 +
 .../media/atomisp/pci/hive_isp_css_include/assert_support.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/bitop_support.h       | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/csi_rx.h  | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/debug.h   | 1 +
 .../pci/hive_isp_css_include/device_access/device_access.h       | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/dma.h     | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/event_fifo.h  | 1 +
 .../media/atomisp/pci/hive_isp_css_include/fifo_monitor.h        | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/gdc_device.h  | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/gp_device.h   | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/gp_timer.h    | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/gpio.h    | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/hmem.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/csi_rx_public.h  | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/debug_public.h   | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/dma_public.h     | 1 +
 .../atomisp/pci/hive_isp_css_include/host/event_fifo_public.h    | 1 +
 .../atomisp/pci/hive_isp_css_include/host/fifo_monitor_public.h  | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/gdc_public.h     | 1 +
 .../atomisp/pci/hive_isp_css_include/host/gp_device_public.h     | 1 +
 .../atomisp/pci/hive_isp_css_include/host/gp_timer_public.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/gpio_public.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/hmem_public.h    | 1 +
 .../atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h     | 1 +
 .../pci/hive_isp_css_include/host/input_formatter_public.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/irq_public.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/isp_public.h     | 1 +
 .../atomisp/pci/hive_isp_css_include/host/isys_dma_public.h      | 1 +
 .../atomisp/pci/hive_isp_css_include/host/isys_irq_public.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/isys_public.h    | 1 +
 .../pci/hive_isp_css_include/host/isys_stream2mmio_public.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/mmu_public.h     | 1 +
 .../atomisp/pci/hive_isp_css_include/host/pixelgen_public.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/sp_public.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/tag_public.h     | 1 +
 .../atomisp/pci/hive_isp_css_include/host/timed_ctrl_public.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/vamem_public.h   | 1 +
 .../media/atomisp/pci/hive_isp_css_include/host/vmem_public.h    | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h   | 1 +
 .../media/atomisp/pci/hive_isp_css_include/input_formatter.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_include/input_system.h        | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/irq.h     | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/isp.h     | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/isys_dma.h    | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/isys_stream2mmio.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/math_support.h        | 1 +
 .../media/atomisp/pci/hive_isp_css_include/misc_support.h        | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/mmu_device.h  | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/pixelgen.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/platform_support.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_include/print_support.h       | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/queue.h   | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/resource.h    | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/sp.h      | 1 +
 .../media/atomisp/pci/hive_isp_css_include/string_support.h      | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/tag.h     | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_include/timed_ctrl.h  | 1 +
 .../media/atomisp/pci/hive_isp_css_include/type_support.h        | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/vamem.h   | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_include/vmem.h    | 1 +
 .../media/atomisp/pci/hive_isp_css_shared/host/queue_local.h     | 1 +
 .../media/atomisp/pci/hive_isp_css_shared/host/queue_private.h   | 1 +
 drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag.c | 1 +
 .../media/atomisp/pci/hive_isp_css_shared/host/tag_local.h       | 1 +
 .../media/atomisp/pci/hive_isp_css_shared/host/tag_private.h     | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_shared/queue_global.h | 1 +
 .../media/atomisp/pci/hive_isp_css_shared/sw_event_global.h      | 1 +
 .../staging/media/atomisp/pci/hive_isp_css_shared/tag_global.h   | 1 +
 .../media/atomisp/pci/hive_isp_css_streaming_to_mipi_types_hrt.h | 1 +
 drivers/staging/media/atomisp/pci/hive_types.h                   | 1 +
 drivers/staging/media/atomisp/pci/hmm/hmm.c                      | 1 +
 drivers/staging/media/atomisp/pci/hmm/hmm_bo.c                   | 1 +
 drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c         | 1 +
 drivers/staging/media/atomisp/pci/hmm/hmm_reserved_pool.c        | 1 +
 .../staging/media/atomisp/pci/hrt/hive_isp_css_custom_host_hrt.h | 1 +
 drivers/staging/media/atomisp/pci/ia_css.h                       | 1 +
 drivers/staging/media/atomisp/pci/ia_css_3a.h                    | 1 +
 drivers/staging/media/atomisp/pci/ia_css_acc_types.h             | 1 +
 drivers/staging/media/atomisp/pci/ia_css_buffer.h                | 1 +
 drivers/staging/media/atomisp/pci/ia_css_control.h               | 1 +
 drivers/staging/media/atomisp/pci/ia_css_device_access.c         | 1 +
 drivers/staging/media/atomisp/pci/ia_css_device_access.h         | 1 +
 drivers/staging/media/atomisp/pci/ia_css_dvs.h                   | 1 +
 drivers/staging/media/atomisp/pci/ia_css_env.h                   | 1 +
 drivers/staging/media/atomisp/pci/ia_css_err.h                   | 1 +
 drivers/staging/media/atomisp/pci/ia_css_event_public.h          | 1 +
 drivers/staging/media/atomisp/pci/ia_css_firmware.h              | 1 +
 drivers/staging/media/atomisp/pci/ia_css_frac.h                  | 1 +
 drivers/staging/media/atomisp/pci/ia_css_frame_format.h          | 1 +
 drivers/staging/media/atomisp/pci/ia_css_frame_public.h          | 1 +
 drivers/staging/media/atomisp/pci/ia_css_host_data.h             | 1 +
 drivers/staging/media/atomisp/pci/ia_css_input_port.h            | 1 +
 drivers/staging/media/atomisp/pci/ia_css_irq.h                   | 1 +
 drivers/staging/media/atomisp/pci/ia_css_isp_configs.h           | 1 +
 drivers/staging/media/atomisp/pci/ia_css_isp_params.h            | 1 +
 drivers/staging/media/atomisp/pci/ia_css_isp_states.h            | 1 +
 drivers/staging/media/atomisp/pci/ia_css_metadata.h              | 1 +
 drivers/staging/media/atomisp/pci/ia_css_mipi.h                  | 1 +
 drivers/staging/media/atomisp/pci/ia_css_mmu.h                   | 1 +
 drivers/staging/media/atomisp/pci/ia_css_mmu_private.h           | 1 +
 drivers/staging/media/atomisp/pci/ia_css_morph.h                 | 1 +
 drivers/staging/media/atomisp/pci/ia_css_pipe.h                  | 1 +
 drivers/staging/media/atomisp/pci/ia_css_pipe_public.h           | 1 +
 drivers/staging/media/atomisp/pci/ia_css_prbs.h                  | 1 +
 drivers/staging/media/atomisp/pci/ia_css_properties.h            | 1 +
 drivers/staging/media/atomisp/pci/ia_css_shading.h               | 1 +
 drivers/staging/media/atomisp/pci/ia_css_stream.h                | 1 +
 drivers/staging/media/atomisp/pci/ia_css_stream_format.h         | 1 +
 drivers/staging/media/atomisp/pci/ia_css_stream_public.h         | 1 +
 drivers/staging/media/atomisp/pci/ia_css_timer.h                 | 1 +
 drivers/staging/media/atomisp/pci/ia_css_tpg.h                   | 1 +
 drivers/staging/media/atomisp/pci/ia_css_types.h                 | 1 +
 drivers/staging/media/atomisp/pci/ia_css_version.h               | 1 +
 drivers/staging/media/atomisp/pci/ia_css_version_data.h          | 1 +
 drivers/staging/media/atomisp/pci/if_defs.h                      | 1 +
 .../staging/media/atomisp/pci/input_formatter_subsystem_defs.h   | 1 +
 drivers/staging/media/atomisp/pci/input_selector_defs.h          | 1 +
 drivers/staging/media/atomisp/pci/input_switch_2400_defs.h       | 1 +
 drivers/staging/media/atomisp/pci/input_system_ctrl_defs.h       | 1 +
 drivers/staging/media/atomisp/pci/input_system_defs.h            | 1 +
 drivers/staging/media/atomisp/pci/input_system_global.h          | 1 +
 drivers/staging/media/atomisp/pci/input_system_local.h           | 1 +
 drivers/staging/media/atomisp/pci/input_system_private.h         | 1 +
 drivers/staging/media/atomisp/pci/input_system_public.h          | 1 +
 drivers/staging/media/atomisp/pci/irq_controller_defs.h          | 1 +
 .../media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.c      | 1 +
 .../media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.h      | 1 +
 .../media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_param.h     | 1 +
 .../media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_types.h     | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.c   | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.h   | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_param.h  | 1 +
 .../atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.c   | 1 +
 .../atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.h   | 1 +
 .../media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_types.h  | 1 +
 .../media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.c       | 1 +
 .../media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.h       | 1 +
 .../media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_param.h      | 1 +
 .../media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_types.h      | 1 +
 .../media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.c        | 1 +
 .../media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.h        | 1 +
 .../media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_param.h       | 1 +
 .../media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_types.h       | 1 +
 .../atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.c      | 1 +
 .../atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.h      | 1 +
 .../atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_param.h     | 1 +
 .../atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_types.h     | 1 +
 .../media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.c   | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.h   | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_param.h  | 1 +
 .../media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_types.h  | 1 +
 .../kernels/conversion/conversion_1.0/ia_css_conversion.host.c   | 1 +
 .../kernels/conversion/conversion_1.0/ia_css_conversion.host.h   | 1 +
 .../kernels/conversion/conversion_1.0/ia_css_conversion_param.h  | 1 +
 .../kernels/conversion/conversion_1.0/ia_css_conversion_types.h  | 1 +
 .../copy_output/copy_output_1.0/ia_css_copy_output.host.c        | 1 +
 .../copy_output/copy_output_1.0/ia_css_copy_output.host.h        | 1 +
 .../copy_output/copy_output_1.0/ia_css_copy_output_param.h       | 1 +
 .../atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.c     | 1 +
 .../atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.h     | 1 +
 .../atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_param.h    | 1 +
 .../atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_types.h | 1 +
 .../atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.c      | 1 +
 .../atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.h      | 1 +
 .../atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5_param.h     | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c    | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.h    | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_param.h   | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_types.h   | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_param.h | 1 +
 .../atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.c  | 1 +
 .../atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.c      | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.h      | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_param.h     | 1 +
 .../media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_types.h     | 1 +
 .../media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.c        | 1 +
 .../media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.h        | 1 +
 .../media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_param.h       | 1 +
 .../media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_types.h       | 1 +
 .../media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.c    | 1 +
 .../media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.h    | 1 +
 .../media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_param.h   | 1 +
 .../media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_types.h   | 1 +
 .../atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.c      | 1 +
 .../atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.h      | 1 +
 .../atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_param.h     | 1 +
 .../atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_types.h     | 1 +
 .../isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_param.h    | 1 +
 .../isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_param.h    | 1 +
 .../atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.c     | 1 +
 .../atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.c      | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.h      | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_param.h     | 1 +
 .../atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.c      | 1 +
 .../atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.h      | 1 +
 .../media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_types.h     | 1 +
 .../staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.c  | 1 +
 .../staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.h  | 1 +
 .../staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_param.h | 1 +
 .../staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_types.h | 1 +
 .../isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.c    | 1 +
 .../isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.h    | 1 +
 .../isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_param.h   | 1 +
 .../isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_types.h   | 1 +
 .../pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_param.h   | 1 +
 .../pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_types.h   | 1 +
 .../isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.c  | 1 +
 .../isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.h  | 1 +
 .../isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_param.h | 1 +
 .../isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_types.h | 1 +
 .../pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c | 1 +
 .../pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h | 1 +
 .../isp/kernels/iterator/iterator_1.0/ia_css_iterator_param.h    | 1 +
 .../atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c   | 1 +
 .../atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h   | 1 +
 .../atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_param.h  | 1 +
 .../pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.c     | 1 +
 .../pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.h     | 1 +
 .../atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_types.h  | 1 +
 .../atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.c     | 1 +
 .../atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.h     | 1 +
 .../atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_param.h    | 1 +
 .../pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.c       | 1 +
 .../pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.h       | 1 +
 .../atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_types.h    | 1 +
 .../atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.c     | 1 +
 .../atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.h     | 1 +
 .../atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.c       | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.h       | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_param.h      | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_types.h      | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_types.h    | 1 +
 .../pci/isp/kernels/output/output_1.0/ia_css_output.host.c       | 1 +
 .../pci/isp/kernels/output/output_1.0/ia_css_output.host.h       | 1 +
 .../pci/isp/kernels/output/output_1.0/ia_css_output_param.h      | 1 +
 .../pci/isp/kernels/output/output_1.0/ia_css_output_types.h      | 1 +
 .../atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.c | 1 +
 .../atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.h | 1 +
 .../pci/isp/kernels/qplane/qplane_2/ia_css_qplane_param.h        | 1 +
 .../pci/isp/kernels/qplane/qplane_2/ia_css_qplane_types.h        | 1 +
 .../media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_types.h | 1 +
 .../kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.c  | 1 +
 .../kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_state.h | 1 +
 .../media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_types.h    | 1 +
 .../pci/isp/kernels/sdis/common/ia_css_sdis_common.host.h        | 1 +
 .../pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h       | 1 +
 .../atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c     | 1 +
 .../atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h     | 1 +
 .../atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis_types.h    | 1 +
 .../atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c      | 1 +
 .../atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h      | 1 +
 .../atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2_types.h     | 1 +
 .../media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/tnr/tnr3/ia_css_tnr3_types.h   | 1 +
 .../media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_state.h | 1 +
 .../media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/uds/uds_1.0/ia_css_uds_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.c     | 1 +
 .../media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.h     | 1 +
 .../media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_param.h    | 1 +
 .../media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_types.h    | 1 +
 .../media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_param.h | 1 +
 .../atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.c  | 1 +
 .../atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c | 1 +
 .../media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.h | 1 +
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_param.h      | 1 +
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_types.h      | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.c  | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.h  | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_param.h | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_types.h | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.c   | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.h   | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_param.h  | 1 +
 .../media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_types.h  | 1 +
 .../media/atomisp/pci/isp/modes/interface/input_buf.isp.h        | 1 +
 .../staging/media/atomisp/pci/isp/modes/interface/isp_const.h    | 1 +
 .../staging/media/atomisp/pci/isp/modes/interface/isp_types.h    | 1 +
 drivers/staging/media/atomisp/pci/isp2400_input_system_global.h  | 1 +
 drivers/staging/media/atomisp/pci/isp2400_input_system_local.h   | 1 +
 drivers/staging/media/atomisp/pci/isp2400_input_system_private.h | 1 +
 drivers/staging/media/atomisp/pci/isp2400_input_system_public.h  | 1 +
 drivers/staging/media/atomisp/pci/isp2400_support.h              | 1 +
 drivers/staging/media/atomisp/pci/isp2400_system_global.h        | 1 +
 drivers/staging/media/atomisp/pci/isp2400_system_local.h         | 1 +
 drivers/staging/media/atomisp/pci/isp2401_input_system_global.h  | 1 +
 drivers/staging/media/atomisp/pci/isp2401_input_system_local.h   | 1 +
 drivers/staging/media/atomisp/pci/isp2401_input_system_private.h | 1 +
 drivers/staging/media/atomisp/pci/isp2401_mamoiada_params.h      | 1 +
 drivers/staging/media/atomisp/pci/isp2401_system_global.h        | 1 +
 drivers/staging/media/atomisp/pci/isp2401_system_local.h         | 1 +
 drivers/staging/media/atomisp/pci/isp_acquisition_defs.h         | 1 +
 drivers/staging/media/atomisp/pci/isp_capture_defs.h             | 1 +
 drivers/staging/media/atomisp/pci/mmu/isp_mmu.c                  | 1 +
 drivers/staging/media/atomisp/pci/mmu/sh_mmu_mrfld.c             | 1 +
 drivers/staging/media/atomisp/pci/mmu_defs.h                     | 1 +
 .../media/atomisp/pci/runtime/binary/interface/ia_css_binary.h   | 1 +
 drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c    | 1 +
 .../media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h       | 1 +
 .../media/atomisp/pci/runtime/bufq/interface/ia_css_bufq_comm.h  | 1 +
 drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c        | 1 +
 .../media/atomisp/pci/runtime/debug/interface/ia_css_debug.h     | 1 +
 .../atomisp/pci/runtime/debug/interface/ia_css_debug_internal.h  | 1 +
 .../atomisp/pci/runtime/debug/interface/ia_css_debug_pipe.h      | 1 +
 .../staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c   | 1 +
 .../media/atomisp/pci/runtime/event/interface/ia_css_event.h     | 1 +
 drivers/staging/media/atomisp/pci/runtime/event/src/event.c      | 1 +
 .../media/atomisp/pci/runtime/eventq/interface/ia_css_eventq.h   | 1 +
 drivers/staging/media/atomisp/pci/runtime/eventq/src/eventq.c    | 1 +
 .../media/atomisp/pci/runtime/frame/interface/ia_css_frame.h     | 1 +
 .../atomisp/pci/runtime/frame/interface/ia_css_frame_comm.h      | 1 +
 drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c      | 1 +
 .../media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h     | 1 +
 drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c      | 1 +
 .../atomisp/pci/runtime/inputfifo/interface/ia_css_inputfifo.h   | 1 +
 .../staging/media/atomisp/pci/runtime/inputfifo/src/inputfifo.c  | 1 +
 .../atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h   | 1 +
 .../pci/runtime/isp_param/interface/ia_css_isp_param_types.h     | 1 +
 .../staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c  | 1 +
 .../media/atomisp/pci/runtime/isys/interface/ia_css_isys.h       | 1 +
 .../media/atomisp/pci/runtime/isys/interface/ia_css_isys_comm.h  | 1 +
 drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c | 1 +
 drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.h | 1 +
 .../staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c  | 1 +
 .../staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.h  | 1 +
 .../staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.c   | 1 +
 .../staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.h   | 1 +
 drivers/staging/media/atomisp/pci/runtime/isys/src/isys_init.c   | 1 +
 .../media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.c   | 1 +
 .../media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.h   | 1 +
 drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c          | 1 +
 .../staging/media/atomisp/pci/runtime/isys/src/virtual_isys.c    | 1 +
 .../staging/media/atomisp/pci/runtime/isys/src/virtual_isys.h    | 1 +
 .../atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h     | 1 +
 .../pci/runtime/pipeline/interface/ia_css_pipeline_common.h      | 1 +
 .../staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c    | 1 +
 .../media/atomisp/pci/runtime/queue/interface/ia_css_queue.h     | 1 +
 .../atomisp/pci/runtime/queue/interface/ia_css_queue_comm.h      | 1 +
 drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c      | 1 +
 .../staging/media/atomisp/pci/runtime/queue/src/queue_access.c   | 1 +
 .../staging/media/atomisp/pci/runtime/queue/src/queue_access.h   | 1 +
 .../media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h       | 1 +
 .../media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h  | 1 +
 drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c        | 1 +
 drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c   | 1 +
 .../media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h   | 1 +
 .../atomisp/pci/runtime/spctrl/interface/ia_css_spctrl_comm.h    | 1 +
 drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c    | 1 +
 .../atomisp/pci/runtime/tagger/interface/ia_css_tagger_common.h  | 1 +
 drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c      | 1 +
 drivers/staging/media/atomisp/pci/scalar_processor_2400_params.h | 1 +
 drivers/staging/media/atomisp/pci/sh_css.c                       | 1 +
 drivers/staging/media/atomisp/pci/sh_css_defs.h                  | 1 +
 drivers/staging/media/atomisp/pci/sh_css_dvs_info.h              | 1 +
 drivers/staging/media/atomisp/pci/sh_css_firmware.c              | 1 +
 drivers/staging/media/atomisp/pci/sh_css_firmware.h              | 1 +
 drivers/staging/media/atomisp/pci/sh_css_frac.h                  | 1 +
 drivers/staging/media/atomisp/pci/sh_css_host_data.c             | 1 +
 drivers/staging/media/atomisp/pci/sh_css_hrt.c                   | 1 +
 drivers/staging/media/atomisp/pci/sh_css_hrt.h                   | 1 +
 drivers/staging/media/atomisp/pci/sh_css_internal.h              | 1 +
 drivers/staging/media/atomisp/pci/sh_css_legacy.h                | 1 +
 drivers/staging/media/atomisp/pci/sh_css_metadata.c              | 1 +
 drivers/staging/media/atomisp/pci/sh_css_metrics.c               | 1 +
 drivers/staging/media/atomisp/pci/sh_css_metrics.h               | 1 +
 drivers/staging/media/atomisp/pci/sh_css_mipi.c                  | 1 +
 drivers/staging/media/atomisp/pci/sh_css_mipi.h                  | 1 +
 drivers/staging/media/atomisp/pci/sh_css_mmu.c                   | 1 +
 drivers/staging/media/atomisp/pci/sh_css_morph.c                 | 1 +
 drivers/staging/media/atomisp/pci/sh_css_param_dvs.c             | 1 +
 drivers/staging/media/atomisp/pci/sh_css_param_dvs.h             | 1 +
 drivers/staging/media/atomisp/pci/sh_css_param_shading.c         | 1 +
 drivers/staging/media/atomisp/pci/sh_css_param_shading.h         | 1 +
 drivers/staging/media/atomisp/pci/sh_css_params.c                | 1 +
 drivers/staging/media/atomisp/pci/sh_css_params.h                | 1 +
 drivers/staging/media/atomisp/pci/sh_css_params_internal.h       | 1 +
 drivers/staging/media/atomisp/pci/sh_css_pipe.c                  | 1 +
 drivers/staging/media/atomisp/pci/sh_css_properties.c            | 1 +
 drivers/staging/media/atomisp/pci/sh_css_shading.c               | 1 +
 drivers/staging/media/atomisp/pci/sh_css_sp.c                    | 1 +
 drivers/staging/media/atomisp/pci/sh_css_sp.h                    | 1 +
 drivers/staging/media/atomisp/pci/sh_css_stream.c                | 1 +
 drivers/staging/media/atomisp/pci/sh_css_stream_format.c         | 1 +
 drivers/staging/media/atomisp/pci/sh_css_stream_format.h         | 1 +
 drivers/staging/media/atomisp/pci/sh_css_struct.h                | 1 +
 drivers/staging/media/atomisp/pci/sh_css_uds.h                   | 1 +
 drivers/staging/media/atomisp/pci/sh_css_version.c               | 1 +
 drivers/staging/media/atomisp/pci/str2mem_defs.h                 | 1 +
 drivers/staging/media/atomisp/pci/streaming_to_mipi_defs.h       | 1 +
 drivers/staging/media/atomisp/pci/system_global.h                | 1 +
 drivers/staging/media/atomisp/pci/system_local.h                 | 1 +
 drivers/staging/media/atomisp/pci/timed_controller_defs.h        | 1 +
 drivers/staging/media/atomisp/pci/version.h                      | 1 +
 657 files changed, 657 insertions(+)

diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
index c4f3049b0706..48c2e0839c38 100644
--- a/drivers/staging/media/atomisp/Kconfig
+++ b/drivers/staging/media/atomisp/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 menuconfig INTEL_ATOMISP
 	bool "Enable support to Intel Atom ISP camera drivers"
 	depends on X86 && EFI && PCI && ACPI
diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index 01764c487b52..1ed410d83f40 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Makefile for camera drivers.
 #
diff --git a/drivers/staging/media/atomisp/i2c/Kconfig b/drivers/staging/media/atomisp/i2c/Kconfig
index caf712c7d1f2..69f325c9a724 100644
--- a/drivers/staging/media/atomisp/i2c/Kconfig
+++ b/drivers/staging/media/atomisp/i2c/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 #
 # Kconfig for sensor drivers
 #
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
index 799383b1101d..3fbd585d45ed 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for GalaxyCore GC0310 VGA camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
index a12dd0e858bc..ae36dd4e9d0f 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for GalaxyCore GC2235 2M camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-libmsrlisthelper.c b/drivers/staging/media/atomisp/i2c/atomisp-libmsrlisthelper.c
index 33ab884f7352..b93c80471f22 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-libmsrlisthelper.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-libmsrlisthelper.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2013 Intel Corporation. All Rights Reserved.
  *
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index a899145265ff..85c90c663613 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * LED flash driver for LM3554
  *
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
index ac61b391e3f9..a76031f9c799 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for mt9m114 Camera Sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
index df6d3f82fba7..8f548351142a 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for OmniVision OV2680 1080p HD camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
index 718d10f89d5a..9f3e99be810d 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for OmniVision OV2722 1080p HD camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/gc0310.h b/drivers/staging/media/atomisp/i2c/gc0310.h
index 12f746e7828b..2fe3de115083 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.h
+++ b/drivers/staging/media/atomisp/i2c/gc0310.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for GalaxyCore GC0310 VGA camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.h b/drivers/staging/media/atomisp/i2c/gc2235.h
index bb104de61af9..68252b8f516d 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.h
+++ b/drivers/staging/media/atomisp/i2c/gc2235.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for GalaxyCore GC2235 2M camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.h b/drivers/staging/media/atomisp/i2c/mt9m114.h
index 172cec0bb398..787bbf59e895 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.h
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for mt9m114 Camera Sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.h b/drivers/staging/media/atomisp/i2c/ov2680.h
index f4e618062e9c..49920245e064 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.h
+++ b/drivers/staging/media/atomisp/i2c/ov2680.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for OmniVision OV2680 5M camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.h b/drivers/staging/media/atomisp/i2c/ov2722.h
index 1110d723968e..7b0debb6c53d 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.h
+++ b/drivers/staging/media/atomisp/i2c/ov2722.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for OmniVision OV2722 1080p HD camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
index 3f527f2047a7..c6ee90b2d13f 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
+++ b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 config VIDEO_ATOMISP_OV5693
        tristate "Omnivision ov5693 sensor support"
 	depends on ACPI
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/ad5823.h b/drivers/staging/media/atomisp/i2c/ov5693/ad5823.h
index c97ab24c5d2b..f1362cd69f6e 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/ad5823.h
+++ b/drivers/staging/media/atomisp/i2c/ov5693/ad5823.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for AD5823 VCM.
  *
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
index 62e49a3804f9..da5b1a31e82f 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
+++ b/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for OmniVision OV5693 1080p HD camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.h b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.h
index 0189907969c6..79df07bd69b6 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.h
+++ b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for OmniVision OV5693 5M camera sensor.
  *
diff --git a/drivers/staging/media/atomisp/include/hmm/hmm.h b/drivers/staging/media/atomisp/include/hmm/hmm.h
index a91d17a80d9a..b48bdf5c274c 100644
--- a/drivers/staging/media/atomisp/include/hmm/hmm.h
+++ b/drivers/staging/media/atomisp/include/hmm/hmm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/hmm/hmm_bo.h b/drivers/staging/media/atomisp/include/hmm/hmm_bo.h
index 39aea0cb2d33..8c78a5d87b65 100644
--- a/drivers/staging/media/atomisp/include/hmm/hmm_bo.h
+++ b/drivers/staging/media/atomisp/include/hmm/hmm_bo.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/hmm/hmm_common.h b/drivers/staging/media/atomisp/include/hmm/hmm_common.h
index 00885203fb14..7152e9b52ba4 100644
--- a/drivers/staging/media/atomisp/include/hmm/hmm_common.h
+++ b/drivers/staging/media/atomisp/include/hmm/hmm_common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/hmm/hmm_pool.h b/drivers/staging/media/atomisp/include/hmm/hmm_pool.h
index 8caf00502d74..3fef57de973c 100644
--- a/drivers/staging/media/atomisp/include/hmm/hmm_pool.h
+++ b/drivers/staging/media/atomisp/include/hmm/hmm_pool.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/linux/atomisp.h b/drivers/staging/media/atomisp/include/linux/atomisp.h
index 1acfb53eb171..6a6aa45fa550 100644
--- a/drivers/staging/media/atomisp/include/linux/atomisp.h
+++ b/drivers/staging/media/atomisp/include/linux/atomisp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/linux/atomisp_gmin_platform.h b/drivers/staging/media/atomisp/include/linux/atomisp_gmin_platform.h
index 8700ffd32bdb..58e0ea5355a3 100644
--- a/drivers/staging/media/atomisp/include/linux/atomisp_gmin_platform.h
+++ b/drivers/staging/media/atomisp/include/linux/atomisp_gmin_platform.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel MID SoC Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/linux/atomisp_platform.h b/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
index 9cf46325a696..4bf76a780b6d 100644
--- a/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
+++ b/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/linux/libmsrlisthelper.h b/drivers/staging/media/atomisp/include/linux/libmsrlisthelper.h
index 1b5111ad9415..abc8fa809bce 100644
--- a/drivers/staging/media/atomisp/include/linux/libmsrlisthelper.h
+++ b/drivers/staging/media/atomisp/include/linux/libmsrlisthelper.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2013 Intel Corporation. All Rights Reserved.
  *
diff --git a/drivers/staging/media/atomisp/include/media/lm3554.h b/drivers/staging/media/atomisp/include/media/lm3554.h
index 03a916ade531..812ce74f0635 100644
--- a/drivers/staging/media/atomisp/include/media/lm3554.h
+++ b/drivers/staging/media/atomisp/include/media/lm3554.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * include/media/lm3554.h
  *
diff --git a/drivers/staging/media/atomisp/include/mmu/isp_mmu.h b/drivers/staging/media/atomisp/include/mmu/isp_mmu.h
index d9662c515236..268560954792 100644
--- a/drivers/staging/media/atomisp/include/mmu/isp_mmu.h
+++ b/drivers/staging/media/atomisp/include/mmu/isp_mmu.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/include/mmu/sh_mmu_mrfld.h b/drivers/staging/media/atomisp/include/mmu/sh_mmu_mrfld.h
index 662e98f41da2..84fe7a368c14 100644
--- a/drivers/staging/media/atomisp/include/mmu/sh_mmu_mrfld.h
+++ b/drivers/staging/media/atomisp/include/mmu/sh_mmu_mrfld.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Merrifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp-regs.h b/drivers/staging/media/atomisp/pci/atomisp-regs.h
index cc489a331a7c..de34ee28e390 100644
--- a/drivers/staging/media/atomisp/pci/atomisp-regs.h
+++ b/drivers/staging/media/atomisp/pci/atomisp-regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index c256778a689e..76861396ba86 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Clovertrail PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.h b/drivers/staging/media/atomisp/pci/atomisp_acc.h
index ba14181962f8..48d94232229b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Clovertrail PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index f3548e741cc5..efae44c3be43 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index 6f9d287d8092..374f6914455d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_common.h b/drivers/staging/media/atomisp/pci/atomisp_common.h
index c3937a667a62..d47de6731d6a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_common.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat.h b/drivers/staging/media/atomisp/pci/atomisp_compat.h
index 2a4d1b469ebf..6a2a81a3eb23 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Clovertrail PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 4d2441f07630..4a7331d15f41 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Clovertrail PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h
index 05f0d6aa72d1..8376aec18e3e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Clovertrail PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c
index e2e3a242b95d..b5fdf2641259 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.h b/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.h
index 7e59ccb88a2e..86d3fbe01378 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_csi2.c b/drivers/staging/media/atomisp/pci/atomisp_csi2.c
index 24e421e3009d..060b8765ae96 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_csi2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_csi2.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_csi2.h b/drivers/staging/media/atomisp/pci/atomisp_csi2.h
index 739c26f0807a..59261e8f1a1a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_csi2.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_csi2.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_dfs_tables.h b/drivers/staging/media/atomisp/pci/atomisp_dfs_tables.h
index 9680f211d424..8f1cc3fca13a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_dfs_tables.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_dfs_tables.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_drvfs.c b/drivers/staging/media/atomisp/pci/atomisp_drvfs.c
index f14c7673653c..fe0e2bfde27f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_drvfs.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_drvfs.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for atomisp driver sysfs interface
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_drvfs.h b/drivers/staging/media/atomisp/pci/atomisp_drvfs.h
index 7c99240d107a..4911037231fb 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_drvfs.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_drvfs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for atomisp driver sysfs interface.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_file.c b/drivers/staging/media/atomisp/pci/atomisp_file.c
index ac2da7c34645..fa92b5eba740 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_file.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_file.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_file.h b/drivers/staging/media/atomisp/pci/atomisp_file.h
index e38f8bc389f1..f166a2aefff1 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_file.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_file.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_fops.c b/drivers/staging/media/atomisp/pci/atomisp_fops.c
index 8d85b3884ed2..453bb6913550 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_fops.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_fops.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_fops.h b/drivers/staging/media/atomisp/pci/atomisp_fops.h
index 9ba05551f8de..3f1e442ba782 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_fops.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_fops.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 18010bc861fc..e8f835c3bbae 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 #include <linux/module.h>
 #include <linux/i2c.h>
 #include <linux/dmi.h>
diff --git a/drivers/staging/media/atomisp/pci/atomisp_helper.h b/drivers/staging/media/atomisp/pci/atomisp_helper.h
index 56035063f81d..3d685df6b866 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_helper.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_helper.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_internal.h b/drivers/staging/media/atomisp/pci/atomisp_internal.h
index 26539f3ffb9b..ff3becd41110 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_internal.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_internal.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 72c953a6116e..4abb1462a44d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.h b/drivers/staging/media/atomisp/pci/atomisp_ioctl.h
index cc09f568c60f..412bfcf33c0f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 2bde2c8ea460..73b79cc7c320 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.h b/drivers/staging/media/atomisp/pci/atomisp_subdev.h
index fdaed4cfb842..e60ec7eea646 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_tables.h b/drivers/staging/media/atomisp/pci/atomisp_tables.h
index f615d2f444db..e718a3f661f9 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_tables.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_tables.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_tpg.c b/drivers/staging/media/atomisp/pci/atomisp_tpg.c
index 97176b54d1ec..9477ac5e22b9 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_tpg.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_tpg.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_tpg.h b/drivers/staging/media/atomisp/pci/atomisp_tpg.h
index cf492d757773..4176e076f63d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_tpg.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_tpg.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_trace_event.h b/drivers/staging/media/atomisp/pci/atomisp_trace_event.h
index 4d7a6794ee66..61f402a642d4 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_trace_event.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_trace_event.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support Camera Imaging tracer core.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index dea420a77f0a..e886c8f0c561 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.h b/drivers/staging/media/atomisp/pci/atomisp_v4l2.h
index 87881fa6a698..81bb356b8172 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf.h b/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf.h
index 789a2e68cab8..0579deac5535 100644
--- a/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf.h
+++ b/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_comm.h b/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_comm.h
index 09b049b3bd15..6fa6da859158 100644
--- a/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_comm.h
+++ b/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_comm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_desc.h b/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_desc.h
index 47c488cec8ad..1071813a284c 100644
--- a/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_desc.h
+++ b/drivers/staging/media/atomisp/pci/base/circbuf/interface/ia_css_circbuf_desc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/base/circbuf/src/circbuf.c b/drivers/staging/media/atomisp/pci/base/circbuf/src/circbuf.c
index 78e98268e188..d9f7c143794d 100644
--- a/drivers/staging/media/atomisp/pci/base/circbuf/src/circbuf.c
+++ b/drivers/staging/media/atomisp/pci/base/circbuf/src/circbuf.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h b/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h
index 72ec09dde256..78cf0cbfb3be 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h
+++ b/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
index 608bdcff0e44..cf02737cf8d4 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
+++ b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/bits.h b/drivers/staging/media/atomisp/pci/bits.h
index c6d2a5cba213..9fab02ebddc5 100644
--- a/drivers/staging/media/atomisp/pci/bits.h
+++ b/drivers/staging/media/atomisp/pci/bits.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h
index 844cc70d887b..965cfda50707 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_stagedesc.h b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_stagedesc.h
index e58c9190310d..40c8145a0797 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_stagedesc.h
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_stagedesc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_util.h b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_util.h
index ad60210abe95..c23d1bd915a3 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_util.h
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_util.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c
index 935874c35073..70ccd2a36330 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_stagedesc.c b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_stagedesc.c
index 43f63cc20f49..82a24aabe8ce 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_stagedesc.c
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_stagedesc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_util.c b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_util.c
index cc0631550724..03d9d168fcc9 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_util.c
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_util.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h b/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h
index ca5617b3b870..59df44d696a0 100644
--- a/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h
+++ b/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/camera/util/src/util.c b/drivers/staging/media/atomisp/pci/camera/util/src/util.c
index 4b2c4d7bc5b4..40a71e37cc4e 100644
--- a/drivers/staging/media/atomisp/pci/camera/util/src/util.c
+++ b/drivers/staging/media/atomisp/pci/camera/util/src/util.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/cell_params.h b/drivers/staging/media/atomisp/pci/cell_params.h
index 0eabc59ff5af..3c21a18990ba 100644
--- a/drivers/staging/media/atomisp/pci/cell_params.h
+++ b/drivers/staging/media/atomisp/pci/cell_params.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_configs.c b/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_configs.c
index 3ef556a64825..1a021ae841fe 100644
--- a/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_configs.c
+++ b/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_configs.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_params.c b/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_params.c
index 2b90a7075b9b..b786247b322b 100644
--- a/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_params.c
+++ b/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_params.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_states.c b/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_states.c
index aac816f8d252..a6bc2e9eddea 100644
--- a/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_states.c
+++ b/drivers/staging/media/atomisp/pci/css_2400_system/hive/ia_css_isp_states.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h b/drivers/staging/media/atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h
index 5c636effba48..4212bb01c8d8 100644
--- a/drivers/staging/media/atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h
+++ b/drivers/staging/media/atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2400_system/hrt/isp2400_mamoiada_params.h b/drivers/staging/media/atomisp/pci/css_2400_system/hrt/isp2400_mamoiada_params.h
index edc4d4ff1846..4a2345c38b8c 100644
--- a/drivers/staging/media/atomisp/pci/css_2400_system/hrt/isp2400_mamoiada_params.h
+++ b/drivers/staging/media/atomisp/pci/css_2400_system/hrt/isp2400_mamoiada_params.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/csi_rx_global.h b/drivers/staging/media/atomisp/pci/css_2401_system/csi_rx_global.h
index 4de5bb81bd23..3aabd0248e4f 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/csi_rx_global.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/csi_rx_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c
index 3ef556a64825..1a021ae841fe 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_params.c b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_params.c
index 68297296885e..d9c672d8904e 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_params.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_params.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_states.c b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_states.c
index a8cc21d45bd8..514ffe0303cb 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_states.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_states.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
index 50080565d0d6..8e661091f7d9 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_local.h
index a86de89b2cfc..6489ee644a4a 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h
index 97ad67e438f0..ece45d80eb2a 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c
index 8b06b2410d1d..58fec54a914d 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h
index ea40284623d1..4952b42d8191 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h
index a0800a5df68a..a58e8477da6e 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma.c
index 36c026cbd7cc..5809dbb6e5aa 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_local.h
index 5c694a26386e..878933261a43 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_private.h
index a1a222372ed3..eb35b7bcead4 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_dma_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c
index 567c926bd47f..99576af4713c 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_local.h
index 4fd05b29dfdb..e3d6d5e1634e 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h
index c519e6f06462..91ef000d76dc 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio.c
index 67570138ba24..b7d893aea88d 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_local.h
index 1449c19abc86..4fbbcc2338d3 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_private.h
index e5aae5c022eb..4a5646a229b8 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_stream2mmio_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_local.h
index 24f4da9aef40..efaa4da8d36d 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
index 5d4ffe03d13b..4faa519219ee 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/PixelGen_SysBlock_defs.h b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/PixelGen_SysBlock_defs.h
index ce53ba4837ea..ae471dd51737 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/PixelGen_SysBlock_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/PixelGen_SysBlock_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/ibuf_cntrl_defs.h b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/ibuf_cntrl_defs.h
index 5975b094a9d0..374466e6b7bf 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/ibuf_cntrl_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/ibuf_cntrl_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_common_defs.h b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_common_defs.h
index 84fe95c16404..ac8be2d49227 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_common_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_common_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_defs.h b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_defs.h
index 45f20b524368..6fae1c262446 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/mipi_backend_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/rx_csi_defs.h b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/rx_csi_defs.h
index a8d0dbd7f6d7..d0e5b54d1afc 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/rx_csi_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/rx_csi_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/stream2mmio_defs.h b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/stream2mmio_defs.h
index a3940d246890..e17783f96b23 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hrt/stream2mmio_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hrt/stream2mmio_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/ibuf_ctrl_global.h b/drivers/staging/media/atomisp/pci/css_2401_system/ibuf_ctrl_global.h
index dc8d091c6769..1b9f03d57659 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/ibuf_ctrl_global.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/ibuf_ctrl_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/isys_dma_global.h b/drivers/staging/media/atomisp/pci/css_2401_system/isys_dma_global.h
index 636d34a83931..f423f34134d3 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/isys_dma_global.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/isys_dma_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/isys_irq_global.h b/drivers/staging/media/atomisp/pci/css_2401_system/isys_irq_global.h
index 41d051db3987..156b4c95277e 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/isys_irq_global.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/isys_irq_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/isys_stream2mmio_global.h b/drivers/staging/media/atomisp/pci/css_2401_system/isys_stream2mmio_global.h
index bcb46b293b6a..0611047eabbc 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/isys_stream2mmio_global.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/isys_stream2mmio_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/pixelgen_global.h b/drivers/staging/media/atomisp/pci/css_2401_system/pixelgen_global.h
index cde599c5d0d2..75722ef572d0 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/pixelgen_global.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/pixelgen_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_receiver_2400_common_defs.h b/drivers/staging/media/atomisp/pci/css_receiver_2400_common_defs.h
index 99d292164efc..d2c39f9600bd 100644
--- a/drivers/staging/media/atomisp/pci/css_receiver_2400_common_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_receiver_2400_common_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_receiver_2400_defs.h b/drivers/staging/media/atomisp/pci/css_receiver_2400_defs.h
index f4b2b41b6d94..180ff7cd9ff5 100644
--- a/drivers/staging/media/atomisp/pci/css_receiver_2400_defs.h
+++ b/drivers/staging/media/atomisp/pci/css_receiver_2400_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/css_trace.h b/drivers/staging/media/atomisp/pci/css_trace.h
index f272098b28d0..d2ce50fcfb7a 100644
--- a/drivers/staging/media/atomisp/pci/css_trace.h
+++ b/drivers/staging/media/atomisp/pci/css_trace.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/defs.h b/drivers/staging/media/atomisp/pci/defs.h
index 47505f41790c..785e7a670a00 100644
--- a/drivers/staging/media/atomisp/pci/defs.h
+++ b/drivers/staging/media/atomisp/pci/defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/dma_v2_defs.h b/drivers/staging/media/atomisp/pci/dma_v2_defs.h
index 8741b8347dd4..27299e3a185d 100644
--- a/drivers/staging/media/atomisp/pci/dma_v2_defs.h
+++ b/drivers/staging/media/atomisp/pci/dma_v2_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/gdc_v2_defs.h b/drivers/staging/media/atomisp/pci/gdc_v2_defs.h
index 3cc627aa6b09..804df8179e36 100644
--- a/drivers/staging/media/atomisp/pci/gdc_v2_defs.h
+++ b/drivers/staging/media/atomisp/pci/gdc_v2_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/gp_timer_defs.h b/drivers/staging/media/atomisp/pci/gp_timer_defs.h
index ffd7b38fce9d..9bc04e5b4292 100644
--- a/drivers/staging/media/atomisp/pci/gp_timer_defs.h
+++ b/drivers/staging/media/atomisp/pci/gp_timer_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/gpio_block_defs.h b/drivers/staging/media/atomisp/pci/gpio_block_defs.h
index 96286a141b00..e1bd638d344a 100644
--- a/drivers/staging/media/atomisp/pci/gpio_block_defs.h
+++ b/drivers/staging/media/atomisp/pci/gpio_block_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h b/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
index 0760b95818f6..69fefe634a6a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/debug_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/debug_global.h
index 7580cf5c9624..b6538beca18a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/debug_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/debug_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/dma_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/dma_global.h
index 85d509f5b923..135034c7245a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/dma_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/dma_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/event_fifo_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/event_fifo_global.h
index 4df7a405cdcf..a50635b717e3 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/event_fifo_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/event_fifo_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/fifo_monitor_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/fifo_monitor_global.h
index f43bf0ad2468..d941c82d530b 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/fifo_monitor_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/fifo_monitor_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gdc_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gdc_global.h
index f3ce9e9f1ad4..599d993b832e 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gdc_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gdc_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_device_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_device_global.h
index 1c1b0667a53b..c8f416515e2c 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_device_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_device_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_timer_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_timer_global.h
index ee636ad6c5b3..163003f2c759 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_timer_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gp_timer_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gpio_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gpio_global.h
index a82ca2a8cada..b5f017482f89 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/gpio_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/gpio_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/hmem_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/hmem_global.h
index e4b9daa2d062..746b07097681 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/hmem_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/hmem_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug.c
index 200926cca00f..a502ba9f8c7f 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2016, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_local.h
index 4c95eda694f7..536a4dcf0f62 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_private.h
index 23b18a824cc4..3fea43a2125e 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/debug_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma.c
index 87df1da1164e..f85950c471c7 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2016, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_local.h
index d7db964d5cec..7e4cc75733cd 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_private.h
index ebb75da72e18..1f62bc2f176f 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/dma_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo.c
index 777670948d6f..62d4809e33dd 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_local.h
index 39a9dd697096..25d3823026e8 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_private.h
index 3b6cc27ecb28..f59d45cc78b7 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/event_fifo_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor.c
index 82f7c43bcb0a..01698064bbe1 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_local.h
index a557ff8a416f..dfdca944a40b 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_private.h
index abaef8672ae2..10d9c076c140 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/fifo_monitor_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc.c
index 65c5296163dd..8ed1cffc5384 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_local.h
index 0c6de867e012..4b2b3282c1b2 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_private.h
index f7dec75adf78..73051112f354 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gdc_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device.c
index 5f20ac0b492e..a80e547d47b3 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_local.h
index 113d5ed32d42..320ed35269ea 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_private.h
index cdc1b12a9e8a..f11a19f21d10 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_device_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer.c
index 4a856f1f14bf..2a58dba3c87b 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_local.h
index 4d5961c78c16..efede25587fd 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_private.h
index 705be5e5cc70..3e1b36105bb6 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gp_timer_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_local.h
index f4652b79734d..14013733f826 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_private.h
index 56b442040ad9..cc60bed71ddb 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/gpio_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem.c
index e48f180c9507..be102d5cec87 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_local.h
index 499f55f07253..a3ee274bdf19 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_private.h
index 270d04cc9d09..80d81983bd06 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/hmem_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter.c
index 0c90c5ed659b..bec9c7238a78 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_local.h
index ee2c8372421c..94fff77584f7 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_private.h
index bdca709219a4..e2bc952e6694 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_formatter_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
index 2114cf4f3fda..4aa0b8c50cc5 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq.c
index fdc99cc6eae4..8b72a40f9ad1 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_local.h
index 86028fde2a94..345d41c1d39f 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_private.h
index 8a947aefd851..e98663ef0fcd 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/irq_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp.c
index 7de7d08f4757..302ed32020b6 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h
index b04da7f1f98c..eceeb5d160ad 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_private.h
index a6ab10711255..2f9aeb3bd9d4 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu.c
index a17b32b6d414..eb02835aa98a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu_local.h
index 7c3ad157189f..913150504f0f 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/mmu_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp.c
index f084b316e373..aae18465b6ae 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_local.h
index 0e477b497c98..2956c7023b33 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_private.h
index e3e24fac126e..05e6b438d2c8 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/sp_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl.c
index aaea74389443..bc9e7f10f1ab 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_local.h
index e570813af28d..f58ee6afcff9 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_private.h
index 3c137badbd43..c19eeafed3a3 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/timed_ctrl_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vamem_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vamem_local.h
index c4e99afe0d29..c68ed984ca48 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vamem_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vamem_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem.c
index 0c6830ae7344..2f7b858d5d15 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2016, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_local.h
index a42cce42f29d..d0ba59cedc92 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_private.h
index f48d1281b5a7..39cf1316b404 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/vmem_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/input_formatter_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/input_formatter_global.h
index c0658972f9cb..605cf02e520c 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/input_formatter_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/input_formatter_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h
index 883754def2d8..f8e9005dc9c1 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/isp_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/isp_global.h
index ad25597c4f03..5ea3f1938fbd 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/isp_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/isp_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/mmu_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/mmu_global.h
index 83ca418c8ff2..8738fed6afdf 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/mmu_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/mmu_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/sp_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/sp_global.h
index 252fe8c624eb..125fe577073f 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/sp_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/sp_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/timed_ctrl_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/timed_ctrl_global.h
index f185859e3084..3f2915a78031 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/timed_ctrl_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/timed_ctrl_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/vamem_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/vamem_global.h
index 92b783fed82c..0d290e815767 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/vamem_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/vamem_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/vmem_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/vmem_global.h
index 7867cd137f3f..537b074211da 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/vmem_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/vmem_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_defs.h b/drivers/staging/media/atomisp/pci/hive_isp_css_defs.h
index 52676f3610ba..e9cf2743868c 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_defs.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/assert_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/assert_support.h
index 4cb7e4c952c5..7382c0bbf7cb 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/assert_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/assert_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/bitop_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/bitop_support.h
index 76856db58626..29f14e900580 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/bitop_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/bitop_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/csi_rx.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/csi_rx.h
index badb15705710..4602885d50e8 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/csi_rx.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/csi_rx.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/debug.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/debug.h
index ba11b956eb1a..0f8195ba8d1a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/debug.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/debug.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/device_access/device_access.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/device_access/device_access.h
index 7168c3945772..492f9e26cfff 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/device_access/device_access.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/device_access/device_access.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/dma.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/dma.h
index b6c464a530ea..2f5ebfcd7e8b 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/dma.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/dma.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/event_fifo.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/event_fifo.h
index 8bfe348772f4..0a085abd3ade 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/event_fifo.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/event_fifo.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/fifo_monitor.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/fifo_monitor.h
index 1743caa006d0..19a1bdd9171a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/fifo_monitor.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/fifo_monitor.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gdc_device.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gdc_device.h
index 4f8d7fbc8e7f..4ed57fb4530e 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gdc_device.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gdc_device.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_device.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_device.h
index 665557bae7a1..d122bdeae7e7 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_device.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_device.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_timer.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_timer.h
index cd26c9d16a35..0b7e92b963d0 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_timer.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gp_timer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gpio.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gpio.h
index ad79c03e59f4..6f16ca77cf75 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/gpio.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/gpio.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/hmem.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/hmem.h
index f87fd6b2ba23..898facd7b17a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/hmem.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/hmem.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/csi_rx_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/csi_rx_public.h
index f7cd4d7b96e5..e6f695691407 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/csi_rx_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/csi_rx_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/debug_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/debug_public.h
index 8128e40dcc67..ee861ddb8e92 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/debug_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/debug_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/dma_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/dma_public.h
index b32cfde16b5a..a23cbc9a2129 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/dma_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/dma_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/event_fifo_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/event_fifo_public.h
index f6a96401cc68..22f1875f038e 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/event_fifo_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/event_fifo_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/fifo_monitor_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/fifo_monitor_public.h
index 9f01194184a7..7c1c3d2f24c6 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/fifo_monitor_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/fifo_monitor_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gdc_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gdc_public.h
index fc6f42e76fbe..385b79254455 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gdc_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gdc_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_device_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_device_public.h
index 5ec5d56457a7..f017742d9ac4 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_device_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_device_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_timer_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_timer_public.h
index 0800280b7393..13baf7236375 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_timer_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gp_timer_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gpio_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gpio_public.h
index bd1350b8f9ee..13df9b57a5fb 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gpio_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/gpio_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/hmem_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/hmem_public.h
index 567fbc1d35e7..8d271fb84209 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/hmem_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/hmem_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h
index 6b17a6b651b7..053803d2cae3 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/input_formatter_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/input_formatter_public.h
index 0a9e450af765..81dc58640d83 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/input_formatter_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/input_formatter_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/irq_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/irq_public.h
index cb210166b3b9..bc3ad3dcf6d1 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/irq_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/irq_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isp_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isp_public.h
index 09e209ed1847..a8ff75c639e5 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isp_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isp_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_dma_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_dma_public.h
index 96670c740a78..23a158b81b13 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_dma_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_dma_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h
index d561783e47a3..b9befdd2508e 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_public.h
index 2d1859f2c656..509f75fe025c 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_stream2mmio_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_stream2mmio_public.h
index 87a8d512713e..73bcc424e472 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_stream2mmio_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_stream2mmio_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/mmu_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/mmu_public.h
index 7cdb270529f7..b8c7bbb71b01 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/mmu_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/mmu_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/pixelgen_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/pixelgen_public.h
index ba67a276ce55..ded4dce06d09 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/pixelgen_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/pixelgen_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/sp_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/sp_public.h
index b309890f5a76..b0b7f2e27854 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/sp_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/sp_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/tag_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/tag_public.h
index afd5a59489cc..b18b4a4e13ac 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/tag_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/tag_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/timed_ctrl_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/timed_ctrl_public.h
index e59a1f8526af..563a2833d1d9 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/timed_ctrl_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/timed_ctrl_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vamem_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vamem_public.h
index 577b9b8449e8..823e3857e83c 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vamem_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vamem_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vmem_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vmem_public.h
index e9801c0fe147..c510d6a08017 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vmem_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/vmem_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h
index f9cf7b586045..218341041811 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_formatter.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_formatter.h
index 377996e0536d..daeb919b5384 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_formatter.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_formatter.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_system.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_system.h
index 33ab8a85909e..0d951fbf42e9 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_system.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/input_system.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/irq.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/irq.h
index 133dd9014fef..3a83a85111a2 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/irq.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/irq.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isp.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isp.h
index 749610b8a831..cb64e62c5569 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isp.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_dma.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_dma.h
index dbdd17115018..6a759142eda8 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_dma.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_dma.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h
index d3f64cfd0b7d..d854124f4f97 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_stream2mmio.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_stream2mmio.h
index e2ebeb14e7c2..b0f09ffb4f18 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_stream2mmio.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_stream2mmio.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/math_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/math_support.h
index 0b9519c8961c..a444ec14ff9d 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/math_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/math_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/misc_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/misc_support.h
index 38db1ecef3c8..393452d7a3d6 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/misc_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/misc_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/mmu_device.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/mmu_device.h
index 1a36cb493fd8..b6f6eda4c55e 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/mmu_device.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/mmu_device.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/pixelgen.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/pixelgen.h
index 74335fdeff7d..e34cd3c58dd7 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/pixelgen.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/pixelgen.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/platform_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/platform_support.h
index 525c34882fd7..339edf5ff4e0 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/platform_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/platform_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h
index f5fcf6b1d667..a1f7a5839560 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/print_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/queue.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/queue.h
index 1bcadd838161..e6978750a362 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/queue.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/queue.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/resource.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/resource.h
index 129446600067..9be45b679386 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/resource.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/resource.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/sp.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/sp.h
index 194cd64a7da8..a7d00c7bb8bc 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/sp.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/sp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/string_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/string_support.h
index 7b3af1b10b6d..7805b40a1855 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/string_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/string_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/tag.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/tag.h
index 1f0a5d948316..98d7e922aed9 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/tag.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/tag.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/timed_ctrl.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/timed_ctrl.h
index 403abcb828bf..65b2871fb4ea 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/timed_ctrl.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/timed_ctrl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/type_support.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/type_support.h
index bc77537fa73a..b996ee54d4a5 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/type_support.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/type_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/vamem.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/vamem.h
index 9918ca398138..3ea6758aa798 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/vamem.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/vamem.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/vmem.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/vmem.h
index 873e01e6d054..da479b370192 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/vmem.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/vmem.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_local.h
index 9f4060319b4b..31121a22d13d 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_private.h
index 2b396955cdad..be6162dfbc66 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/queue_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag.c b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag.c
index a7089ee7462a..8931539a4c01 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_local.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_local.h
index 01a8977c189e..921e50a4554a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_local.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_private.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_private.h
index 0570a95ec5bf..b14f09adef07 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_private.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/host/tag_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/queue_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/queue_global.h
index ce0d99418538..6ae453782515 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/queue_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/queue_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/sw_event_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/sw_event_global.h
index 549c0d2b7970..b256ea19c0eb 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/sw_event_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/sw_event_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/tag_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/tag_global.h
index 9db8766b3a7b..af5a47ace32a 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_shared/tag_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_shared/tag_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_streaming_to_mipi_types_hrt.h b/drivers/staging/media/atomisp/pci/hive_isp_css_streaming_to_mipi_types_hrt.h
index a22b771f61f2..301dd923950c 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_streaming_to_mipi_types_hrt.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_streaming_to_mipi_types_hrt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hive_types.h b/drivers/staging/media/atomisp/pci/hive_types.h
index 312a2ab3866d..addda9b81d7b 100644
--- a/drivers/staging/media/atomisp/pci/hive_types.h
+++ b/drivers/staging/media/atomisp/pci/hive_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
index 25b92b2c4830..005d638f4d9e 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
index 64bf6b8fc7cc..4bd7014d01c9 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c b/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
index 1a87af68a924..eaf97e5f3b68 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_reserved_pool.c b/drivers/staging/media/atomisp/pci/hmm/hmm_reserved_pool.c
index d739ed914d65..57525fece921 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_reserved_pool.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm_reserved_pool.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_custom_host_hrt.h b/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_custom_host_hrt.h
index c6893d712d61..7f2211698cb0 100644
--- a/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_custom_host_hrt.h
+++ b/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_custom_host_hrt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/ia_css.h b/drivers/staging/media/atomisp/pci/ia_css.h
index e44df6916d90..d83e1ae5b0b3 100644
--- a/drivers/staging/media/atomisp/pci/ia_css.h
+++ b/drivers/staging/media/atomisp/pci/ia_css.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_3a.h b/drivers/staging/media/atomisp/pci/ia_css_3a.h
index c51392e00403..70cfc915cc56 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_3a.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_3a.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_acc_types.h b/drivers/staging/media/atomisp/pci/ia_css_acc_types.h
index 557fe8a3c18f..36583ab12e3f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_acc_types.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_acc_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_buffer.h b/drivers/staging/media/atomisp/pci/ia_css_buffer.h
index 38e1f4791029..b1e8357b94b5 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_buffer.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_buffer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_control.h b/drivers/staging/media/atomisp/pci/ia_css_control.h
index 34d6dcbf1045..88f031a63ba2 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_control.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_control.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_device_access.c b/drivers/staging/media/atomisp/pci/ia_css_device_access.c
index fe7556b59aef..9cd2d3caa5c9 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_device_access.c
+++ b/drivers/staging/media/atomisp/pci/ia_css_device_access.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_device_access.h b/drivers/staging/media/atomisp/pci/ia_css_device_access.h
index 9445c3141db5..07d611fdd19f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_device_access.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_device_access.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_dvs.h b/drivers/staging/media/atomisp/pci/ia_css_dvs.h
index 176aa8887278..3367dfd64050 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_dvs.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_dvs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_env.h b/drivers/staging/media/atomisp/pci/ia_css_env.h
index 8b0218ee658d..8debf334c15c 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_env.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_env.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_err.h b/drivers/staging/media/atomisp/pci/ia_css_err.h
index 7e077ea06a20..98401a4a171d 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_err.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_err.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_event_public.h b/drivers/staging/media/atomisp/pci/ia_css_event_public.h
index 2a754933040f..08ea801dd5ac 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_event_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_event_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_firmware.h b/drivers/staging/media/atomisp/pci/ia_css_firmware.h
index 931d7935b19c..edab72256494 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_firmware.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_frac.h b/drivers/staging/media/atomisp/pci/ia_css_frac.h
index 59720370cb8e..661af9225b19 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_frac.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_frac.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_frame_format.h b/drivers/staging/media/atomisp/pci/ia_css_frame_format.h
index 2f177edc36ac..093e23a9b079 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_frame_format.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_frame_format.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
index da12f9218228..d822aa235ffe 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_host_data.h b/drivers/staging/media/atomisp/pci/ia_css_host_data.h
index bc82e97d24cb..f54cc504f5d4 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_host_data.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_host_data.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_input_port.h b/drivers/staging/media/atomisp/pci/ia_css_input_port.h
index ad9ca5449369..9772b6928239 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_input_port.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_input_port.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_irq.h b/drivers/staging/media/atomisp/pci/ia_css_irq.h
index cef52d28c2b4..47c93a2b4d9f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_irq.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_irq.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h b/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h
index 6545efd24cbe..1abb2fd6a913 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_isp_params.h b/drivers/staging/media/atomisp/pci/ia_css_isp_params.h
index b8b3c48492ae..6e3082b39ed6 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_isp_params.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_isp_params.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_isp_states.h b/drivers/staging/media/atomisp/pci/ia_css_isp_states.h
index d50c7d5ed5b6..9f6c342a1705 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_isp_states.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_isp_states.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_metadata.h b/drivers/staging/media/atomisp/pci/ia_css_metadata.h
index 0212d71b3355..9eb1b76a3b2a 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_metadata.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_metadata.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_mipi.h b/drivers/staging/media/atomisp/pci/ia_css_mipi.h
index 76e7eeee3ed9..56a2fca8117f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_mipi.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_mipi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_mmu.h b/drivers/staging/media/atomisp/pci/ia_css_mmu.h
index 13c21056bfbf..8f04d196c646 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_mmu.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_mmu.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_mmu_private.h b/drivers/staging/media/atomisp/pci/ia_css_mmu_private.h
index 1021e4f380a5..dc6542aa64f2 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_mmu_private.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_mmu_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_morph.h b/drivers/staging/media/atomisp/pci/ia_css_morph.h
index de409638d009..9c4b41b94256 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_morph.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_morph.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe.h b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
index 3915735ea4be..9c0c4ccf4571 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h b/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
index 0874689bb124..17b0941382bf 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_prbs.h b/drivers/staging/media/atomisp/pci/ia_css_prbs.h
index 037fc4f77c77..53bbf1dce3bf 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_prbs.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_prbs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_properties.h b/drivers/staging/media/atomisp/pci/ia_css_properties.h
index 9a167306611c..2cd014f7ae29 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_properties.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_properties.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_shading.h b/drivers/staging/media/atomisp/pci/ia_css_shading.h
index 588f53d32b72..de7ae5cabf7d 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_shading.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_shading.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_stream.h b/drivers/staging/media/atomisp/pci/ia_css_stream.h
index ebdeb0a6343a..e3e7a8a03b04 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_stream.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_stream.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_stream_format.h b/drivers/staging/media/atomisp/pci/ia_css_stream_format.h
index 4cd29833584f..aac22d8581a0 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_stream_format.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_stream_format.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_stream_public.h b/drivers/staging/media/atomisp/pci/ia_css_stream_public.h
index 96346ad67bb1..83846e417ae5 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_stream_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_stream_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_timer.h b/drivers/staging/media/atomisp/pci/ia_css_timer.h
index 5e358c7a992c..c78fbda907a1 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_timer.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_timer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_tpg.h b/drivers/staging/media/atomisp/pci/ia_css_tpg.h
index 79c4e1b3b48f..8c744bedb0a6 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_tpg.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_tpg.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_types.h b/drivers/staging/media/atomisp/pci/ia_css_types.h
index 65073332301a..bac0a41add92 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_types.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_version.h b/drivers/staging/media/atomisp/pci/ia_css_version.h
index af6bdf958d6f..cf1d010baceb 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_version.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_version.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/ia_css_version_data.h b/drivers/staging/media/atomisp/pci/ia_css_version_data.h
index f630fa5d55cc..428d78e1616f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_version_data.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_version_data.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/if_defs.h b/drivers/staging/media/atomisp/pci/if_defs.h
index 7d39e45796ae..e21efa749368 100644
--- a/drivers/staging/media/atomisp/pci/if_defs.h
+++ b/drivers/staging/media/atomisp/pci/if_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/input_formatter_subsystem_defs.h b/drivers/staging/media/atomisp/pci/input_formatter_subsystem_defs.h
index 176456da961f..594fc36a01c7 100644
--- a/drivers/staging/media/atomisp/pci/input_formatter_subsystem_defs.h
+++ b/drivers/staging/media/atomisp/pci/input_formatter_subsystem_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/input_selector_defs.h b/drivers/staging/media/atomisp/pci/input_selector_defs.h
index 1dd8ea3cd6d4..61882e4cb813 100644
--- a/drivers/staging/media/atomisp/pci/input_selector_defs.h
+++ b/drivers/staging/media/atomisp/pci/input_selector_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/input_switch_2400_defs.h b/drivers/staging/media/atomisp/pci/input_switch_2400_defs.h
index 2d5baae30522..8ea1d7991d38 100644
--- a/drivers/staging/media/atomisp/pci/input_switch_2400_defs.h
+++ b/drivers/staging/media/atomisp/pci/input_switch_2400_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/input_system_ctrl_defs.h b/drivers/staging/media/atomisp/pci/input_system_ctrl_defs.h
index fcfa8c4971be..c801ddd71192 100644
--- a/drivers/staging/media/atomisp/pci/input_system_ctrl_defs.h
+++ b/drivers/staging/media/atomisp/pci/input_system_ctrl_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/input_system_defs.h b/drivers/staging/media/atomisp/pci/input_system_defs.h
index ae62163034a6..0c6a74b1891f 100644
--- a/drivers/staging/media/atomisp/pci/input_system_defs.h
+++ b/drivers/staging/media/atomisp/pci/input_system_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/input_system_global.h b/drivers/staging/media/atomisp/pci/input_system_global.h
index e75c2f29042d..5ac580ce64ed 100644
--- a/drivers/staging/media/atomisp/pci/input_system_global.h
+++ b/drivers/staging/media/atomisp/pci/input_system_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *    (c) 2020 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
diff --git a/drivers/staging/media/atomisp/pci/input_system_local.h b/drivers/staging/media/atomisp/pci/input_system_local.h
index 8533a1e017e4..b33aa2838290 100644
--- a/drivers/staging/media/atomisp/pci/input_system_local.h
+++ b/drivers/staging/media/atomisp/pci/input_system_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *    (c) 2020 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
diff --git a/drivers/staging/media/atomisp/pci/input_system_private.h b/drivers/staging/media/atomisp/pci/input_system_private.h
index 69c63a79a30c..889f204e77d5 100644
--- a/drivers/staging/media/atomisp/pci/input_system_private.h
+++ b/drivers/staging/media/atomisp/pci/input_system_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *    (c) 2020 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
diff --git a/drivers/staging/media/atomisp/pci/input_system_public.h b/drivers/staging/media/atomisp/pci/input_system_public.h
index 17682c86bceb..3f5167fd6643 100644
--- a/drivers/staging/media/atomisp/pci/input_system_public.h
+++ b/drivers/staging/media/atomisp/pci/input_system_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *    (c) 2020 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
diff --git a/drivers/staging/media/atomisp/pci/irq_controller_defs.h b/drivers/staging/media/atomisp/pci/irq_controller_defs.h
index efb3d7e135bd..e49e61e17ee7 100644
--- a/drivers/staging/media/atomisp/pci/irq_controller_defs.h
+++ b/drivers/staging/media/atomisp/pci/irq_controller_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.c
index 9cdfe50b2835..daf2f25c1ed6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.h
index 71587d85ff2d..3abc125debd0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_param.h
index 3c699bae2f55..4f8bb4de4edc 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_types.h
index cc6a444ac716..900ba8f5e30c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/aa/aa_2/ia_css_aa2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.c
index c190483dc2b3..3f079c954c1f 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.h
index 3855f54765e3..a4720c4a948a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_param.h
index 6bf834cb47d9..37dcb013b76d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_types.h
index d3fa0193ae07..be3534e46c15 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_1.0/ia_css_anr_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.c
index feee073b5099..9cdefedc6312 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.h
index e99108682f5d..2b3ab01c279d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_param.h
index 629c9ae6ad23..4b83b8100160 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.c
index 070e90e3e2b5..649283bd44f2 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.h
index 534119e064c1..9e383e030ac4 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_types.h
index 200df3829fc7..e12aae819dce 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/anr/anr_2/ia_css_anr2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.c
index 4f1efd6db536..82aa69b74677 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.h
index ccd83169fe22..736b6e3f9512 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_param.h
index 692a855ba012..05d5c43e6b16 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_types.h
index 8b2a53a26b75..4c0e92f13d6c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bh/bh_2/ia_css_bh_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.c
index 43c57e401a86..45e37dc4f1e3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.h
index a57933bfb974..3632bf27cc21 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_param.h
index c7d5cadf5fd4..30672db269df 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_types.h
index 8dd1b1766c64..407b5a3b0fcd 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnlm/ia_css_bnlm_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.c
index a5e20596539d..c42fcb1d9100 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.h
index a021733dcdf7..f6ab5d2bb218 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_param.h
index 698fdc0b13fa..087723795476 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_types.h
index ee9569891747..5f3dfa59f950 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr2_2/ia_css_bnr2_2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.c
index 5efb0ce7f323..457a004e194d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.h
index 4c29b47b8177..7fc2a728a6c2 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr_param.h
index 52f21ce8f4d2..4f6469315386 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/bnr/bnr_1.0/ia_css_bnr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.c
index c50afa6bf8a6..0eb40517e08c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.h
index 87250ca5842c..4d046b730f06 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr_param.h
index c1af207cbf9a..971ab87af2c5 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_1.0/ia_css_cnr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.c
index 610871d213bb..495dc1f33ca6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.h
index d322359feedf..38f848137eda 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_param.h
index 0d2fb2897720..3709aa4d3652 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_types.h
index 35fc2e77eb3d..d0a25616727c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/cnr/cnr_2/ia_css_cnr2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.c
index e64e26089a4d..ff452e2cc23a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.h
index c136d5e03511..520623e27349 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_param.h
index 3a6ede394bdc..fcbec189eff8 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_types.h
index 79a626fe3a29..34152d6d09be 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/conversion/conversion_1.0/ia_css_conversion_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.c
index 6e29b7eeb3ed..5d34f3256a43 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.h
index 6f42abdec9bb..615cb6771884 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output_param.h
index 587d0c62c936..56daa1d96747 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/copy_output/copy_output_1.0/ia_css_copy_output_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.c
index c6a3bd4fbf80..38912062edd4 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.h
index 2e451a872d2a..21a259d33256 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_param.h
index 35835929d252..7416e74dd782 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_types.h
index 5c166be6c5e8..aaaae5e2abb9 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/crop/crop_1.0/ia_css_crop_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.c
index ea81e1d3e445..284c17970e55 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.h
index 347ccd864577..6b0256a73e52 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_param.h
index 53e270df2db7..3809ef73e490 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_types.h
index d49203d322bd..160f19bdfca0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/csc/csc_1.0/ia_css_csc_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.c
index e80f42ab0e6a..149adbc57730 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.h
index f3c40a49f7c0..8c17e7b921b5 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5_param.h
index 95cf34ef4ed2..c18cfc930db6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc1_5/ia_css_ctc1_5_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
index b247dc6bec6a..e3d3f1253422 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.h
index 3733aee24dcd..eb10c3884020 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_param.h
index 224bdb199942..94844da665e5 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_types.h
index 9d5dadf70f1a..f9f329a58737 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc2/ia_css_ctc2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.c
index 26311b0a23f9..82f2adbbfac3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.h
index e4ad676361dd..57d1d08e1bc8 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_param.h
index 6e541a0ebaa9..7e2fa192a0fe 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.c
index adb146c03a73..454697c05b56 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.h
index a350dec8b4ad..33e8a05455a3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_types.h
index f6f5ec28827f..b2d42f3c1f4d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ctc/ctc_1.0/ia_css_ctc_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.c
index 8e4218cb70cd..25e3f0822fb8 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.h
index baae1d9809da..cb91062029cf 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_param.h
index c85a57e194cc..2070ce040470 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_types.h
index a4b446904570..daac1275c129 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_1.0/ia_css_de_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.c
index ade23d53f6bb..f90da39296ec 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.h
index f3749e514505..294f619a3b15 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_param.h
index 868dfaaf78c7..4c9d5c630cb0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_types.h
index 24700d256bfd..372cd9d2b803 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/de/de_2/ia_css_de2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.c
index 9fb37447831c..eff428c67c86 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.h
index 009541fafda0..e5f5a2716010 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_param.h
index 8567a620696a..e0e7f2d48237 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_types.h
index e96f83e5d47c..c1666ebf1d3b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dp/dp_1.0/ia_css_dp_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.c
index 4dfad4ace20b..f6fe064bdda4 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.h
index a31ef0e5047b..f6e019a65208 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_param.h
index 6df06fb249aa..1ccceadbb7bf 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_types.h
index f78451be8d6a..f742a8dc1d67 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dpc2/ia_css_dpc2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c
index a0e483a2d66a..b8b71791466f 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h
index 660c20110432..f9bc17ee0f86 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_param.h
index f8842dae943b..2963bb10b129 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_types.h
index a1a14d93ef29..e99ff0ce8bab 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.c
index 03e1998b0464..bfea78171f7c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.h
index 05f817125d3c..f1ad07e78b3a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_param.h
index 880454d4dcf5..6fb3b38f49e7 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_types.h
index b8fdb7a51a12..836e348c184f 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/eed1_8/ia_css_eed1_8_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.c
index 0b96b9618ab6..bae1ca2cd505 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.h
index 0aac424d9d54..540423d85e9d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_param.h
index 8f36af1a5ae6..5275a1dadefa 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_types.h
index 7cfebaf05dc2..16b6a3ddcd08 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fc/fc_1.0/ia_css_formats_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_param.h
index adfd4b37171c..6cd635f3ee27 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_types.h
index 6485834704da..3a55d4c698e6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fixedbds/fixedbds_1.0/ia_css_fixedbds_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.c
index 7b55dfea359a..47b5c7956fbd 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.h
index 02e85570bd1c..12187d213d90 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_param.h
index f103ddd882fd..b21415743705 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_types.h
index 95552a0e3c45..14dc5e183184 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/fpn/fpn_1.0/ia_css_fpn_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.c
index 1a489c93eb97..7f3f87920dc7 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.h
index 2fb2927b07f1..c2dc1574a3da 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_param.h
index beeba6c9be6a..a81233add437 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.c
index 15cf0575aac5..08e173fff6e0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.h
index 9686623d9cdd..ee6fa07b3511 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_types.h
index c896c138b569..ccd3d91a24d3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_1.0/ia_css_gc_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.c
index 29a1e013a9aa..76209b7c14cb 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.h
index ca7d54576471..eabf78737bfc 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_param.h
index 458c72a45eef..af456e75e476 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.c
index d2fe0052fb00..fddb9e2ec24e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.h
index 8686e6e3586c..13049fbfab84 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_types.h
index 30780394ed7f..ae16409d84a5 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/gc/gc_2/ia_css_gc2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.c
index 643b7d9095e6..698550cc2fcc 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /* Release Version: irci_ecr-master_20150911_0724 */
 /*
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.h
index ecc8bea3542b..04599ab590cd 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /* Release Version: irci_ecr-master_20150911_0724 */
 /*
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_param.h
index 47651cdf94b7..97a89fd3cfda 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /* Release Version: irci_ecr-master_20150911_0724 */
 /*
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_types.h
index 7c2f8f213bef..1b4090880201 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/hdr/ia_css_hdr_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Release Version: irci_stable_candrpv_0415_20150521_0458 */
 /* Release Version: irci_ecr-master_20150911_0724 */
 /*
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.c
index bf71a7f661e6..ea8055148fb3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.h
index f9db75a089af..635ccb1b27d0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_param.h
index 77cfed002e14..283ace8385b0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_types.h
index 59b58f30af11..d06d25c9b81c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/bayer_io_ls/ia_css_bayer_io_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_param.h
index 22aedcc4470f..5e0e4cd5bfba 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_types.h
index e49bd95f77da..0801481c4b49 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/common/ia_css_common_io_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.c
index ba490c5fc18e..f8bd207b28e1 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.h
index 556e53e05607..e7cfd380e108 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_param.h
index 1cc2aff57ef3..9b7537d508ad 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_types.h
index 990299a0d2c7..137a2a05c65b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ipu2_io_ls/yuv444_io_ls/ia_css_yuv444_io_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c
index 808815ba8f4d..6d8a35a73750 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h
index 85a816276323..1419fa9a07f0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator_param.h
index d308126e41d3..e062f8d06128 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
index 7a6abe0c5b7d..562662ab8a44 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
index ae9ede2b685a..6c1189e1d263 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_param.h
index 1ac2c9c50a71..66b8fb259218 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.c
index c094f3df10aa..d205d64e0b94 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.h
index 10a50aa82be8..d451efbaa184 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_types.h
index 9aa352cbcffc..5492af0dfa9f 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc1_5/ia_css_macc1_5_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.c
index 0b1d1bf5e8a0..f2d3832a0039 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.h
index 0e13e9cb0547..912db92540e6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_param.h
index 3b4e440c3c30..71665204e4dd 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.c
index f9a430da54b8..946b074e8288 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.h
index 96d62c9912b8..35099cb79d6a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_types.h
index 093302f08bca..172a518cb935 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/macc/macc_1.0/ia_css_macc_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.c
index 102dc6feb6d1..69283b631da7 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.h
index 42b5143ef78f..3987abcae85c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm_param.h
index d432e2e39df6..06c39fdfc9e3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/norm/norm_1.0/ia_css_norm_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.c
index f7403ce16c99..c4ffff630b64 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.h
index 936f6a08a174..26c2e43202dc 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_param.h
index c728f8791ef4..c3c9fc3f9064 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_types.h
index 0ccc09f6eb0f..51e4c35cf659 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob2/ia_css_ob2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.c
index 6367d94275fb..12191cd36d5c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.h
index d767c5856880..dfcac0c64040 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_param.h
index f5c3e14a1a8a..991aa3c4051b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_types.h
index 317b24e240d8..b74296517b03 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ob/ob_1.0/ia_css_ob_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.c
index df4cb9c362a4..c8e074f42353 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.h
index 3d8f61c225cf..1f5a2242640e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_param.h
index 3a63eee58cb6..df125674bb35 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_types.h
index 3248bc3fd6c3..e5f9c05d2120 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/output/output_1.0/ia_css_output_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.c
index 3de108b56005..1603fd44ece3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.h
index ad6d7ca783e4..8d940959f40a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_param.h
index 87898d2df2de..9ae290450865 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_types.h
index b7ecd8f40c1c..549f1a36bb7e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/qplane/qplane_2/ia_css_qplane_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.c
index 1a85f20770c1..1c6f6792d57b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.h
index 36a4079aa24a..346928435a8b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_param.h
index a1a314272a77..c4b5f719a336 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_types.h
index 7838f59a2986..1ccaa3c48407 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/raw/raw_1.0/ia_css_raw_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.c
index 5aaa018370ef..29c707ecf9f3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.h
index d4df1dc540a0..4c2b3de7281e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/raw_aa_binning/raw_aa_binning_1.0/ia_css_raa.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
index cbe3836419a2..061558fbe329 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h
index 55bd7aabf6aa..3ce590b436a1 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_param.h
index 5cb38350ce4f..c727e27a8e14 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_state.h b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_state.h
index 1d30ccc2c638..d4f7a66763eb 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_state.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_state.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_types.h
index 156d6cd8cf3a..07d040bcf281 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c
index d093565d9eb8..ba52c80df4a5 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.h
index 13d19dab1f1d..f9926e297568 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_param.h
index 041101767ff2..9cb75b220678 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_types.h
index 5a5b277ca0eb..f369e9b95ca8 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/s3a/s3a_1.0/ia_css_s3a_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c
index 43954ed6d106..f3fb4b9b3c82 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.h
index efbe40b399dd..f1eb568f23d4 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_param.h
index 38a625821987..fab11d3350fd 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_types.h
index 41f3ee7158ff..aae534521b7b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common.host.h
index 7f84762d9b98..7b661e49b4d0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h
index e257841bba67..c92f5836059b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
index 1cbcf070ab00..3e72dabe7ef6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h
index d670bfa7f826..0d0ed96e08fe 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis_types.h
index 5542fa5555b4..a8f2b8afcfd6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
index c855467cd20c..7922198f6784 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h
index b6d103d862be..e0e6b9c338ad 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2_types.h
index e8ae135bfd6a..d75b72e9551b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.c
index 69921c27bfae..fef8c5457cda 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.h
index bc6e1653e354..7e44d78c5d5d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_param.h
index a93891448cde..e904f7122142 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_types.h
index e4263afee7da..0f69f9128f0e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tdf/tdf_1.0/ia_css_tdf_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr3/ia_css_tnr3_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr3/ia_css_tnr3_types.h
index 349f0800bbe6..4b53fddfcd2d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr3/ia_css_tnr3_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr3/ia_css_tnr3_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c
index 4f386186e2d6..ac80e6c6e67e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h
index 0e72b6fd50db..90d6e6b44a8d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_param.h
index 9b527eccc35a..60a2542cf685 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_state.h b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_state.h
index 901aa1e298e0..d57238423947 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_state.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_state.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_types.h
index 98b0daeeab39..92dbe13895c6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/uds/uds_1.0/ia_css_uds_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/uds/uds_1.0/ia_css_uds_param.h
index 26b7b5bc9391..784b5c4facd2 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/uds/uds_1.0/ia_css_uds_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/uds/uds_1.0/ia_css_uds_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
index 8599d865e93a..358cb7d2cd4c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h
index 5aa4db1ac6bb..0e8de034a00e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_param.h
index 171a98508a88..487ddf163324 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_types.h
index a4d39e2e9d8e..24fbb61d349c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.c
index d07c500eb542..01d1a2d361c3 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.h
index 545dea39c2e0..ffd75c8a64fb 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_param.h
index dcf548da55cc..51b2ba8efc18 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_types.h
index 59cbd71ef332..20ae73c0ef8c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/wb/wb_1.0/ia_css_wb_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.c
index e04c604ba612..1cd59660857f 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.h
index 31833b78739f..686101c0b6a9 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_param.h
index 72a5c5fd10e7..7ebf139f3618 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.c
index 78653b2666a4..b892dd8ebc2e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.h
index 130086713a7f..2f4ab8ad402b 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_table.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_types.h
index 22189c936f64..9a4d2e470524 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_1.0/ia_css_xnr_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index 629f07faf20a..9c9d9b9a453e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.h
index 959533ec29c6..6b57990b72da 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_param.h
index 7d108669e19a..c728db7ce917 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_types.h
index 6963bef3c07d..4447ba31ad69 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.c
index a1d0e915636d..048ffbc90b8e 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.h
index 20165093a298..049706e1ffa9 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_param.h
index 8f104bcb4d0f..8d9069ec28a1 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_types.h
index 1a62e1dbfc6f..da1ba21a0726 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.c
index 9a3cd59c4507..08e9d72c143f 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.h
index 38204f8c5735..eaf253d59c4d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_param.h b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_param.h
index 7479bce598d5..96c80b3af426 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_param.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_types.h
index 36e4bb61b38c..ab77f4e85319 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ynr/ynr_2/ia_css_ynr2_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/modes/interface/input_buf.isp.h b/drivers/staging/media/atomisp/pci/isp/modes/interface/input_buf.isp.h
index 5774c905d8e1..f86cf9bf13a5 100644
--- a/drivers/staging/media/atomisp/pci/isp/modes/interface/input_buf.isp.h
+++ b/drivers/staging/media/atomisp/pci/isp/modes/interface/input_buf.isp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_const.h b/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_const.h
index fc392c7fb18b..11e439d838ae 100644
--- a/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_const.h
+++ b/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_const.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h b/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h
index 6bdf8451e7d4..ae273c826808 100644
--- a/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_input_system_global.h b/drivers/staging/media/atomisp/pci/isp2400_input_system_global.h
index 759141c9310a..b4142bdde51b 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_input_system_global.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_input_system_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h b/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h
index 3c0e2efb08ae..58ea58ba56e4 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_input_system_private.h b/drivers/staging/media/atomisp/pci/isp2400_input_system_private.h
index 0ce9cbc0063e..9c39ca2da923 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_input_system_private.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_input_system_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_input_system_public.h b/drivers/staging/media/atomisp/pci/isp2400_input_system_public.h
index d0de27abb95a..689e451f1ce2 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_input_system_public.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_input_system_public.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_support.h b/drivers/staging/media/atomisp/pci/isp2400_support.h
index e9106d1e6a63..06d04853d4ee 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_support.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_support.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_system_global.h b/drivers/staging/media/atomisp/pci/isp2400_system_global.h
index 06fce25f2034..ed3c24a77a3c 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_system_global.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_system_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2400_system_local.h b/drivers/staging/media/atomisp/pci/isp2400_system_local.h
index dad28e42ce5c..0574bb9a0a77 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_system_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h b/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h
index 9c882fe134f4..5070e651f7c4 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h b/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h
index f199423e28da..f52a8ca5f86b 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h b/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h
index 3f60f59ae51f..f3ca5d1bcb01 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2401_mamoiada_params.h b/drivers/staging/media/atomisp/pci/isp2401_mamoiada_params.h
index 42f821473826..03d3329cd228 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_mamoiada_params.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_mamoiada_params.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2401_system_global.h b/drivers/staging/media/atomisp/pci/isp2401_system_global.h
index 213b6ee52208..67464e59c35b 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_system_global.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_system_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp2401_system_local.h b/drivers/staging/media/atomisp/pci/isp2401_system_local.h
index 1917b1d3b660..6605e1a92900 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_system_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp_acquisition_defs.h b/drivers/staging/media/atomisp/pci/isp_acquisition_defs.h
index 5bdc16c71e82..8e4bddc3790d 100644
--- a/drivers/staging/media/atomisp/pci/isp_acquisition_defs.h
+++ b/drivers/staging/media/atomisp/pci/isp_acquisition_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/isp_capture_defs.h b/drivers/staging/media/atomisp/pci/isp_capture_defs.h
index 5ab796e5a53f..14cbb6390d3e 100644
--- a/drivers/staging/media/atomisp/pci/isp_capture_defs.h
+++ b/drivers/staging/media/atomisp/pci/isp_capture_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/mmu/isp_mmu.c b/drivers/staging/media/atomisp/pci/mmu/isp_mmu.c
index 8930fd629dc3..72287de75a63 100644
--- a/drivers/staging/media/atomisp/pci/mmu/isp_mmu.c
+++ b/drivers/staging/media/atomisp/pci/mmu/isp_mmu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Medifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/mmu/sh_mmu_mrfld.c b/drivers/staging/media/atomisp/pci/mmu/sh_mmu_mrfld.c
index 2e5ce822f55b..0fbb361f5661 100644
--- a/drivers/staging/media/atomisp/pci/mmu/sh_mmu_mrfld.c
+++ b/drivers/staging/media/atomisp/pci/mmu/sh_mmu_mrfld.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Merrifield PNW Camera Imaging ISP subsystem.
  *
diff --git a/drivers/staging/media/atomisp/pci/mmu_defs.h b/drivers/staging/media/atomisp/pci/mmu_defs.h
index c038f39ffd25..03cfb5833027 100644
--- a/drivers/staging/media/atomisp/pci/mmu_defs.h
+++ b/drivers/staging/media/atomisp/pci/mmu_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h b/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
index 6b4ff04a2c37..560580023b29 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index cca0c6161350..4e0d067ceb3d 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h b/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h
index e8c342eb73c9..a461b0ed03f1 100644
--- a/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h
+++ b/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq_comm.h b/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq_comm.h
index 508209711edc..cddf5882b76a 100644
--- a/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq_comm.h
+++ b/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq_comm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c b/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
index cae8afaea354..38e85735293b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
+++ b/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
index 3b374eabe7b5..e04d2485ea75 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_internal.h b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_internal.h
index 27136381857f..8ec487ad4298 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_internal.h
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_internal.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_pipe.h b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_pipe.h
index e9964bb421d6..538918cfb2fc 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_pipe.h
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug_pipe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
index c46621315e7b..e367c5e0fc5a 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/event/interface/ia_css_event.h b/drivers/staging/media/atomisp/pci/runtime/event/interface/ia_css_event.h
index 1fcd0fadcac8..ebbd90b14bff 100644
--- a/drivers/staging/media/atomisp/pci/runtime/event/interface/ia_css_event.h
+++ b/drivers/staging/media/atomisp/pci/runtime/event/interface/ia_css_event.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/event/src/event.c b/drivers/staging/media/atomisp/pci/runtime/event/src/event.c
index 0de9de64db55..c608fa168fe6 100644
--- a/drivers/staging/media/atomisp/pci/runtime/event/src/event.c
+++ b/drivers/staging/media/atomisp/pci/runtime/event/src/event.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/eventq/interface/ia_css_eventq.h b/drivers/staging/media/atomisp/pci/runtime/eventq/interface/ia_css_eventq.h
index ad725e69253a..fd001ae3522d 100644
--- a/drivers/staging/media/atomisp/pci/runtime/eventq/interface/ia_css_eventq.h
+++ b/drivers/staging/media/atomisp/pci/runtime/eventq/interface/ia_css_eventq.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/eventq/src/eventq.c b/drivers/staging/media/atomisp/pci/runtime/eventq/src/eventq.c
index 4436e82f1487..0c0ba9f3d3d0 100644
--- a/drivers/staging/media/atomisp/pci/runtime/eventq/src/eventq.c
+++ b/drivers/staging/media/atomisp/pci/runtime/eventq/src/eventq.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h b/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h
index bbbb3388ad11..31f01e0f58aa 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame_comm.h b/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame_comm.h
index 0a98d363e2bf..ce6110efbfc9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame_comm.h
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame_comm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
index 5407a5f65a5b..10c4907187d9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h b/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h
index de7ab8048e0c..2c440feec3ce 100644
--- a/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c b/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c
index 12dd1fa5fc73..89cded6b6e2b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/inputfifo/interface/ia_css_inputfifo.h b/drivers/staging/media/atomisp/pci/runtime/inputfifo/interface/ia_css_inputfifo.h
index d2dd231b6296..7950c5c36693 100644
--- a/drivers/staging/media/atomisp/pci/runtime/inputfifo/interface/ia_css_inputfifo.h
+++ b/drivers/staging/media/atomisp/pci/runtime/inputfifo/interface/ia_css_inputfifo.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/inputfifo/src/inputfifo.c b/drivers/staging/media/atomisp/pci/runtime/inputfifo/src/inputfifo.c
index e5a339fb52f2..3618b54464da 100644
--- a/drivers/staging/media/atomisp/pci/runtime/inputfifo/src/inputfifo.c
+++ b/drivers/staging/media/atomisp/pci/runtime/inputfifo/src/inputfifo.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h b/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h
index 37ff4b57f895..0ea5d6fdc88b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param_types.h b/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param_types.h
index 5d23b2f57719..8cdeae98bda8 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param_types.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
index f5aba4780a7f..e861777385a0 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h b/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h
index 88a9709015ae..f975429b8705 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys_comm.h b/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys_comm.h
index 6ad7a0cd5146..6f1a86c81d7c 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys_comm.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys_comm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c
index d0bd0ec27ccc..5a44d8f6c196 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.h
index 79d7c4b29bf4..11f730dc1c08 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c
index 9055ed387673..9710493c47ac 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.h
index 7155e2c6e05c..7c754ec7224a 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.c
index 930fa7a0ff53..68baec78b1c4 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.h
index e3d07ac390fc..88c3d5581999 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_dma_rmgr.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_init.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_init.c
index b923233ec5b0..de442f1fa6ba 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_init.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_init.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.c
index 53355a55d05d..bc4a2ff3c0fc 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.h
index b55cf02c8bce..78a4c867fb1b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/isys_stream2mmio_rmgr.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
index 0c4e3d86c5d6..4f0dcdfa13be 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.c
index 9a795a21d3e6..95cf6ac342b6 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.h b/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.h
index b675907791ad..fbdbca0cfcc8 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/virtual_isys.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
index 022110fbe285..1f4afd163ffa 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline_common.h b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline_common.h
index b96a5b146096..cc44f03c3b34 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline_common.h
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline_common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
index 3638c9ebebf9..29207fe120a0 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue.h b/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue.h
index ea08016e5b7e..08112be4633f 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue.h
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue_comm.h b/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue_comm.h
index 87fa4288d9a6..1379ae8f8c01 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue_comm.h
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/interface/ia_css_queue_comm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
index f28ec876709a..aea6c66a3cee 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
index d3bf20172132..fdca743c4ab7 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.h b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.h
index 41bec5675997..d5107adccef9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.h
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
index 0ecbb42ea38f..9cd3d92b34c9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h
index b3cf42c67187..ac969afc8bb4 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c
index 479e16d3cbc5..c94a428aadde 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index c95a1687694e..1ea74296fc8d 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010-2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h b/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h
index 3af0cb167fd9..efe6c4a82caf 100644
--- a/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h
+++ b/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl_comm.h b/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl_comm.h
index ca37c4ab7544..78e0f3096f60 100644
--- a/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl_comm.h
+++ b/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl_comm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c b/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
index 3024ade997b7..753a99703f1e 100644
--- a/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
+++ b/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/tagger/interface/ia_css_tagger_common.h b/drivers/staging/media/atomisp/pci/runtime/tagger/interface/ia_css_tagger_common.h
index 899294646494..285867ea8aa7 100644
--- a/drivers/staging/media/atomisp/pci/runtime/tagger/interface/ia_css_tagger_common.h
+++ b/drivers/staging/media/atomisp/pci/runtime/tagger/interface/ia_css_tagger_common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c b/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
index ab46dc10c7a7..679ef8242574 100644
--- a/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
+++ b/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/scalar_processor_2400_params.h b/drivers/staging/media/atomisp/pci/scalar_processor_2400_params.h
index 9b6c2893d950..7e7188797b0a 100644
--- a/drivers/staging/media/atomisp/pci/scalar_processor_2400_params.h
+++ b/drivers/staging/media/atomisp/pci/scalar_processor_2400_params.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 6f05b68fa747..e42bb9e95290 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_defs.h b/drivers/staging/media/atomisp/pci/sh_css_defs.h
index 1317e86849fb..92d80213860f 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_defs.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_dvs_info.h b/drivers/staging/media/atomisp/pci/sh_css_dvs_info.h
index 23044aad654f..6f058f132300 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_dvs_info.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_dvs_info.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
 Support for Intel Camera Imaging ISP subsystem.
 Copyright (c) 2010 - 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 7cd27707a35f..7774a5f8ab8e 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.h b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
index 22a58ab9cad7..b8f61fb77165 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_frac.h b/drivers/staging/media/atomisp/pci/sh_css_frac.h
index cd2d755ec523..8f08df5c88cc 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_frac.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_frac.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_host_data.c b/drivers/staging/media/atomisp/pci/sh_css_host_data.c
index 69a7464b772a..39a9b9812682 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_host_data.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_host_data.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_hrt.c b/drivers/staging/media/atomisp/pci/sh_css_hrt.c
index c4935568d550..c881edaa56d8 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_hrt.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_hrt.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_hrt.h b/drivers/staging/media/atomisp/pci/sh_css_hrt.h
index c36908f911dd..168bbd579798 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_hrt.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_hrt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_internal.h b/drivers/staging/media/atomisp/pci/sh_css_internal.h
index feb65ca53c6a..d56188aa8f09 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_internal.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_internal.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_legacy.h b/drivers/staging/media/atomisp/pci/sh_css_legacy.h
index 00d9a6c59871..567c8d6dcc2c 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_legacy.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_legacy.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_metadata.c b/drivers/staging/media/atomisp/pci/sh_css_metadata.c
index ebdf84d4a138..04a4b7da85e2 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_metadata.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_metadata.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_metrics.c b/drivers/staging/media/atomisp/pci/sh_css_metrics.c
index 44a01c0db808..9744bbebe1bc 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_metrics.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_metrics.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_metrics.h b/drivers/staging/media/atomisp/pci/sh_css_metrics.h
index f465d1545b8b..f4bcd08384e9 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_metrics.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_metrics.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
index b0c9880e9fc5..6a73424acfa1 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_mipi.h b/drivers/staging/media/atomisp/pci/sh_css_mipi.h
index 57af22bb531c..52f08a103883 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_mipi.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_mipi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_mmu.c b/drivers/staging/media/atomisp/pci/sh_css_mmu.c
index 4965a9e5e161..1da7459eaa25 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_mmu.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_mmu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_morph.c b/drivers/staging/media/atomisp/pci/sh_css_morph.c
index 1f4fa25b1e79..edd1da941ccb 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_morph.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_morph.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
index 9c2125c5bc2d..ff0082d02af3 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.h b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.h
index b4cffbbdafde..7782f76b9f97 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_shading.c b/drivers/staging/media/atomisp/pci/sh_css_param_shading.c
index 0a6e0dbe1e2a..046f34857891 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_shading.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_shading.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_shading.h b/drivers/staging/media/atomisp/pci/sh_css_param_shading.h
index 6e480d31c201..7cdfaaec0b1c 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_shading.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_shading.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 98a2b77da62b..1a799f659198 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.h b/drivers/staging/media/atomisp/pci/sh_css_params.h
index e723e6f206d0..62a7b6ada237 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_params_internal.h b/drivers/staging/media/atomisp/pci/sh_css_params_internal.h
index baca24532f9f..8e5e6f273a95 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params_internal.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_params_internal.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_pipe.c b/drivers/staging/media/atomisp/pci/sh_css_pipe.c
index 1f57ffad8921..b6bd47d9b01c 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_pipe.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_pipe.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_properties.c b/drivers/staging/media/atomisp/pci/sh_css_properties.c
index 50f99c53c3d4..de588f9bd540 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_properties.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_properties.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_shading.c b/drivers/staging/media/atomisp/pci/sh_css_shading.c
index 2a2d0f4db44b..462caf9cb571 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_shading.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_shading.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index dae0960cf8d5..0afc083ea751 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.h b/drivers/staging/media/atomisp/pci/sh_css_sp.h
index 7d4e13f1e038..153b005becda 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_stream.c b/drivers/staging/media/atomisp/pci/sh_css_stream.c
index 60bddbb3d4c6..a768ce90f51c 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_stream.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_stream.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_stream_format.c b/drivers/staging/media/atomisp/pci/sh_css_stream_format.c
index 548d4a3567b2..a798f0537050 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_stream_format.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_stream_format.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_stream_format.h b/drivers/staging/media/atomisp/pci/sh_css_stream_format.h
index 32ebd6e0f344..84b7942147ad 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_stream_format.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_stream_format.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_struct.h b/drivers/staging/media/atomisp/pci/sh_css_struct.h
index fd87c2c5c92c..bd260252317a 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_struct.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_struct.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_uds.h b/drivers/staging/media/atomisp/pci/sh_css_uds.h
index d9bcae6007bf..8d9c5c92b692 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_uds.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_uds.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_version.c b/drivers/staging/media/atomisp/pci/sh_css_version.c
index 28fc4493cde2..c9d5c02c4571 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_version.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_version.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/str2mem_defs.h b/drivers/staging/media/atomisp/pci/str2mem_defs.h
index 1cb62444cf68..e8cb456ac9c7 100644
--- a/drivers/staging/media/atomisp/pci/str2mem_defs.h
+++ b/drivers/staging/media/atomisp/pci/str2mem_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/streaming_to_mipi_defs.h b/drivers/staging/media/atomisp/pci/streaming_to_mipi_defs.h
index 60143b8743a2..e0e3a6a66245 100644
--- a/drivers/staging/media/atomisp/pci/streaming_to_mipi_defs.h
+++ b/drivers/staging/media/atomisp/pci/streaming_to_mipi_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/system_global.h b/drivers/staging/media/atomisp/pci/system_global.h
index 7f833c15f3ce..16d0a2e9a4dc 100644
--- a/drivers/staging/media/atomisp/pci/system_global.h
+++ b/drivers/staging/media/atomisp/pci/system_global.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *    (c) 2020 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
diff --git a/drivers/staging/media/atomisp/pci/system_local.h b/drivers/staging/media/atomisp/pci/system_local.h
index fbb5daadac9f..dfcc4c2b8f16 100644
--- a/drivers/staging/media/atomisp/pci/system_local.h
+++ b/drivers/staging/media/atomisp/pci/system_local.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *    (c) 2020 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
diff --git a/drivers/staging/media/atomisp/pci/timed_controller_defs.h b/drivers/staging/media/atomisp/pci/timed_controller_defs.h
index 75451e090f4f..9ddad87702de 100644
--- a/drivers/staging/media/atomisp/pci/timed_controller_defs.h
+++ b/drivers/staging/media/atomisp/pci/timed_controller_defs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
diff --git a/drivers/staging/media/atomisp/pci/version.h b/drivers/staging/media/atomisp/pci/version.h
index bbc4948baea9..a74a7bbfdb0e 100644
--- a/drivers/staging/media/atomisp/pci/version.h
+++ b/drivers/staging/media/atomisp/pci/version.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Support for Intel Camera Imaging ISP subsystem.
  * Copyright (c) 2015, Intel Corporation.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
