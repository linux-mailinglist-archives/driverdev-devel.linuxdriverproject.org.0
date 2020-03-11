Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0AB181632
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:52:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82738872CF;
	Wed, 11 Mar 2020 10:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9vd1Bd6VaEKz; Wed, 11 Mar 2020 10:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3AA787184;
	Wed, 11 Mar 2020 10:52:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92EA11BF9AD
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F45C221FB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id raOg3Wzj5kVh for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:52:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx05.melco.co.jp (mx05.melco.co.jp [192.218.140.145])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C2A12210F
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:52:51 +0000 (UTC)
Received: from mr05.melco.co.jp (mr05 [133.141.98.165])
 by mx05.melco.co.jp (Postfix) with ESMTP id E500C3A4455;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from mr05.melco.co.jp (unknown [127.0.0.1])
 by mr05.imss (Postfix) with ESMTP id 48cphK5xc8zRk8c;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from mf04_second.melco.co.jp (unknown [192.168.20.184])
 by mr05.melco.co.jp (Postfix) with ESMTP id 48cphK5dNxzRk81;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from mf04.melco.co.jp (unknown [133.141.98.184])
 by mf04_second.melco.co.jp (Postfix) with ESMTP id 48cphK5ZmMzRjFt;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf04.melco.co.jp (Postfix) with ESMTP id 48cphK57jfzRjFp;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 02BAqnRu028969;
 Wed, 11 Mar 2020 19:52:49 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id 76B6517E075;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux554.tad.melco.co.jp (tux100.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id 6027117E073;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 02BAqm0w017644;
 Wed, 11 Mar 2020 19:52:49 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH 4/5] staging: exfat: add boot region verification
Date: Wed, 11 Mar 2020 19:52:44 +0900
Message-Id: <20200311105245.125564-4-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add Boot-Regions verification specified in exFAT specification.

Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat_core.c | 69 ++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 3faa7f35c77c..07c876bb1759 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2017,7 +2017,20 @@ u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type)
 			chksum = (((chksum & 1) << 15) |
 				  ((chksum & 0xFFFE) >> 1)) + (u16)*c;
 	}
+	return chksum;
+}
 
+u32 calc_checksum32(void *data, int len, u32 chksum, int type)
+{
+	int i;
+	u8 *c = (u8 *)data;
+
+	for (i = 0; i < len; i++, c++) {
+		if (unlikely(type == CS_BOOT_SECTOR &&
+			     (i == 106 || i == 107 || i == 112)))
+			continue;
+		chksum = ((chksum & 1) << 31 | chksum >> 1) + (u32)*c;
+	}
 	return chksum;
 }
 
@@ -2053,6 +2066,58 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 	return 0;
 }
 
+static int verify_boot_region(struct super_block *sb)
+{
+	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+	struct buffer_head *tmp_bh = NULL;
+	u32 chksum = 0, *p_signatue, *p_chksum;
+	int sn = 0, i, ret;
+
+	/* read boot sector sub-regions */
+	ret = sector_read(sb, sn++, &tmp_bh, 1);
+	if (ret)
+		goto out;
+
+	chksum = calc_checksum32(tmp_bh->b_data, p_bd->sector_size,
+				 chksum, CS_BOOT_SECTOR);
+
+	while (sn < 11) {
+		ret = sector_read(sb, sn++, &tmp_bh, 1);
+		if (ret)
+			goto out;
+
+		chksum = calc_checksum32(tmp_bh->b_data, p_bd->sector_size,
+					 chksum, CS_DEFAULT);
+
+		/* skip OEM Parameters & Reserved sub-regions */
+		if (sn >= 9)
+			continue;
+
+		/* extended boot sector sub-regions */
+		p_signatue = (u32 *)(tmp_bh->b_data + p_bd->sector_size - 4);
+		if (le32_to_cpu(*p_signatue) != EXBOOT_SIGNATURE) {
+			ret = -EFSCORRUPTED;
+			goto out;
+		}
+	}
+
+	/* boot checksum sub-regions */
+	ret = sector_read(sb, sn++, &tmp_bh, 1);
+	if (ret)
+		goto out;
+
+	p_chksum = (u32 *)tmp_bh->b_data;
+	for (i = 0; i < p_bd->sector_size / 4; i++) {
+		if (le32_to_cpu(*p_chksum) != chksum) {
+			ret = -EFSCORRUPTED;
+			goto out;
+		}
+	}
+out:
+	brelse(tmp_bh);
+	return ret;
+}
+
 static int read_boot_sector(struct super_block *sb)
 {
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -2129,6 +2194,10 @@ s32 exfat_mount(struct super_block *sb)
 	if (ret)
 		goto err_out;
 
+	ret = verify_boot_region(sb);
+	if (ret)
+		goto err_out;
+
 	ret = load_alloc_bitmap(sb);
 	if (ret)
 		goto err_out;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
