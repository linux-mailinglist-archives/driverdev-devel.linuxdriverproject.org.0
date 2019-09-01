Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3564CA4796
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 07:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CAE7E203B4;
	Sun,  1 Sep 2019 05:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PtQk-A2ydtxu; Sun,  1 Sep 2019 05:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E336B2040C;
	Sun,  1 Sep 2019 05:52:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2FDE1BF27E
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE08E203B4
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJa+owF1Ak-j for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 05:52:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic306-19.consmr.mail.gq1.yahoo.com
 (sonic306-19.consmr.mail.gq1.yahoo.com [98.137.68.82])
 by silver.osuosl.org (Postfix) with ESMTPS id A74FA20035
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567317128; bh=EsqxrbX/MPoMpn28nrMtpulaUGerDCF/NdboPa4sW90=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=bkiQ3g/5Qz3erwRBQhlX46Jdu9sYuCheycRpl61dYaKQz7EYEB8EVYWR5Ti+kYZ8YHpKjC7rzkk5IqmfWDPPHKhKUqoxWXQjsZHgguQAs2Xojc6uk7r0gamfHPe9mmFvDBdZxf75PaGALaSyVOEy9pesv0H0lz3TR1Y358rme9NU4o0iOD1XqwO8c1ZS9RT7WMPDvC32quuUFW2zdYqXIeENYSp4S5JjYI0g7mkme9eMkzVdVARkTR2PG+uQN1PRYmDPbY96hssk9CnN9s+DPZupSl11k+1rX5+buakGqlY80ddTMgCvOEtFoCaVXyLu77h8Hyrh4I3qLsn5B1vV+w==
X-YMail-OSG: JLDnSOwVM1kgdL6PpYQrX7XdT2QJ6KcXTpdCuOerPvIgX2pp8rLfxGSb7c9QxIg
 fkVe6JxGt2kd_yIdHSOww8kpNB_0uM7JrrAIrnMZU_6SeMfHt9cQasZ7hZTlnuprZ8.fwcp1f2r9
 _FD4LZS52OZgE5FK24Th.Wv7RM6APm_sSF151uLdD9Qn1L6..rMQdSP3qBZ8qX94fcH2AHy1WLPI
 3NbJ9tNa8.sZPk6kBtDZ8eqUTVRSbuyo8hKpOHph42iByS_vpeC9ZP2ZaSiUNDM_iFWAVulCqMiP
 wIuFYpuAr46ZxJapYu5EtBy3n_Ga1DihRsMzSnNsn1LG8pEMfbcyItivoJ1Ss48e6Nz4LW.NcuGa
 FcCGL6O6cJYVxIzoNhH.wdesxbDKuqPdsLyRf2gtD236qORQfqZX2W3BbU6K.PuovP7f0xmUiUsW
 yJW1kpT81LkrRFsexLv41dULqtouolpkXtBVXL_0J53UAlfJMgCvkMnAzi74tQB6DMHRlOltA0Ua
 4xjrL9DkjCfWz02GhDV9WkzrlNHNVNUDcZ5FSq_mYMsw7JEklQHcJhzuhvTvr7mDGRwCl1NDMQxz
 hJmKmaZRsVh5pPUYynopxNDczkBXZMoj3wFmeJb9Yuif2nPWlxiEwDQFfjPtiGYuP5NydkR6XvmP
 qHgOyeYiVxmaiLnnCLHP7WoNTtmswAlryuiDTQIJykilG.5rDMFgcwO53dJB0VQcZbfxkArDDV5p
 QLELS4QkolyQdI8xYYS5gCnCkVpv6Ie8HI.ty_voNCnGdGTlHeU4Ct8c8XSxEx2csx4kwxRjzl.O
 YwT3dYPufHKj5khiEmrmFLb9NZw5HM9zrMhS6aPakGn_HIFzzVlYF7ktZc2H_qO38J.O7eqJN74F
 mI7o5gyzBH4F0ENsRbfRu4NziOTNkxXjRab6rT7v6rqPF9LNj_.sihYT4Rl6Mvas8xQqnEjazWZe
 faNxtQKDxdil2nBIs8J0mYJxijSCLNLMwRfAwsPhzw8K6amZo0VGQKGw0VOm5HlErUD0MCcCPcRj
 Y1pVeu9h9ZvrpPqilrCHqmuMaVbKSkz5Yd1OPyAyuJ1erUNuToeCWyh8JbL1ydQ3P318KWPZkqD3
 GgCh0nvwCutD.eSBdkivLpEBozzhDN7gcndC0c0qb6.nmfst6mUe72bD5USfj.KI9Wc4.FOtDN9b
 M8CnokyE_RilCBZEIyhI_tglFENxWyf7Ul4RpcgurikJK19RIVYV.fqwkPteZhMKyOxyleFsiF.q
 PmBhfWKKWQ0IcHufwMaSoamb6g9fRhBfA9VV2NsU-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.gq1.yahoo.com with HTTP; Sun, 1 Sep 2019 05:52:08 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 426e3b5ec1af9e36f409445c51071a70; 
 Sun, 01 Sep 2019 05:52:03 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 03/21] erofs: some macros are much more readable as a function
