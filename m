Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE36A47C3
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 07:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6430386463;
	Sun,  1 Sep 2019 05:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blhLhonLtjoL; Sun,  1 Sep 2019 05:53:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E5B8861AA;
	Sun,  1 Sep 2019 05:53:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2FE1BF27E
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1A10F861C5
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tis1K1D9HmRU for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 05:53:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-8.consmr.mail.gq1.yahoo.com
 (sonic316-8.consmr.mail.gq1.yahoo.com [98.137.69.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9AAC8861AA
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 05:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567317219; bh=kc+jedtmoECzNbCxq+nXpkl3ladCNpEIXX/cyggBQYg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=GvP/AX1C4J1uMQFRwtfetI0r6XcrtZf1PEzg0Qh5NyGMPgnDp1k8dc3PLaePCyx1IMBC+e35jb3Ey4FdzqIwwF1sErp8MdPA9NMJIbQentaNarUjC1fVv/tH1ft3/swgHO1Yf9G2n4xxEkOON2uFICzD4YDt0/M4G6AKaU+wBNDUu0UH0+cEv9a4BqK9A6cc+0epMnwvoMDy2NSn/RHwI5sxfvSqOoUgAyHIizuHAWFvlrCH17IF1Z5c5Dq45jNkewqU1vZXIxaRJFITGqeKI7mEsLxt4bgnfeyhzC9yuIPwpaH57oK/IafdHthDcGI2c0a/C4/jyOS/3SVDpvTB/w==
X-YMail-OSG: 5Lqg_UwVM1nS91RGNddPh6.cu3jrZ2lmqxmsfB8rLjBGX4AuyhmWDRV1f4.L16h
 ntYge0xZIR0egY86xwZKuX8DDOYsUXjGZaWQvJqrFwBIDVhsqaK3cB.wm4MkGbS7cuohZYsgddaJ
 TFcsi4WY_sI.WBJgXukWssjk.q6gzOsmKID5RIR6r4FWbzDWY7FQ36qeYEkUdeQWM_8llOF8Wfez
 7lWKZJTwmewsUdHPo3F4uQEv796JoP.Lj.4tuVJ_UqOZK6oOv_hnT.RVchZziw.tZMyT2JaYsx.0
 VNK5i.V05BxDC2fGnaY37s5LJeuQUIO6Y3xF9Ym9QUq08kvTDsf6lcAtPgRYtfq8nP1TEyFSChP6
 pZbl_iVhoEQ2DnKBiktZwrh0muXOPQrlr3gAr3pM1tBrzFDOD.E6ceAdUpU_yCVvkzCujPB2iuA4
 W.lM27bVGnRNcQBgeOyEWBxgTF5boVO7vVwmCvhtdQqW6fmySbk8xXWg3EVqQqMrne1n9mHE.x_U
 VhBr.y95RUbCF.2jZc0iSWeNAN0wuwUEaK7J9CSuH4HVbVmiKJJQ.Hm0ApjrFxoZ5_0FCDlXiVBA
 5c4WVRbIfm37Yrc4_G9AvlpV0uJb_j68HvAjcwbkgfGyK5QtUZ7U3d9tv54bWA8hkkrqcsVOQ3pD
 Cq8eVxIZPJN1.YuYCGoNH3S3sD.f8HtBga7EKiDx.JBitSScfwfkaxSsnsO_fT7pKyyCKxOi_kdY
 WrTvXUR7qAcS03Hc8gLprMfsBmLC.KAe7SJMa5xQeKUEc.Pul3aiApt4hYC9ctazugrRUAOe2iQK
 6_PtSu.g_diD_lg0890bmmQykk.ZxyI0.1qNdApvELVq8k5wkucXEXft9O5yMxaz.gJhObXVNq2M
 B9jKqKLMXfVGG2iqQdbkWgL5CFtpFNQytrhXP8ikF9Y3gOxmAdU4wsumx1VbY_mGlEiKYom4Lf8E
 2pFpBGKRltQ8dk1SP5xKlu1_NKs6b9k0UHVoqnpLVmQh8ZcyXAvyVBXqbn2Z6O.TJM5piBCdAxvt
 ayvKW5Y6AXNlscvFzHymaK24nCo4s3k7Fl_TMZktOxnZxApBgw5PD0UBtsh8sz06JpIZ4m7WrvVC
 Dm.xvHJL59taEl2xbr2.Rs9w4sfYHlsERIEPX9gUj7BvLMZRQ8rCruf9CE9z0P_gWKhO.jQr26kc
 M9JLVDW4D1jnF0agbpaQs6T8ROe6xq.oU6HIMqMrx9Als5qr36qNUQPLk71jcOu5gfz8b7kOTmNk
 b0YmjabLH6E5fPHvcxmbhaC_P.uD38KGtF9wnAO3E9Xopd1YcTt0-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.gq1.yahoo.com with HTTP; Sun, 1 Sep 2019 05:53:39 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 426e3b5ec1af9e36f409445c51071a70; 
 Sun, 01 Sep 2019 05:53:36 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 21/21] erofs: save one level of indentation
Date: Sun,  1 Sep 2019 13:51:30 +0800
Message-Id: <20190901055130.30572-22-hsiangkao@aol.com>
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

As Christoph said [1], ".. and save one
level of indentation."

[1] https://lore.kernel.org/r/20190829102426.GE20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/inode.c | 65 ++++++++++++++++++++++++------------------------
 1 file changed, 33 insertions(+), 32 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index fcc16d2d10cb..ee39b32bb911 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -188,41 +188,42 @@ static int erofs_fill_inode(struct inode *inode, int isdir)
 	data = page_address(page);
 
 	err = erofs_read_inode(inode, data + ofs);
-	if (!err) {
-		/* setup the new inode */
-		switch (inode->i_mode & S_IFMT) {
-		case S_IFREG:
-			inode->i_op = &erofs_generic_iops;
-			inode->i_fop = &generic_ro_fops;
-			break;
-		case S_IFDIR:
-			inode->i_op = &erofs_dir_iops;
-			inode->i_fop = &erofs_dir_fops;
-			break;
-		case S_IFLNK:
-			err = erofs_fill_symlink(inode, data, ofs);
-			if (err)
-				goto out_unlock;
-			inode_nohighmem(inode);
-			break;
-		case S_IFCHR:
-		case S_IFBLK:
-		case S_IFIFO:
-		case S_IFSOCK:
-			inode->i_op = &erofs_generic_iops;
-			init_special_inode(inode, inode->i_mode, inode->i_rdev);
-			goto out_unlock;
-		default:
-			err = -EFSCORRUPTED;
+	if (err)
+		goto out_unlock;
+
+	/* setup the new inode */
+	switch (inode->i_mode & S_IFMT) {
+	case S_IFREG:
+		inode->i_op = &erofs_generic_iops;
+		inode->i_fop = &generic_ro_fops;
+		break;
+	case S_IFDIR:
+		inode->i_op = &erofs_dir_iops;
+		inode->i_fop = &erofs_dir_fops;
+		break;
+	case S_IFLNK:
+		err = erofs_fill_symlink(inode, data, ofs);
+		if (err)
 			goto out_unlock;
-		}
+		inode_nohighmem(inode);
+		break;
+	case S_IFCHR:
+	case S_IFBLK:
+	case S_IFIFO:
+	case S_IFSOCK:
+		inode->i_op = &erofs_generic_iops;
+		init_special_inode(inode, inode->i_mode, inode->i_rdev);
+		goto out_unlock;
+	default:
+		err = -EFSCORRUPTED;
+		goto out_unlock;
+	}
 
-		if (erofs_inode_is_data_compressed(vi->datamode)) {
-			err = z_erofs_fill_inode(inode);
-			goto out_unlock;
-		}
-		inode->i_mapping->a_ops = &erofs_raw_access_aops;
+	if (erofs_inode_is_data_compressed(vi->datamode)) {
+		err = z_erofs_fill_inode(inode);
+		goto out_unlock;
 	}
+	inode->i_mapping->a_ops = &erofs_raw_access_aops;
 
 out_unlock:
 	unlock_page(page);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
