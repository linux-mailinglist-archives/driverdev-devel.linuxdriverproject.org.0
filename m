Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8CA3D3A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 19:50:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A90F875E2;
	Fri, 30 Aug 2019 17:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9YcN1ZPGmEK3; Fri, 30 Aug 2019 17:50:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E2278496B;
	Fri, 30 Aug 2019 17:50:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D95B1BF20D
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 17:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7AAD2870BB
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 17:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0zLmrRG-24Xb for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 17:50:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E78EE8496B
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 17:50:53 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i3l2w-0008Qk-Mu; Fri, 30 Aug 2019 17:50:50 +0000
From: Colin King <colin.king@canonical.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: exfat: check for null return from call to FAT_getblk
Date: Fri, 30 Aug 2019 18:50:50 +0100
Message-Id: <20190830175050.12706-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

A call to FAT_getblk is missing a null return check which can
lead to a null pointer dereference.  Fix this by adding a null
check to match all the other FAT_getblk return sanity checks.

Addresses-Coverity: ("Dereference null return")
Fixes: c48c9f7ff32b ("staging: exfat: add exfat filesystem code to staging")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/exfat/exfat_cache.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index f05d692c2b1e..1565ce65d39f 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -369,6 +369,8 @@ static s32 __FAT_write(struct super_block *sb, u32 loc, u32 content)
 				FAT_modify(sb, sec);
 
 				fat_sector = FAT_getblk(sb, ++sec);
+				if (!fat_sector)
+					return -1;
 				fat_sector[0] = (u8)((fat_sector[0] & 0xF0) |
 						     (content >> 8));
 			} else {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
