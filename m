Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1E6ED41B
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 19:11:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A32538A4A3;
	Sun,  3 Nov 2019 18:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xj1M9Ch3nOlT; Sun,  3 Nov 2019 18:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 421048A497;
	Sun,  3 Nov 2019 18:11:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7306C1BF5DD
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FFAC893F6
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oLWN9A_Ag-ag for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 18:11:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68BC1893E9
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 18:11:08 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C422DB3E4;
 Sun,  3 Nov 2019 18:11:05 +0000 (UTC)
From: Davidlohr Bueso <dave@stgolabs.net>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH] drivers/staging/exfat: Ensure we unlock upon error in
 ffsReadFile
Date: Sun,  3 Nov 2019 10:09:21 -0800
Message-Id: <20191103180921.2844-1-dave@stgolabs.net>
X-Mailer: git-send-email 2.16.4
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
Cc: devel@driverdev.osuosl.org, Davidlohr Bueso <dave@stgolabs.net>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The call was not releasing the mutex upon error.

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
---
 drivers/staging/exfat/exfat_super.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index e9e9868cae85..02dcfe06fc4f 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -742,8 +742,10 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 
 			while (clu_offset > 0) {
 				/* clu = FAT_read(sb, clu); */
-				if (FAT_read(sb, clu, &clu) == -1)
-					return FFS_MEDIAERR;
+				if (FAT_read(sb, clu, &clu) == -1) {
+					ret = FFS_MEDIAERR;
+					goto out;
+				}
 
 				clu_offset--;
 			}
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
