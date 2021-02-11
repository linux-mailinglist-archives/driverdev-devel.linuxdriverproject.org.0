Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6B6318D77
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 15:36:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 498E58723C;
	Thu, 11 Feb 2021 14:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sI0PvC9bGDw7; Thu, 11 Feb 2021 14:36:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93277872BA;
	Thu, 11 Feb 2021 14:36:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88E811BF2F3
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 14:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 822FF86E07
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 14:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0i7mHNZ-57V for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 14:36:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 01BC086DC2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 14:36:43 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id v15so4405656wrx.4
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 06:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=wMDJyfcVFhFNl0wKwC0aWzQLSr6DwAG2EzqZD+MLPtA=;
 b=CgEpKdVG3S9UND7jz8O+rwCPfHSPrerCfQDfo5WE8t+ZiiERKgRyI1IdywvoDYGn/2
 vRspvU+MX+fCNVALk3mfhzUntZClpibH/lzOQXETaOVvbyEb+xiM7PnLJzguiNDTm2CB
 g6nDC0bgmbdPea1QZfMnPHNCuJia6uFQoBt2r6Zfs0vF2AePLbFiWNSD33w+Ahn4MM3P
 hYKH1sLSC/CIm2lL5C18GYK7jKIIp1S8r9ZyqQKZ6vfU+m6+TZxVFZ/OB1rSu+LAX1ns
 B392NwCUE5ELWuF3svs166KUgwEzqdSH6vyHBgImVdhRT2tNmnajOfj5BiiAVOiIW4/p
 P6cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=wMDJyfcVFhFNl0wKwC0aWzQLSr6DwAG2EzqZD+MLPtA=;
 b=Repojm6A4F8gc5bYQ2wsxoY6PFWWbcxEA8cFLk/i0N1onnnFXjxQ2VrjEITRPdpLSV
 j2XZqpZtwzr8cDAYmlBoGn99ZwykjhHBJYWjeqL+SG81F0gjI8NfN3n4lJaO5ApGS363
 rtm4FNSdOYU8ZeaP69ky4F19HDgTkEh0+Yb+1hItlZBH0BAB4Iv5KQ75ywv7HtG0BxX7
 MCuXZs02uMrsMHqYZEzeESnwUjg15qdnbgwM+/uGqSwt4BchWkcPXbULD9ClJMkeMWeJ
 NTdLeZ0u4MoFXwjhy6cL86X+fECFruTEdQMKGxZN39aj2wKJfOBgYHJGo1QcGJJOnHwx
 XURQ==
X-Gm-Message-State: AOAM530/px9zi5hTzAonyMBN+1Z3R00FKHVVUp0PMIFt+fMUQH8tssWj
 WhVMSQ94hpjbTZpuCvsCDpQ=
X-Google-Smtp-Source: ABdhPJxD95y6ho7hMJfPOAmSpOIaXbPffBzSWYVoaFlQc8licPemn6Lcr97hdBto2rYbABBO/MsXdA==
X-Received: by 2002:a05:6000:186f:: with SMTP id
 d15mr6058542wri.237.1613054202337; 
 Thu, 11 Feb 2021 06:36:42 -0800 (PST)
Received: from LEGION ([27.255.58.138])
 by smtp.gmail.com with ESMTPSA id f8sm4952857wrp.65.2021.02.11.06.36.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 06:36:41 -0800 (PST)
