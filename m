Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BAB1D1ED0
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 21:16:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D87AE88564;
	Wed, 13 May 2020 19:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkcpqnGU0XQU; Wed, 13 May 2020 19:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2749884D9;
	Wed, 13 May 2020 19:16:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99BEA1BF321
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43047220DA
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 33p6gYN28j2o for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 19:15:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 409B9203CF
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 19:15:57 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id D87FB18CA; Wed, 13 May 2020 21:15:53 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz D87FB18CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589397353;
 bh=lauLfYuhKgqMV/K/CT1WEOxuKL5htIQBOBQSFXp9cGo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KQtAzF8lmAuT+aZCguzTnfUX6RuMPzoNDLsLPpTrZRfTjEJ2SXh0Y8trOFK3JxiVX
 cteu7NRv3Sn39SBa7aHd3MAS5UPP/TZA7AK3xJDn0oQgxP0nfyfeChrfWJmIe9ffQs
 U72xBlSFIsI1Mm3Yw/abKOy6539K0cdQO1bDFZmQ=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v3 1/2] staging: vt6656: vt6655: removing unused macros
 definition Makefiles
Date: Wed, 13 May 2020 21:15:50 +0200
Message-Id: <1589397351-24655-2-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1589397351-24655-1-git-send-email-mdujava@kocurkovo.cz>
References: <1589397351-24655-1-git-send-email-mdujava@kocurkovo.cz>
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
Cc: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch is removing definition of CFLAGS in Makefile of vt6656 and
vt6655, as those are defining macros that are not used. This will remove
undef of one macro from vt6655/device_main.c, as it is only undef and it is
not used anywhere else, so it is safe to remove it.

Macros are removed from vt665x/Makefile and vt6655/device_main.c.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
v1: Initial patch
v2: This patch was split from original bigger patch
v3: Added more info about what and why it's removed

 drivers/staging/vt6655/Makefile      | 3 ---
 drivers/staging/vt6655/device_main.c | 1 -
 drivers/staging/vt6656/Makefile      | 3 ---
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/vt6655/Makefile b/drivers/staging/vt6655/Makefile
index a151f30fc46f..e70357ec0af8 100644
--- a/drivers/staging/vt6655/Makefile
+++ b/drivers/staging/vt6655/Makefile
@@ -1,7 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-# TODO: all of these should be removed
-ccflags-y := -DLINUX -D__KERNEL__ -D__NO_VERSION__
-ccflags-y += -DHOSTAP
 
 vt6655_stage-y +=	device_main.o \
 	card.o \
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 5889023d19c4..41cbec4134b0 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -32,7 +32,6 @@
  *
  * Revision History:
  */
-#undef __NO_VERSION__
 
 #include <linux/file.h>
 #include "device.h"
diff --git a/drivers/staging/vt6656/Makefile b/drivers/staging/vt6656/Makefile
index a0f3862dea75..f696a9d7a143 100644
--- a/drivers/staging/vt6656/Makefile
+++ b/drivers/staging/vt6656/Makefile
@@ -1,7 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-# TODO: all of these should be removed
-ccflags-y := -DLINUX -D__KERNEL__ -DEXPORT_SYMTAB -D__NO_VERSION__
-ccflags-y += -DHOSTAP
 
 vt6656_stage-y +=	main_usb.o \
 			card.o  \
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
