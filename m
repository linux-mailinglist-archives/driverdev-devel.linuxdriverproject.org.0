Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F73A485D9
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 16:44:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4818820473;
	Mon, 17 Jun 2019 14:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XID3jwdQ+YP5; Mon, 17 Jun 2019 14:44:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9914120458;
	Mon, 17 Jun 2019 14:44:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B77931BF3CA
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 14:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B466D86D37
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 14:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3FyxDCypR9B3 for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 14:44:45 +0000 (UTC)
X-Greylist: delayed 00:05:01 by SQLgrey-1.7.6
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5BE486D2D
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 14:44:44 +0000 (UTC)
Received: from ramsan ([84.194.111.163]) by laurent.telenet-ops.be with bizsmtp
 id Rqfg2000B3XaVaC01qfgiQ; Mon, 17 Jun 2019 16:39:40 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hcsnM-0002KC-8Q; Mon, 17 Jun 2019 16:39:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hcsnM-0001Ow-70; Mon, 17 Jun 2019 16:39:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: Add missing newline at end of file
Date: Mon, 17 Jun 2019 16:39:39 +0200
Message-Id: <20190617143939.5318-1-geert+renesas@glider.be>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

"git diff" says:

    \ No newline at end of file

after modifying the files.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/staging/mt7621-dts/TODO | 2 +-
 drivers/staging/rts5208/TODO    | 2 +-
 drivers/staging/vt6655/test     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dts/TODO b/drivers/staging/mt7621-dts/TODO
index 15803132c1ea798a..1b758e5c84e00d48 100644
--- a/drivers/staging/mt7621-dts/TODO
+++ b/drivers/staging/mt7621-dts/TODO
@@ -2,4 +2,4 @@
 - ensure all usage matches code
 - ensure all features used are documented
 
-Cc: NeilBrown <neil@brown.name>
\ No newline at end of file
+Cc: NeilBrown <neil@brown.name>
diff --git a/drivers/staging/rts5208/TODO b/drivers/staging/rts5208/TODO
index 57bcf5834c0c9333..9cec0d8dd0b6cad6 100644
--- a/drivers/staging/rts5208/TODO
+++ b/drivers/staging/rts5208/TODO
@@ -4,4 +4,4 @@ TODO:
 - We will use the stack in drivers/mmc to implement
   rts5208/5288 in the future
 
-Micky Ching <micky_ching@realsil.com.cn>
\ No newline at end of file
+Micky Ching <micky_ching@realsil.com.cn>
diff --git a/drivers/staging/vt6655/test b/drivers/staging/vt6655/test
index 039f7d71c537857c..ba6dec774478e9d5 100644
--- a/drivers/staging/vt6655/test
+++ b/drivers/staging/vt6655/test
@@ -6,4 +6,4 @@ KSP :=  /lib/modules/$(shell uname -r)/build \
 #	/usr/src/linux-$(shell uname -r | sed 's/\([0-9]*\.[0-9]*\)\..*/\1/') \
 #	/usr/src/linux   /home/plice
 test_dir = $(shell [ -e $(dir)/include/linux ] && echo $(dir))
-KSP := $(foreach dir, $(KSP), $(test_dir))
\ No newline at end of file
+KSP := $(foreach dir, $(KSP), $(test_dir))
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
