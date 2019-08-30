Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99076A3D8A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 20:15:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6DB3F265F6;
	Fri, 30 Aug 2019 18:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JUm5VnNQQ8mV; Fri, 30 Aug 2019 18:15:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61193253E7;
	Fri, 30 Aug 2019 18:15:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8FC1BF3F6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09DD486B82
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZT2aKHeQx3LX for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 18:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 753C286B7E
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 18:15:26 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i3lQi-0001db-9R; Fri, 30 Aug 2019 18:15:24 +0000
From: Colin King <colin.king@canonical.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: exfat: remove redundant goto
Date: Fri, 30 Aug 2019 19:15:23 +0100
Message-Id: <20190830181523.13356-1-colin.king@canonical.com>
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

The goto after a return is never executed, so it is redundant and can
be removed.

Addresses-Coverity: ("Structurally dead code")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/exfat/exfat_super.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5b5c2ca8c9aa..5b3c4dfe0ecc 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -663,10 +663,8 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 	/* search the file name for directories */
 	dentry = p_fs->fs_func->find_dir_entry(sb, &dir, &uni_name, num_entries,
 					       &dos_name, TYPE_ALL);
-	if (dentry < -1) {
+	if (dentry < -1)
 		return FFS_NOTFOUND;
-		goto out;
-	}
 
 	fid->dir.dir = dir.dir;
 	fid->dir.size = dir.size;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
