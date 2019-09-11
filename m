Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB048B0328
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 19:53:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 360CF860B5;
	Wed, 11 Sep 2019 17:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KV6LSQ6GPRfh; Wed, 11 Sep 2019 17:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21470842F2;
	Wed, 11 Sep 2019 17:53:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C90A51BF59B
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 17:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5F51842F2
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 17:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3SMpFhRg0XoE for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 17:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
 [217.26.49.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D51D830F8
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 17:53:06 +0000 (UTC)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
 by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i86nd-000GOr-W3; Wed, 11 Sep 2019 19:53:02 +0200
Received: from 145-126.cable.senselan.ch ([83.222.145.126] helo=volery)
 by asmtp012.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i86nd-0006xP-SW; Wed, 11 Sep 2019 19:53:01 +0200
X-Authenticated-Sender-Id: sandro@volery.com
Date: Wed, 11 Sep 2019 21:53:03 +0200
From: Sandro Volery <sandro@volery.com>
To: valdis.kletnieks@vt.edu, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4] Staging: exfat: avoid use of strcpy
Message-ID: <20190911195303.GA27966@volery>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux@rasmusvillemoes.dk, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replacing strcpy with strscpy and moving the length check to the
same function.

Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Sandro Volery <sandro@volery.com>
---

Took a couple attempts to finaly get this right :P

v4: Replaced strlen check
v3: Failed to replace check
v2: Forgot to replace strlen check
v1: original patch
 drivers/staging/exfat/exfat_core.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index da8c58149c35..4336fee444ce 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2960,18 +2960,15 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 	struct super_block *sb = inode->i_sb;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-
-	if (strlen(path) >= (MAX_NAME_LENGTH * MAX_CHARSET_SIZE))
+	
+	if (strscpy(name_buf, path, sizeof(name_buf)) < 0)
 		return FFS_INVALIDPATH;
 
-	strcpy(name_buf, path);
-
 	nls_cstring_to_uniname(sb, p_uniname, name_buf, &lossy);
 	if (lossy)
 		return FFS_INVALIDPATH;
 
-	fid->size = i_size_read(inode);
-
+fid->size = i_size_read(inode);
 	p_dir->dir = fid->start_clu;
 	p_dir->size = (s32)(fid->size >> p_fs->cluster_size_bits);
 	p_dir->flags = fid->flags;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
