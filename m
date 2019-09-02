Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7797EA5C6E
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 20:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B745621538;
	Mon,  2 Sep 2019 18:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KCCP+qrg3TXv; Mon,  2 Sep 2019 18:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 596EA214EC;
	Mon,  2 Sep 2019 18:53:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2F8B1BF3E9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 18:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF0258643F
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 18:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5calAr4-w73G for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 18:53:12 +0000 (UTC)
X-Greylist: delayed 00:09:36 by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 464D786165
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 18:53:12 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 9533E3A32A; Mon,  2 Sep 2019 20:43:27 +0200 (CEST)
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: use BIT macro for defining sizes
Date: Mon,  2 Sep 2019 20:43:19 +0200
Message-Id: <20190902184319.11971-1-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes checkpatch.pl warning:

  CHECK: Prefer using the BIT macro

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index bae180e10609..f71d4e8c0c8e 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -163,8 +163,8 @@
 #define HIGH_INDEX_BIT	(8)
 #define HIGH_INDEX_MASK	(0xFF00)
 #define LOW_INDEX_BIT	(16-HIGH_INDEX_BIT)
-#define UTBL_ROW_COUNT	(1<<LOW_INDEX_BIT)
-#define UTBL_COL_COUNT	(1<<HIGH_INDEX_BIT)
+#define UTBL_ROW_COUNT	BIT(LOW_INDEX_BIT)
+#define UTBL_COL_COUNT	BIT(HIGH_INDEX_BIT)
 
 static inline u16 get_col_index(u16 i)
 {
@@ -690,7 +690,7 @@ struct exfat_mount_options {
 };
 
 #define EXFAT_HASH_BITS		8
-#define EXFAT_HASH_SIZE		(1UL << EXFAT_HASH_BITS)
+#define EXFAT_HASH_SIZE		BIT(EXFAT_HASH_BITS)
 
 /*
  * EXFAT file system in-core superblock data
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
