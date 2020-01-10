Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B9136ED5
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 14:57:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDA3C8843A;
	Fri, 10 Jan 2020 13:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YjZ1FqpsGoS4; Fri, 10 Jan 2020 13:57:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 181B787E7D;
	Fri, 10 Jan 2020 13:57:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 373E81BF3C0
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 13:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0BF6887E91
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 13:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OomjKUquL4GN for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 13:57:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com [210.131.2.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAB8987E7D
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 13:57:30 +0000 (UTC)
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 00ADuLH8021001;
 Fri, 10 Jan 2020 22:56:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 00ADuLH8021001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578664582;
 bh=zVyX+jnC81yFPW4LBhJZnImuwwlFDcqtIGqjvmZlyqg=;
 h=From:To:Cc:Subject:Date:From;
 b=vwOmdHD4C4wa/uGHgTN9FkESn/XEWK+Uevv4ZerrGKBY1PZMEDPK7/IWY78IuB2Mg
 4sGcQi7DeKxMh93gH9tb9e5OTYcmRtDlOlgj2FJP7o/S+vnzRE0FEhO29I2LlM9G70
 pLjgpTZ5+v9HHS7E9f+5BUTWn//cnwGU5oXYOi8NfAzmB6X/5vFUzsugJ9Za6S2Hqr
 DzuvkJaDVrha+uERl+0LNUmJC9ys9+d1BUA1BQEg6t3YC6vRiQfWmuFBtSSZZcALJz
 NbDpOLMUsOlv7cxWnKuD1Dln0Rvk0GIuNl1zSysPA3whmpr9SBm+7ufHhfEAZAHV5J
 ga5SnnQ6h6Uaw==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: vc04_services: remove header include path to
 vc04_services
Date: Fri, 10 Jan 2020 22:56:15 +0900
Message-Id: <20200110135615.11617-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix up some relative paths in #include "..." directives, and remove
the include path to drivers/staging/vc04_services.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - fix up some relative paths.
    I tested with/without O= option this time.

 drivers/staging/vc04_services/Makefile                        | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi.h           | 4 ++--
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index afe43fa5a6d7..54d9e2f31916 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -13,5 +13,5 @@ vchiq-objs := \
 obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
 obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
 
-ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
+ccflags-y += -D__VCCOREVER__=0x04000000
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 56b1037d8e25..ff2b960d8cac 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -4,8 +4,8 @@
 #ifndef VCHI_H_
 #define VCHI_H_
 
-#include "interface/vchi/vchi_cfg.h"
-#include "interface/vchi/vchi_common.h"
+#include "vchi_cfg.h"
+#include "vchi_common.h"
 
 /******************************************************************************
  * Global defs
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 0ce3b08b3441..efdd3b1c7d85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -3,7 +3,7 @@
 #include <linux/module.h>
 #include <linux/types.h>
 
-#include "interface/vchi/vchi.h"
+#include "../vchi/vchi.h"
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
