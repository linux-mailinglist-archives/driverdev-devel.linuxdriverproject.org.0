Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD161D1ECF
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 21:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE25089442;
	Wed, 13 May 2020 19:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ml8n2RBh9-0d; Wed, 13 May 2020 19:16:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D64AF884DE;
	Wed, 13 May 2020 19:16:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF921BF321
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48F1A88466
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDtU-PlHr++s for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 19:15:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FC248842E
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 19:15:57 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id A73B81D44; Wed, 13 May 2020 21:15:54 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz A73B81D44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589397354;
 bh=QJApaYVVjDV2ZABMuLXN+EsQlfEtvul5TQM0jLYTCcs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pjix9LRIvZi9HTHKf4BWi2D2O3Qt7Q8Q0+9yhAsAflKrmPGL+gXemnPV75KJ31oUb
 cE1Wu42Uh1FJHT818WNb+qxYkzJ/QxgVlYNZc6gmz1scpViY1jObCM/PCj2EWvOdBm
 EPC93Ugxaynw7oZa/BX97BRvzsOc8i31TmMWgbVw=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v3 2/2] staging: vt6655: vt6656: change order of makefile
 variable definitions
Date: Wed, 13 May 2020 21:15:51 +0200
Message-Id: <1589397351-24655-3-git-send-email-mdujava@kocurkovo.cz>
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

This patch will add indentation to multiline variable and put
obj-$(CONFIG_X) at the beginning of the file. This order of variables is
used in other drives, so this will make vt665x Makefiles fit into the
pattern.

Indentation is fixed in vt6655/Makefile.

Order of variable declaration is changed in vt6656/Makefile.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
v1: Initial patch
v2: This patch was split from original bigger patch
v3: Added more info about what and why it's removed

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
