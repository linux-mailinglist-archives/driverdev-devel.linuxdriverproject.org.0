Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BE2AD033
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 19:35:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63ABB85566;
	Sun,  8 Sep 2019 17:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tE34orfqbIME; Sun,  8 Sep 2019 17:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87AE2851C0;
	Sun,  8 Sep 2019 17:35:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DC8A1BF407
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B06785187
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cwo2djyMITaQ for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 17:35:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66DE185193
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 17:35:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 244C1214; Sun,  8 Sep 2019 17:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567964145;
 bh=g3+HRFguX0QmMKDs1sd8gSFNJsQbfyJNVF5VciLQGko=;
 h=From:To:Cc:Subject:Date:From;
 b=lzeynlMNb19jc2n4qitLBQhhTTdjewCArgKv2BpaE/gvbqlfmho4GXnAWlbGSjLkr
 gFBJUPBoi3QU46dHhcCqQmDKv2wuqoRkUkBYiCcBHUK0aAILoyixkO5RdkPDHOwvQH
 HSuH+pE3xfk4FqFBpiMnv9my4lOa0MPB5eeg3/c3vQhFWv28IkAnHqeYe4po0kFsyc
 74gnQ4DjPbc90REQDF7wkLFHoTyLKbQGGIxjZCybnFF9lyu6HuLOZYBWTOB19OGyU/
 QCWxO4G5a+2DggviqTtikXiilmIsIUa4x0xtefG5nbUIaHBq6AjCIQXHLy90pxkhe3
 +d7+aXTo43Z2A==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/4] staging: exfat: drop unused function parameter
Date: Sun,  8 Sep 2019 17:35:36 +0000
Message-Id: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

sbi parameter not used inside the function so remove it.
Also cleanup unused variables generated by this change.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
v2: split up into multiple patches
v3: split up some more
    fix if statement braces
    add utc offset fields

 drivers/staging/exfat/exfat_super.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 60dfea73a7a4..3a58907caf7c 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -56,8 +56,7 @@ static void exfat_write_super(struct super_block *sb);
 #define UNIX_SECS_2108    4354819200L
 
 /* Convert a FAT time/date pair to a UNIX date (seconds since 1 1 70). */
-static void exfat_time_fat2unix(struct exfat_sb_info *sbi,
-				struct timespec64 *ts, struct date_time_t *tp)
+static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
 {
 	ts->tv_sec = mktime64(tp->Year + 1980, tp->Month + 1, tp->Day,
 			      tp->Hour, tp->Minute, tp->Second);
@@ -66,8 +65,7 @@ static void exfat_time_fat2unix(struct exfat_sb_info *sbi,
 }
 
 /* Convert linear UNIX date to a FAT time/date pair. */
-static void exfat_time_unix2fat(struct exfat_sb_info *sbi,
-				struct timespec64 *ts, struct date_time_t *tp)
+static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
 {
 	time64_t second = ts->tv_sec;
 	struct tm tm;
@@ -3349,9 +3347,9 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 	inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
 				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
 
-	exfat_time_fat2unix(sbi, &inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_fat2unix(sbi, &inode->i_ctime, &info.CreateTimestamp);
-	exfat_time_fat2unix(sbi, &inode->i_atime, &info.AccessTimestamp);
+	exfat_time_fat2unix(&inode->i_mtime, &info.ModifyTimestamp);
+	exfat_time_fat2unix(&inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
 
 	return 0;
 }
@@ -3412,8 +3410,6 @@ static void exfat_destroy_inode(struct inode *inode)
 
 static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 {
-	struct super_block *sb = inode->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
 	struct dir_entry_t info;
 
 	if (inode->i_ino == EXFAT_ROOT_INO)
@@ -3422,9 +3418,9 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 	info.Attr = exfat_make_attr(inode);
 	info.Size = i_size_read(inode);
 
-	exfat_time_unix2fat(sbi, &inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_unix2fat(sbi, &inode->i_ctime, &info.CreateTimestamp);
-	exfat_time_unix2fat(sbi, &inode->i_atime, &info.AccessTimestamp);
+	exfat_time_unix2fat(&inode->i_mtime, &info.ModifyTimestamp);
+	exfat_time_unix2fat(&inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);
 
 	ffsWriteStat(inode, &info);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