Date: Thu, 11 Feb 2021 19:36:37 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, jerome.pouiller@silabs.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wfx: remove unused included header files
Message-ID: <20210211143637.GA177425@LEGION>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Many header files have been included, but never used. Those header
files have been removed.

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
 drivers/staging/wfx/bh.c              | 1 -
 drivers/staging/wfx/bh.h              | 4 ----
 drivers/staging/wfx/bus.h             | 3 ---
 drivers/staging/wfx/bus_sdio.c        | 6 ------
 drivers/staging/wfx/bus_spi.c         | 7 -------
 drivers/staging/wfx/data_rx.c         | 5 -----
 drivers/staging/wfx/data_tx.c         | 5 -----
 drivers/staging/wfx/data_tx.h         | 3 ---
 drivers/staging/wfx/debug.c           | 6 ------
 drivers/staging/wfx/fwio.c            | 2 --
 drivers/staging/wfx/hif_api_cmd.h     | 4 ----
 drivers/staging/wfx/hif_api_general.h | 9 ---------
 drivers/staging/wfx/hif_tx.c          | 4 ----
 drivers/staging/wfx/hif_tx_mib.c      | 5 -----
 drivers/staging/wfx/hwio.c            | 3 ---
 drivers/staging/wfx/hwio.h            | 2 --
 drivers/staging/wfx/key.c             | 2 --
 drivers/staging/wfx/key.h             | 2 --
 drivers/staging/wfx/main.c            | 7 -------
 drivers/staging/wfx/main.h            | 3 ---
 drivers/staging/wfx/queue.c           | 4 ----
 drivers/staging/wfx/queue.h           | 3 ---
 drivers/staging/wfx/scan.h            | 2 --
 drivers/staging/wfx/sta.c             | 6 ------
 drivers/staging/wfx/sta.h             | 2 --
 drivers/staging/wfx/traces.h          | 3 ---
 drivers/staging/wfx/wfx.h             | 3 ---
 27 files changed, 106 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index ed53d0b45592..cd6bcfdfbe9a 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -5,7 +5,6 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/gpio/consumer.h>
 #include <net/mac80211.h>
 
 #include "bh.h"
diff --git a/drivers/staging/wfx/bh.h b/drivers/staging/wfx/bh.h
index 78c49329e22a..92ef3298d4ac 100644
--- a/drivers/staging/wfx/bh.h
+++ b/drivers/staging/wfx/bh.h
@@ -8,10 +8,6 @@
 #ifndef WFX_BH_H
 #define WFX_BH_H
 
