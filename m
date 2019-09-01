Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D411A47AD
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 07:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D8B0120465;
	Sun,  1 Sep 2019 05:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1S-dbVAJes5F; Sun,  1 Sep 2019 05:52:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 229F220418;
	Sun,  1 Sep 2019 05:52:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2E521BF27E
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BFD7D86D11
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6zyK1GHyYXr for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 05:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-23.consmr.mail.gq1.yahoo.com
 (sonic304-23.consmr.mail.gq1.yahoo.com [98.137.68.204])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 50CEF85BA9
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 05:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567317165; bh=bYGgbUkpYatgcwL6URU/dubCdNrEU0TuOnNro854EfY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=rl4KOY4lM7ZrLdBU0izAjz+sU2EuhRICXLFz2E2MLdnwpp7Mn9fIPGus8pvS29wUbe8i+yrIWGD/2oSAK+SCGyFpPIanID+ZZ4Up3jqEOfeYRHFAAcrJPRo4dU/iv7WdTUNo+t4zqzHQ4vjNHnI3J8XbErk8ZzANotbTZoZVZaTHsOqDyx6/1LhLQrSTIzNXoUkCN8D3GCPpsjITgxstvLeZkBiZ5rdNQ8IcYZsILsLc1FAcQo2BFEDkoJsv8OLiu1MvvEIXdYPwlsm5LowCY2HgBdubZRcWxZIyX3DDHWXuy+RX06I+gNGunJmqoVM24hdVUYY69Y5/6VfJSJ9/qg==
X-YMail-OSG: IC0uT7EVM1m1o32FvlT6x3EAXzOIEpnZdF6fgPBQ_5PD54Rxfx9Gim0t7X1W7zI
 NZZF5.8Clla8YAOY9pjaNeKHAwA_wP5INOANqq9FiLntQQfvp.CmKSK2yL_a_qTkO7B5wDrzkRMH
 jY7ykuO5MYjiD7bRnc1DyvN2oXeF.Cy1PBSuJgIZQE3Cfys5yh4lY4gUqUxDVNMNlR_ileIlfbPA
 7y7.hpd0Dhe2fpl7LLbnSH6r2th7zc3fpZu6odRdXVMvsvSbf5NjZoMt80Rd.5pTDuiMknypCkOY
 oWLFMcdzO9IYnJa_nef6SQyJx3qJuTmcBkRt_gwAMMOSU.seCXpfWNIBEFdcr56mKf5wuBRfYeW4
 1zYX1DVNj6rxNHPpQOiDHESjDf9ShaSyKTaUB0C0k.V_rUV92hPrBpausKIJmTzoGU8WwqFEZT96
 7qh_4FPTDybxCb8GR8B7a6RlEgZnyhKOnlyqIT8V5Gwbqo43Lp96n.qEnMMruu1yQ8jxx8uZ4Fb6
 nQFoB06UgxCQSAZGbgOvzjrprFvf.PJ_ZBdVaOx0okWljF5tRfwEoEKNKb8W_.Bt_fVqGdQYd6Uo
 hqiHnAhNpZnhQTe1FRXTal2pgrvN599y4mKfuDO7PSwV4rQ_jl8zwVrGNZuYDz2yez7XHI.VcTNK
 9sx7MKwe9_Y1xxd3x1sP2m_I9u6lLARO8RnXbKcupXJ6usQciWqTu_R3quCEqIr59cZQQG7lFLXo
 7kCcv7RsOoLYoyO.A2EyI_yGbLa3c.LGsfh3qVMcVpcXTPg_xFk6pDcfFr3N4jXotsGAe5kYSboV
 _kEThYWrTZxGrRfzd8i86Wn5zI6sGDivNiQBjiNtmvpn_LJHLOA6CwsLCEgl6I4S.Tc4VpaUBKE9
 NtzAvHx6bvt19ApGdmdbZdxOUzbT9Xlxe2M.NgD1231_D1KjXfNSbizhfNUoryJwGgjCLKxuHKGl
 0RG_CrHnYnI3czEeaPPK4IbJv84bVZtIGlUr1TTSiUaBX6_QGwdwihR2GPJd54U.KHi7aYr7CNlm
 6wHwrKM8Cxyput4UkuRAyUr5un_ovBkib0hHG0gM9j5lA.h_xwqIJS3xsmJP8bOgMqFAjwVtmAIy
 YtwcnV9anlraMRpnb8ehmcEE9Q3dSkWyo9zlUQgJMMcYaHUcWg05arPcuesg0FuBSmEizQIFWup.
 sSJK7YX9860s2C69O2kx6KQ5W0gZAYWOhmtK0F3xDyK2ZO3EgNntVQViD3pk.3.WRDrojkT62zXA
 4pMEVL5rv6IGFG.OUYA1D5ip3ogrR.oV2GBXP.g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Sun, 1 Sep 2019 05:52:45 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 426e3b5ec1af9e36f409445c51071a70; 
 Sun, 01 Sep 2019 05:52:43 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 11/21] erofs: use dsb instead of layout for ondisk super_block
