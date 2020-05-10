Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8414B1CCA1E
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 May 2020 12:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30BA08773F;
	Sun, 10 May 2020 10:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mA22SNmnmihk; Sun, 10 May 2020 10:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34CF587701;
	Sun, 10 May 2020 10:13:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE59C1BF3EC
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BDBE92035D
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28AYPFSnAVs3 for <devel@linuxdriverproject.org>;
 Sun, 10 May 2020 10:13:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 1BEC12036B
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 10:13:40 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id ED02D3EE0; Sun, 10 May 2020 12:13:37 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz ED02D3EE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589105617;
 bh=QlOGZJaxuXbEjYRzF7O9Rg0ORS1ErUT1AjDPBU3SWyI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C/UpnWchh96RseMCrkqqvytF34vk2wTA9OkHfl/B/Y3apM8Y7Bm+nv1EGZC1o3zTt
 tSQJfK67+V3OUTyHFnH8e0ulvNs0JvQFwChvM0PTKvX8qmG/j/bgeS0C494zxE8E/c
 cV1SWY2zim3ir4ytGrCaqUbhoff2vUGKYSBSAqXA=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v2 2/2] staging: vt6655: vt6656: change order of makefile
 variable definitions
Date: Sun, 10 May 2020 12:13:35 +0200
Message-Id: <1589105615-22271-3-git-send-email-mdujava@kocurkovo.cz>
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

This patch will add indentation to multiline variable and put obj-$(CONFIG_X)
at the begining of the file.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/Makefile | 24 ++++++++++++------------
 drivers/staging/vt6656/Makefile |  4 ++--
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6655/Makefile b/drivers/staging/vt6655/Makefile
index e70357ec0af8..eda08a1516ab 100644
--- a/drivers/staging/vt6655/Makefile
+++ b/drivers/staging/vt6655/Makefile
@@ -1,15 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0
 
-vt6655_stage-y +=	device_main.o \
-	card.o \
-	channel.o \
-	mac.o \
-	baseband.o \
-	rxtx.o \
-	dpc.o \
-	power.o \
-	srom.o \
-	key.o \
-	rf.o
-
 obj-$(CONFIG_VT6655) +=	vt6655_stage.o
+
+vt6655_stage-y +=	device_main.o \
+			card.o \
+			channel.o \
+			mac.o \
+			baseband.o \
+			rxtx.o \
+			dpc.o \
+			power.o \
+			srom.o \
+			key.o \
+			rf.o
diff --git a/drivers/staging/vt6656/Makefile b/drivers/staging/vt6656/Makefile
index f696a9d7a143..aac323d6a684 100644
--- a/drivers/staging/vt6656/Makefile
+++ b/drivers/staging/vt6656/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
+obj-$(CONFIG_VT6656) +=	vt6656_stage.o
+
 vt6656_stage-y +=	main_usb.o \
 			card.o  \
 			mac.o   \
@@ -11,5 +13,3 @@ vt6656_stage-y +=	main_usb.o \
 			rf.o \
 			usbpipe.o \
 			channel.o
-
-obj-$(CONFIG_VT6656) +=	vt6656_stage.o
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