Date: Sun,  1 Sep 2019 13:51:12 +0800
Message-Id: <20190901055130.30572-4-hsiangkao@aol.com>
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

As Christoph suggested [1], these macros are much
more readable as a function.

[1] https://lore.kernel.org/r/20190829095954.GB20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/erofs_fs.h | 22 ++++++++++++++--------
 fs/erofs/inode.c    |  4 ++--
 fs/erofs/xattr.c    |  2 +-
 3 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index d1f152a3670a..c1220b0f26e0 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -171,16 +171,22 @@ struct erofs_xattr_entry {
 	char   e_name[0];       /* attribute name */
 } __packed;
 
-#define ondisk_xattr_ibody_size(count)	({\
-	u32 __count = le16_to_cpu(count); \
-	((__count) == 0) ? 0 : \
-	sizeof(struct erofs_xattr_ibody_header) + \
-		sizeof(__u32) * ((__count) - 1); })
+static inline unsigned int erofs_xattr_ibody_size(__le16 i_xattr_icount)
+{
+	if (!i_xattr_icount)
+		return 0;
+
+	return sizeof(struct erofs_xattr_ibody_header) +
+		sizeof(__u32) * (le16_to_cpu(i_xattr_icount) - 1);
+}
 
 #define EROFS_XATTR_ALIGN(size) round_up(size, sizeof(struct erofs_xattr_entry))
-#define EROFS_XATTR_ENTRY_SIZE(entry) EROFS_XATTR_ALIGN( \
-	sizeof(struct erofs_xattr_entry) + \
-	(entry)->e_name_len + le16_to_cpu((entry)->e_value_size))
+
+static inline unsigned int erofs_xattr_entry_size(struct erofs_xattr_entry *e)
+{
+	return EROFS_XATTR_ALIGN(sizeof(struct erofs_xattr_entry) +
+				 e->e_name_len + le16_to_cpu(e->e_value_size));
+}
 
 /* available compression algorithm types */
 enum {
diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index 8a0574530a0a..3fc4f764b387 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -29,7 +29,7 @@ static int read_inode(struct inode *inode, void *data)
 		struct erofs_inode_v2 *v2 = data;
 
 		vi->inode_isize = sizeof(struct erofs_inode_v2);
-		vi->xattr_isize = ondisk_xattr_ibody_size(v2->i_xattr_icount);
+		vi->xattr_isize = erofs_xattr_ibody_size(v2->i_xattr_icount);
 
 		inode->i_mode = le16_to_cpu(v2->i_mode);
 		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
@@ -62,7 +62,7 @@ static int read_inode(struct inode *inode, void *data)
 		struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
 
 		vi->inode_isize = sizeof(struct erofs_inode_v1);
-		vi->xattr_isize = ondisk_xattr_ibody_size(v1->i_xattr_icount);
+		vi->xattr_isize = erofs_xattr_ibody_size(v1->i_xattr_icount);
 
 		inode->i_mode = le16_to_cpu(v1->i_mode);
 		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
diff --git a/fs/erofs/xattr.c b/fs/erofs/xattr.c
index d80f61dde72f..620cbc15f4d0 100644
--- a/fs/erofs/xattr.c
+++ b/fs/erofs/xattr.c
@@ -231,7 +231,7 @@ static int xattr_foreach(struct xattr_iter *it,
 	 */
 	entry = *(struct erofs_xattr_entry *)(it->kaddr + it->ofs);
 	if (tlimit) {
-		unsigned int entry_sz = EROFS_XATTR_ENTRY_SIZE(&entry);
+		unsigned int entry_sz = erofs_xattr_entry_size(&entry);
 
 		/* xattr on-disk corruption: xattr entry beyond xattr_isize */
 		if (*tlimit < entry_sz) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