-#include <linux/atomic.h>
-#include <linux/wait.h>
-#include <linux/workqueue.h>
-
 struct wfx_dev;
 
 struct wfx_hif {
diff --git a/drivers/staging/wfx/bus.h b/drivers/staging/wfx/bus.h
index ca04b3da6204..ea3911485307 100644
--- a/drivers/staging/wfx/bus.h
+++ b/drivers/staging/wfx/bus.h
@@ -8,9 +8,6 @@
 #ifndef WFX_BUS_H
 #define WFX_BUS_H
 
-#include <linux/mmc/sdio_func.h>
-#include <linux/spi/spi.h>
-
 #define WFX_REG_CONFIG        0x0
 #define WFX_REG_CONTROL       0x1
 #define WFX_REG_IN_OUT_QUEUE  0x2
diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index e06d7e1ebe9c..588edce44854 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -5,19 +5,13 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/module.h>
 #include <linux/mmc/sdio.h>
 #include <linux/mmc/sdio_func.h>
 #include <linux/mmc/card.h>
-#include <linux/interrupt.h>
 #include <linux/of_irq.h>
-#include <linux/irq.h>
 
 #include "bus.h"
 #include "wfx.h"
-#include "hwio.h"
-#include "main.h"
-#include "bh.h"
 
 static const struct wfx_platform_data wfx_sdio_pdata = {
 	.file_fw = "wfm_wf200",
diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
index a99125d1a30d..f89855abe9f8 100644
--- a/drivers/staging/wfx/bus_spi.c
+++ b/drivers/staging/wfx/bus_spi.c
@@ -6,19 +6,12 @@
  * Copyright (c) 2011, Sagrad Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/module.h>
-#include <linux/delay.h>
-#include <linux/gpio/consumer.h>
 #include <linux/spi/spi.h>
-#include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/of.h>
 
 #include "bus.h"
 #include "wfx.h"
-#include "hwio.h"
-#include "main.h"
-#include "bh.h"
 
 #define SET_WRITE 0x7FFF        /* usage: and operation */
 #define SET_READ 0x8000         /* usage: or operation */
diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 385f2d42a0e2..2cfa16279220 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -5,13 +5,8 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/etherdevice.h>
-#include <net/mac80211.h>
-
 #include "data_rx.h"
 #include "wfx.h"
-#include "bh.h"
-#include "sta.h"
 
 static void wfx_rx_handle_ba(struct wfx_vif *wvif, struct ieee80211_mgmt *mgmt)
 {
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 77fb104efdec..76f26e3c4381 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -6,14 +6,9 @@
  * Copyright (c) 2010, ST-Ericsson
  */
 #include <net/mac80211.h>
-#include <linux/etherdevice.h>
 
-#include "data_tx.h"
 #include "wfx.h"
-#include "bh.h"
 #include "sta.h"
-#include "queue.h"
-#include "debug.h"
 #include "traces.h"
 #include "hif_tx_mib.h"
 
diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index 401363d6b563..6b3020097efa 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -8,9 +8,6 @@
 #ifndef WFX_DATA_TX_H
 #define WFX_DATA_TX_H
 
-#include <linux/list.h>
-#include <net/mac80211.h>
-
 #include "hif_api_cmd.h"
 #include "hif_api_mib.h"
 
diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index eedada78c25f..3e87d13eb358 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -5,15 +5,9 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/debugfs.h>
-#include <linux/seq_file.h>
-#include <linux/crc32.h>
-
 #include "debug.h"
 #include "wfx.h"
 #include "sta.h"
-#include "main.h"
-#include "hif_tx.h"
 #include "hif_tx_mib.h"
 
 #define CREATE_TRACE_POINTS
diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
index 1b8aec02d169..1bb9054871c4 100644
--- a/drivers/staging/wfx/fwio.c
+++ b/drivers/staging/wfx/fwio.c
@@ -6,8 +6,6 @@
  * Copyright (c) 2010, ST-Ericsson
  */
 #include <linux/firmware.h>
-#include <linux/slab.h>
-#include <linux/mm.h>
 #include <linux/bitfield.h>
 
 #include "fwio.h"
diff --git a/drivers/staging/wfx/hif_api_cmd.h b/drivers/staging/wfx/hif_api_cmd.h
index 11bc1a58edae..d6b961092606 100644
--- a/drivers/staging/wfx/hif_api_cmd.h
+++ b/drivers/staging/wfx/hif_api_cmd.h
@@ -8,10 +8,6 @@
 #ifndef WFX_HIF_API_CMD_H
 #define WFX_HIF_API_CMD_H
 
-#include <linux/ieee80211.h>
-
-#include "hif_api_general.h"
-
 enum hif_requests_ids {
 	HIF_REQ_ID_RESET                = 0x0a,
 	HIF_REQ_ID_READ_MIB             = 0x05,
diff --git a/drivers/staging/wfx/hif_api_general.h b/drivers/staging/wfx/hif_api_general.h
index 24188945718d..70b253d0265d 100644
--- a/drivers/staging/wfx/hif_api_general.h
+++ b/drivers/staging/wfx/hif_api_general.h
@@ -8,15 +8,6 @@
 #ifndef WFX_HIF_API_GENERAL_H
 #define WFX_HIF_API_GENERAL_H
 
-#ifdef __KERNEL__
-#include <linux/types.h>
-#include <linux/if_ether.h>
-#else
-#include <net/ethernet.h>
-#include <stdint.h>
-#define __packed __attribute__((__packed__))
-#endif
-
 #define HIF_ID_IS_INDICATION      0x80
 #define HIF_COUNTER_MAX           7
 
diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
index 63b437261eb7..17dc13321978 100644
--- a/drivers/staging/wfx/hif_tx.c
+++ b/drivers/staging/wfx/hif_tx.c
@@ -6,11 +6,7 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/etherdevice.h>
-
-#include "hif_tx.h"
 #include "wfx.h"
-#include "bh.h"
 #include "hwio.h"
 #include "debug.h"
 #include "sta.h"
diff --git a/drivers/staging/wfx/hif_tx_mib.c b/drivers/staging/wfx/hif_tx_mib.c
index 1926cf1b62be..6432ed86505c 100644
--- a/drivers/staging/wfx/hif_tx_mib.c
+++ b/drivers/staging/wfx/hif_tx_mib.c
@@ -6,13 +6,8 @@
  * Copyright (c) 2010, ST-Ericsson
  * Copyright (C) 2010, ST-Ericsson SA
  */
-
-#include <linux/etherdevice.h>
-
 #include "wfx.h"
-#include "hif_tx.h"
 #include "hif_tx_mib.h"
-#include "hif_api_mib.h"
 
 int hif_set_output_power(struct wfx_vif *wvif, int val)
 {
diff --git a/drivers/staging/wfx/hwio.c b/drivers/staging/wfx/hwio.c
index 36fbc5b5d64c..089bb41be149 100644
--- a/drivers/staging/wfx/hwio.c
+++ b/drivers/staging/wfx/hwio.c
@@ -5,13 +5,10 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/kernel.h>
-#include <linux/delay.h>
 #include <linux/slab.h>
 
 #include "hwio.h"
 #include "wfx.h"
-#include "bus.h"
 #include "traces.h"
 
 /*
diff --git a/drivers/staging/wfx/hwio.h b/drivers/staging/wfx/hwio.h
index 0b8e4f7157df..8bb9bcfc3182 100644
--- a/drivers/staging/wfx/hwio.h
+++ b/drivers/staging/wfx/hwio.h
@@ -8,8 +8,6 @@
 #ifndef WFX_HWIO_H
 #define WFX_HWIO_H
 
-#include <linux/types.h>
-
 struct wfx_dev;
 
 int wfx_data_read(struct wfx_dev *wdev, void *buf, size_t buf_len);
diff --git a/drivers/staging/wfx/key.c b/drivers/staging/wfx/key.c
index 2ab82bed4c1b..c93d07dcdc10 100644
--- a/drivers/staging/wfx/key.c
+++ b/drivers/staging/wfx/key.c
@@ -5,12 +5,10 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/etherdevice.h>
 #include <net/mac80211.h>
 
 #include "key.h"
 #include "wfx.h"
-#include "hif_tx_mib.h"
 
 static int wfx_alloc_key(struct wfx_dev *wdev)
 {
diff --git a/drivers/staging/wfx/key.h b/drivers/staging/wfx/key.h
index 70a44d0ca35e..4dc9feadaba2 100644
--- a/drivers/staging/wfx/key.h
+++ b/drivers/staging/wfx/key.h
@@ -8,8 +8,6 @@
 #ifndef WFX_KEY_H
 #define WFX_KEY_H
 
-#include <net/mac80211.h>
-
 struct wfx_dev;
 struct wfx_vif;
 
diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
index e7bc1988124a..b9ea9a93fe1a 100644
--- a/drivers/staging/wfx/main.c
+++ b/drivers/staging/wfx/main.c
@@ -10,28 +10,21 @@
  * Copyright (c) 2006, Michael Wu <flamingice@sourmilk.net>
  * Copyright (c) 2004-2006 Jean-Baptiste Note <jbnote@gmail.com>, et al.
  */
-#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_net.h>
-#include <linux/gpio/consumer.h>
 #include <linux/mmc/sdio_func.h>
 #include <linux/spi/spi.h>
-#include <linux/etherdevice.h>
 #include <linux/firmware.h>
 
-#include "main.h"
 #include "wfx.h"
 #include "fwio.h"
 #include "hwio.h"
 #include "bus.h"
-#include "bh.h"
 #include "sta.h"
 #include "key.h"
 #include "scan.h"
 #include "debug.h"
-#include "data_tx.h"
 #include "hif_tx_mib.h"
-#include "hif_api_cmd.h"
 
 #define WFX_PDS_MAX_SIZE 1500
 
diff --git a/drivers/staging/wfx/main.h b/drivers/staging/wfx/main.h
index a0db322383a3..086bcc041b90 100644
--- a/drivers/staging/wfx/main.h
+++ b/drivers/staging/wfx/main.h
@@ -10,11 +10,8 @@
 #ifndef WFX_MAIN_H
 #define WFX_MAIN_H
 
-#include <linux/device.h>
 #include <linux/gpio/consumer.h>
 
-#include "hif_api_general.h"
-
 struct wfx_dev;
 struct hwbus_ops;
 
diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 31c37f69c295..3bddf282a4ce 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -5,13 +5,9 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/sched.h>
 #include <net/mac80211.h>
 
-#include "queue.h"
 #include "wfx.h"
-#include "sta.h"
-#include "data_tx.h"
 #include "traces.h"
 
 void wfx_tx_lock(struct wfx_dev *wdev)
diff --git a/drivers/staging/wfx/queue.h b/drivers/staging/wfx/queue.h
index 80ba19455ef3..e43aa9dfbc45 100644
--- a/drivers/staging/wfx/queue.h
+++ b/drivers/staging/wfx/queue.h
@@ -8,9 +8,6 @@
 #ifndef WFX_QUEUE_H
 #define WFX_QUEUE_H
 
-#include <linux/skbuff.h>
-#include <linux/atomic.h>
-
 struct wfx_dev;
 struct wfx_vif;
 
diff --git a/drivers/staging/wfx/scan.h b/drivers/staging/wfx/scan.h
index c7496a766478..e5b7eef78858 100644
--- a/drivers/staging/wfx/scan.h
+++ b/drivers/staging/wfx/scan.h
@@ -8,8 +8,6 @@
 #ifndef WFX_SCAN_H
 #define WFX_SCAN_H
 
-#include <net/mac80211.h>
-
 struct wfx_dev;
 struct wfx_vif;
 
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 196779a1b89a..5585f9e876e1 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -5,17 +5,11 @@
  * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
  * Copyright (c) 2010, ST-Ericsson
  */
-#include <linux/etherdevice.h>
 #include <net/mac80211.h>
 
 #include "sta.h"
 #include "wfx.h"
-#include "fwio.h"
-#include "bh.h"
-#include "key.h"
 #include "scan.h"
-#include "debug.h"
-#include "hif_tx.h"
 #include "hif_tx_mib.h"
 
 #define HIF_MAX_ARP_IP_ADDRTABLE_ENTRIES 2
diff --git a/drivers/staging/wfx/sta.h b/drivers/staging/wfx/sta.h
index d7b5df5ea4e6..a3fb9fc93fa4 100644
--- a/drivers/staging/wfx/sta.h
+++ b/drivers/staging/wfx/sta.h
@@ -8,8 +8,6 @@
 #ifndef WFX_STA_H
 #define WFX_STA_H
 
-#include <net/mac80211.h>
-
 struct wfx_dev;
 struct wfx_vif;
 
diff --git a/drivers/staging/wfx/traces.h b/drivers/staging/wfx/traces.h
index e34c7a538c65..afe1074e09b3 100644
--- a/drivers/staging/wfx/traces.h
+++ b/drivers/staging/wfx/traces.h
@@ -12,11 +12,8 @@
 #define _WFX_TRACE_H
 
 #include <linux/tracepoint.h>
-#include <net/mac80211.h>
 
 #include "bus.h"
-#include "hif_api_cmd.h"
-#include "hif_api_mib.h"
 
 /* The hell below need some explanations. For each symbolic number, we need to
  * define it with TRACE_DEFINE_ENUM() and in a list for __print_symbolic.
diff --git a/drivers/staging/wfx/wfx.h b/drivers/staging/wfx/wfx.h
index 94898680ccde..a185b82795c4 100644
--- a/drivers/staging/wfx/wfx.h
+++ b/drivers/staging/wfx/wfx.h
@@ -10,9 +10,6 @@
 #ifndef WFX_H
 #define WFX_H
 
-#include <linux/completion.h>
-#include <linux/workqueue.h>
-#include <linux/mutex.h>
 #include <linux/nospec.h>
 #include <net/mac80211.h>
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
