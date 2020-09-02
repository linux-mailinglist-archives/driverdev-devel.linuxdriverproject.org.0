Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F4D25B0C5
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:10:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4523D87275;
	Wed,  2 Sep 2020 16:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mMhJsMHHu2-x; Wed,  2 Sep 2020 16:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C29E98726F;
	Wed,  2 Sep 2020 16:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0A481BF983
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A76048717B
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lzpkRJyIJjrD for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 18D9887100
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC9EF221EF;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=J4JeDFYvwI7/t1R2PxhAwt3okUEpHkNnAbNmW1c47hA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=K9QP46W0wA2chHgniI6PTlNOKaxlUNhqnuFbzy8KfjuQIjFLWPnvAQVBhEFx2Grko
 JIv1YedwyWgOvWD600mc4Is4h4cgQnneDkHS4w4YF2tEQO219/wDIgvXKG3xGoCnS5
 xT4/BxTXJhZU/2yryqoa2P6VqHPuh/CR/2n+b5q4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tBR-Tb; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 38/38] media: atomisp: cleanup isys_irq headers
Date: Wed,  2 Sep 2020 18:10:41 +0200
Message-Id: <652f59eef30ccd3dc12d8c3c61c632f24100d607.1599062230.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599062230.git.mchehab+huawei@kernel.org>
References: <cover.1599062230.git.mchehab+huawei@kernel.org>
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

Don't need to declare those functions with extern:
	drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h:51:35:  warning: function 'isys_irqc_state_dump' with external linkage has definition
	drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h:68:35:  warning: function 'isys_irqc_reg_store' with external linkage has definition
	drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h:85:39:  warning: function 'isys_irqc_reg_load' with external linkage has definition
	drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c:31:35:  warning: function 'isys_irqc_status_enable' with external linkage has definition

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../pci/css_2401_system/host/isys_irq.c       |  3 +--
 .../css_2401_system/host/isys_irq_private.h   |  8 +++---
 .../host/isys_irq_public.h                    | 25 ++++++++-----------
 .../pci/hive_isp_css_include/isys_irq.h       | 12 ---------
 4 files changed, 15 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c
index 99576af4713c..b6135c4b6eea 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq.c
@@ -28,8 +28,7 @@
 #endif
 
 /* Public interface */
-STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_status_enable(
-    const isys_irq_ID_t	isys_irqc_id)
+void isys_irqc_status_enable(const isys_irq_ID_t	isys_irqc_id)
 {
 	assert(isys_irqc_id < N_ISYS_IRQ_ID);
 
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h
index 1e96f0267ac0..fb168c25bdfc 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/isys_irq_private.h
@@ -29,7 +29,7 @@
 * @brief Get the isys irq status.
 * Refer to "isys_irq.h" for details.
 */
-STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_state_get(
+void isys_irqc_state_get(
     const isys_irq_ID_t	isys_irqc_id,
     isys_irqc_state_t *state)
 {
@@ -48,7 +48,7 @@ STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_state_get(
 * @brief Dump the isys irq status.
 * Refer to "isys_irq.h" for details.
 */
-STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_state_dump(
+void isys_irqc_state_dump(
     const isys_irq_ID_t	isys_irqc_id,
     const isys_irqc_state_t *state)
 {
@@ -65,7 +65,7 @@ STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_state_dump(
  + -------------------------------------------------------*/
 
 /* Support functions */
-STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_reg_store(
+void isys_irqc_reg_store(
     const isys_irq_ID_t	isys_irqc_id,
     const unsigned int	reg_idx,
     const hrt_data	value)
@@ -82,7 +82,7 @@ STORAGE_CLASS_ISYS2401_IRQ_C void isys_irqc_reg_store(
 	ia_css_device_store_uint32(reg_addr, value);
 }
 
-STORAGE_CLASS_ISYS2401_IRQ_C hrt_data isys_irqc_reg_load(
+hrt_data isys_irqc_reg_load(
     const isys_irq_ID_t	isys_irqc_id,
     const unsigned int	reg_idx)
 {
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h
index cd738f4b65a0..736cbc4e3705 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/isys_irq_public.h
@@ -21,25 +21,20 @@
 
 #if defined(ISP2401)
 
-STORAGE_CLASS_ISYS2401_IRQ_H void isys_irqc_state_get(
-    const isys_irq_ID_t	isys_irqc_id,
-    isys_irqc_state_t	*state);
+void isys_irqc_state_get(const isys_irq_ID_t	isys_irqc_id,
+			 isys_irqc_state_t	*state);
 
-STORAGE_CLASS_ISYS2401_IRQ_H void isys_irqc_state_dump(
-    const isys_irq_ID_t	isys_irqc_id,
-    const isys_irqc_state_t *state);
+void isys_irqc_state_dump(const isys_irq_ID_t	isys_irqc_id,
+			  const isys_irqc_state_t *state);
 
-STORAGE_CLASS_ISYS2401_IRQ_H void isys_irqc_reg_store(
-    const isys_irq_ID_t	isys_irqc_id,
-    const unsigned int	reg_idx,
-    const hrt_data		value);
+void isys_irqc_reg_store(const isys_irq_ID_t	isys_irqc_id,
+			 const unsigned int	reg_idx,
+			 const hrt_data		value);
 
-STORAGE_CLASS_ISYS2401_IRQ_H hrt_data isys_irqc_reg_load(
-    const isys_irq_ID_t	isys_irqc_id,
-    const unsigned int	reg_idx);
+hrt_data isys_irqc_reg_load(const isys_irq_ID_t	isys_irqc_id,
+			    const unsigned int	reg_idx);
 
-STORAGE_CLASS_ISYS2401_IRQ_H void isys_irqc_status_enable(
-    const isys_irq_ID_t	isys_irqc_id);
+void isys_irqc_status_enable(const isys_irq_ID_t isys_irqc_id);
 
 #endif /* defined(ISP2401) */
 
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h
index 06bc9e1450ec..001c55ea970b 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/isys_irq.h
@@ -21,20 +21,8 @@
 
 #if defined(ISP2401)
 
-#ifndef __INLINE_ISYS2401_IRQ__
-
-#define STORAGE_CLASS_ISYS2401_IRQ_H extern
-#define STORAGE_CLASS_ISYS2401_IRQ_C extern
 #include "isys_irq_public.h"
 
-#else  /* __INLINE_ISYS2401_IRQ__ */
-
-#define STORAGE_CLASS_ISYS2401_IRQ_H static inline
-#define STORAGE_CLASS_ISYS2401_IRQ_C static inline
-#include "isys_irq_private.h"
-
-#endif /* __INLINE_ISYS2401_IRQ__ */
-
 #endif /* defined(ISP2401) */
 
 #endif	/* __IA_CSS_ISYS_IRQ_H__ */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