Date: Sun,  1 Sep 2019 13:51:20 +0800
Message-Id: <20190901055130.30572-12-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190901055130.30572-1-hsiangkao@aol.com>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Chao Yu <chao@kernel.org>, linux-erofs@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Gao Xiang <gaoxiang25@huawei.com>

As Christoph pointed out [1], "Why is the variable name
for the on-disk subperblock layout? We usually still
calls this something with sb in the name, e.g. dsb.
for disksuper block. " Let's fix it.

[1] https://lore.kernel.org/r/20190829101545.GC20598@infradead.org/
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/super.c | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index 8c43af5d5e57..c1a42ea7b72f 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -47,9 +47,9 @@ static void free_inode(struct inode *inode)
 }
 
 static bool check_layout_compatibility(struct super_block *sb,
-				       struct erofs_super_block *layout)
+				       struct erofs_super_block *dsb)
 {
-	const unsigned int requirements = le32_to_cpu(layout->requirements);
+	const unsigned int requirements = le32_to_cpu(dsb->requirements);
 
 	EROFS_SB(sb)->requirements = requirements;
 
@@ -66,7 +66,7 @@ static int superblock_read(struct super_block *sb)
 {
 	struct erofs_sb_info *sbi;
 	struct buffer_head *bh;
-	struct erofs_super_block *layout;
+	struct erofs_super_block *dsb;
 	unsigned int blkszbits;
 	int ret;
 
@@ -78,16 +78,16 @@ static int superblock_read(struct super_block *sb)
 	}
 
 	sbi = EROFS_SB(sb);
-	layout = (struct erofs_super_block *)((u8 *)bh->b_data
-		 + EROFS_SUPER_OFFSET);
+	dsb = (struct erofs_super_block *)((u8 *)bh->b_data +
+					   EROFS_SUPER_OFFSET);
 
 	ret = -EINVAL;
-	if (le32_to_cpu(layout->magic) != EROFS_SUPER_MAGIC_V1) {
+	if (le32_to_cpu(dsb->magic) != EROFS_SUPER_MAGIC_V1) {
 		errln("cannot find valid erofs superblock");
 		goto out;
 	}
 
-	blkszbits = layout->blkszbits;
+	blkszbits = dsb->blkszbits;
 	/* 9(512 bytes) + LOG_SECTORS_PER_BLOCK == LOG_BLOCK_SIZE */
 	if (blkszbits != LOG_BLOCK_SIZE) {
 		errln("blksize %u isn't supported on this platform",
@@ -95,25 +95,25 @@ static int superblock_read(struct super_block *sb)
 		goto out;
 	}
 
-	if (!check_layout_compatibility(sb, layout))
+	if (!check_layout_compatibility(sb, dsb))
 		goto out;
 
-	sbi->blocks = le32_to_cpu(layout->blocks);
-	sbi->meta_blkaddr = le32_to_cpu(layout->meta_blkaddr);
+	sbi->blocks = le32_to_cpu(dsb->blocks);
+	sbi->meta_blkaddr = le32_to_cpu(dsb->meta_blkaddr);
 #ifdef CONFIG_EROFS_FS_XATTR
-	sbi->xattr_blkaddr = le32_to_cpu(layout->xattr_blkaddr);
+	sbi->xattr_blkaddr = le32_to_cpu(dsb->xattr_blkaddr);
 #endif
 	sbi->islotbits = ffs(sizeof(struct erofs_inode_v1)) - 1;
-	sbi->root_nid = le16_to_cpu(layout->root_nid);
-	sbi->inos = le64_to_cpu(layout->inos);
+	sbi->root_nid = le16_to_cpu(dsb->root_nid);
+	sbi->inos = le64_to_cpu(dsb->inos);
 
-	sbi->build_time = le64_to_cpu(layout->build_time);
-	sbi->build_time_nsec = le32_to_cpu(layout->build_time_nsec);
+	sbi->build_time = le64_to_cpu(dsb->build_time);
+	sbi->build_time_nsec = le32_to_cpu(dsb->build_time_nsec);
 
-	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
+	memcpy(&sb->s_uuid, dsb->uuid, sizeof(dsb->uuid));
 
-	ret = strscpy(sbi->volume_name, layout->volume_name,
-		      sizeof(layout->volume_name));
+	ret = strscpy(sbi->volume_name, dsb->volume_name,
+		      sizeof(dsb->volume_name));
 	if (ret < 0) {	/* -E2BIG */
 		errln("bad volume name without NIL terminator");
 		ret = -EFSCORRUPTED;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
