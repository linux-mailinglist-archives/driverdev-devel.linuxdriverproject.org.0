Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A20224A43
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 11:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A05C2880C1;
	Sat, 18 Jul 2020 09:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uaoYtJwG1iIp; Sat, 18 Jul 2020 09:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFD6288012;
	Sat, 18 Jul 2020 09:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A6FE1BF5F5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B40C2039E
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4CrYlWf5aVXp for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 09:28:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BD71B20371
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 09:28:27 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 551A722B49;
 Sat, 18 Jul 2020 09:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595064507;
 bh=rt7r8XiIxEkqFJ0t2gUyj37btoYwlDfLnXTwW+Dcn+Q=;
 h=From:To:Cc:Subject:Date:From;
 b=CC9PAnBlKlln9NFHVv2TmXTPSGbQLX/l2KP8sf67U7COCyDvO5EjtG0u345XdfELt
 blHJCI30VuAGtNCqiqjI9HPCY40G/OInjmEFlakDmGsI5ZwYefAPZihaWEwz3uvrs+
 uEVTUVWjDna/dBIiGJvSxdlrGnCfrHSFIoI1OvE0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1jwj8r-005wDS-7H; Sat, 18 Jul 2020 11:28:25 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 1/4] media: atomisp: get rid of some unused static vars
Date: Sat, 18 Jul 2020 11:28:19 +0200
Message-Id: <22a1ad531d3b2030fe0b0ffae9d883b0d5cc0406.1595062851.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several static vars declared inside the
system local headers. This causes lots of warnings when W=1.

Remove the unused ones.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/isp2400_system_local.h  | 38 -------------------
 .../media/atomisp/pci/isp2401_system_local.h  | 30 ---------------
 2 files changed, 68 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/isp2400_system_local.h b/drivers/staging/media/atomisp/pci/isp2400_system_local.h
index 675b8e5bdcc1..f889b7bf8f2d 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_system_local.h
@@ -38,11 +38,6 @@
 
 #define GP_FIFO_BASE   ((hrt_address)0x0000000000090104)		/* This is NOT a base address */
 
-/* DDR */
-static const hrt_address DDR_BASE[N_DDR_ID] = {
-	(hrt_address)0x0000000120000000ULL
-};
-
 /* ISP */
 static const hrt_address ISP_CTRL_BASE[N_ISP_ID] = {
 	(hrt_address)0x0000000000020000ULL
@@ -56,16 +51,6 @@ static const hrt_address ISP_BAMEM_BASE[N_BAMEM_ID] = {
 	(hrt_address)0x0000000000100000ULL
 };
 
-static const hrt_address ISP_VAMEM_BASE[N_VAMEM_ID] = {
-	(hrt_address)0x00000000001C0000ULL,
-	(hrt_address)0x00000000001D0000ULL,
-	(hrt_address)0x00000000001E0000ULL
-};
-
-static const hrt_address ISP_HMEM_BASE[N_HMEM_ID] = {
-	(hrt_address)0x00000000001F0000ULL
-};
-
 /* SP */
 static const hrt_address SP_CTRL_BASE[N_SP_ID] = {
 	(hrt_address)0x0000000000010000ULL
@@ -75,10 +60,6 @@ static const hrt_address SP_DMEM_BASE[N_SP_ID] = {
 	(hrt_address)0x0000000000300000ULL
 };
 
-static const hrt_address SP_PMEM_BASE[N_SP_ID] = {
-	(hrt_address)0x00000000000B0000ULL
-};
-
 /* MMU */
 /*
  * MMU0_ID: The data MMU
@@ -177,11 +158,6 @@ static const hrt_address RX_BASE[N_RX_ID] = {
 
 #define GP_FIFO_BASE   ((hrt_address)0x00090104)		/* This is NOT a base address */
 
-/* DDR : Attention, this value not defined in 32-bit */
-static const hrt_address DDR_BASE[N_DDR_ID] = {
-	(hrt_address)0x00000000UL
-};
-
 /* ISP */
 static const hrt_address ISP_CTRL_BASE[N_ISP_ID] = {
 	(hrt_address)0x00020000UL
@@ -195,16 +171,6 @@ static const hrt_address ISP_BAMEM_BASE[N_BAMEM_ID] = {
 	(hrt_address)0x100000UL
 };
 
-static const hrt_address ISP_VAMEM_BASE[N_VAMEM_ID] = {
-	(hrt_address)0xffffffffUL,
-	(hrt_address)0xffffffffUL,
-	(hrt_address)0xffffffffUL
-};
-
-static const hrt_address ISP_HMEM_BASE[N_HMEM_ID] = {
-	(hrt_address)0xffffffffUL
-};
-
 /* SP */
 static const hrt_address SP_CTRL_BASE[N_SP_ID] = {
 	(hrt_address)0x00010000UL
@@ -214,10 +180,6 @@ static const hrt_address SP_DMEM_BASE[N_SP_ID] = {
 	(hrt_address)0x00300000UL
 };
 
-static const hrt_address SP_PMEM_BASE[N_SP_ID] = {
-	(hrt_address)0x000B0000UL
-};
-
 /* MMU */
 /*
  * MMU0_ID: The data MMU
diff --git a/drivers/staging/media/atomisp/pci/isp2401_system_local.h b/drivers/staging/media/atomisp/pci/isp2401_system_local.h
index b09f8faadb13..1bb01e627cd7 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_system_local.h
@@ -36,11 +36,6 @@
 
 #define GP_FIFO_BASE   ((hrt_address)0x0000000000090104)		/* This is NOT a base address */
 
-/* DDR */
-static const hrt_address DDR_BASE[N_DDR_ID] = {
-	0x0000000120000000ULL
-};
-
 /* ISP */
 static const hrt_address ISP_CTRL_BASE[N_ISP_ID] = {
 	0x0000000000020000ULL
@@ -54,16 +49,6 @@ static const hrt_address ISP_BAMEM_BASE[N_BAMEM_ID] = {
 	0x0000000000100000ULL
 };
 
-static const hrt_address ISP_VAMEM_BASE[N_VAMEM_ID] = {
-	0x00000000001C0000ULL,
-	0x00000000001D0000ULL,
-	0x00000000001E0000ULL
-};
-
-static const hrt_address ISP_HMEM_BASE[N_HMEM_ID] = {
-	0x00000000001F0000ULL
-};
-
 /* SP */
 static const hrt_address SP_CTRL_BASE[N_SP_ID] = {
 	0x0000000000010000ULL
@@ -217,11 +202,6 @@ static const hrt_address STREAM2MMIO_CTRL_BASE[N_STREAM2MMIO_ID] = {
 
 #define GP_FIFO_BASE   ((hrt_address)0x00090104)		/* This is NOT a base address */
 
-/* DDR : Attention, this value not defined in 32-bit */
-static const hrt_address DDR_BASE[N_DDR_ID] = {
-	0x00000000UL
-};
-
 /* ISP */
 static const hrt_address ISP_CTRL_BASE[N_ISP_ID] = {
 	0x00020000UL
@@ -235,16 +215,6 @@ static const hrt_address ISP_BAMEM_BASE[N_BAMEM_ID] = {
 	0xffffffffUL
 };
 
-static const hrt_address ISP_VAMEM_BASE[N_VAMEM_ID] = {
-	0xffffffffUL,
-	0xffffffffUL,
-	0xffffffffUL
-};
-
-static const hrt_address ISP_HMEM_BASE[N_HMEM_ID] = {
-	0xffffffffUL
-};
-
 /* SP */
 static const hrt_address SP_CTRL_BASE[N_SP_ID] = {
 	0x00010000UL
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
