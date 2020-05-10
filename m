Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0511CCA1F
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 May 2020 12:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 366F586599;
	Sun, 10 May 2020 10:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuSfLIGasIK9; Sun, 10 May 2020 10:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16E9586529;
	Sun, 10 May 2020 10:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B46FE1BF3EC
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFD1587662
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jau2JMRmOU6m for <devel@linuxdriverproject.org>;
 Sun, 10 May 2020 10:13:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 377A08763B
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 10:13:41 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 9A37F3EDF; Sun, 10 May 2020 12:13:37 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 9A37F3EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589105617;
 bh=/kKTgi/AZqUtwTnjlzl6IcwdkhcY5mkAN5671oRevlM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LbDGsvA7Ln/8TzsHMUDnhTnyfrTz2WeCMdkTlF5ytbKvoooS787O079M/WRLyk8j9
 fFrseiE7I0BbdMWB1PiWiPqmpcdDxadGI77BjawWng+hr9RythrYI32Yu2I7QU6CPB
 1atR2shAoujD1bgoGT1ZoCW6t2Kz5PnAcQB5SGVg=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v2 1/2] staging: vt6656: vt6655: clean Makefiles
Date: Sun, 10 May 2020 12:13:34 +0200
Message-Id: <1589105615-22271-2-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1589105615-22271-1-git-send-email-mdujava@kocurkovo.cz>
References: <1589105615-22271-1-git-send-email-mdujava@kocurkovo.cz>
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

This patch is removing CFLAGS that are defining flags that are not used.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
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
