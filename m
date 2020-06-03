Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA74F1EC9EC
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:01:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF49B88808;
	Wed,  3 Jun 2020 07:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vl3Wc5KLCo23; Wed,  3 Jun 2020 07:01:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5768B887C1;
	Wed,  3 Jun 2020 07:01:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEE2E1BF3E9
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C8BCB88773
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OzBSCPyXb79W for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:01:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 607ED8879D
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:01:08 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C3A82068D;
 Wed,  3 Jun 2020 07:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591167668;
 bh=q0nX/UNQT0ZCFaid6ekG7qC7jRPZL13y0p5z+VwqQmA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sEKdzMiUU58/vvw4Ziz8MMH4cQMvFiaqOT2NhPHaj0UuH6wmQ09zje616b4D0PYlo
 xIC6HZ+cUftW3Rsvywd5iF2LrkUjFmHqBuirsXSvKC4kWYrw8BvglUbgxk39nGpzy7
 PPRiJ0N04gH+EIqbvfJR0q8mlIUBOwmwbrRf2xU8=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgNOZ-004j8k-IT; Wed, 03 Jun 2020 09:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 10/15] media: atomisp: use macros from intel-family.h
Date: Wed,  3 Jun 2020 09:00:56 +0200
Message-Id: <965cadd19363e32bd885e195276dd366a4a0b24a.1591167358.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591167358.git.mchehab+huawei@kernel.org>
References: <cover.1591167358.git.mchehab+huawei@kernel.org>
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

Instead of hardcoding the intel family values there, use
the already defined ones from asm/intel-family.h.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/include/linux/atomisp_platform.h     | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/include/linux/atomisp_platform.h b/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
index 4bf76a780b6d..395d7c022ad1 100644
--- a/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
+++ b/drivers/staging/media/atomisp/include/linux/atomisp_platform.h
@@ -18,6 +18,8 @@
 #ifndef ATOMISP_PLATFORM_H_
 #define ATOMISP_PLATFORM_H_
 
+#include <asm/intel-family.h>
+
 #include <linux/i2c.h>
 #include <linux/sfi.h>
 #include <media/v4l2-subdev.h>
@@ -240,9 +242,9 @@ const struct atomisp_camera_caps *atomisp_get_default_camera_caps(void);
 		     boot_cpu_data.x86 == 6 &&                       \
 		     boot_cpu_data.x86_model == x)
 
-#define IS_MFLD	__IS_SOC(0x27)
-#define IS_BYT	__IS_SOC(0x37)
-#define IS_CHT	__IS_SOC(0x4C)
-#define IS_MOFD	__IS_SOC(0x5A)
+#define IS_MFLD	__IS_SOC(INTEL_FAM6_ATOM_SALTWELL_MID)
+#define IS_BYT	__IS_SOC(INTEL_FAM6_ATOM_SILVERMONT)
+#define IS_CHT	__IS_SOC(INTEL_FAM6_ATOM_AIRMONT)
+#define IS_MOFD	__IS_SOC(INTEL_FAM6_ATOM_AIRMONT_MID)
 
 #endif /* ATOMISP_PLATFORM_H_ */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
