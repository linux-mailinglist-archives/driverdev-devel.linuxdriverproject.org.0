Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3912AA47A4
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 07:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CE4B8648C;
	Sun,  1 Sep 2019 05:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-EAvRBoZbx4; Sun,  1 Sep 2019 05:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F50E86427;
	Sun,  1 Sep 2019 05:52:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C31F91BF27E
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0A27203AD
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNFguVKTtecc for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 05:52:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-20.consmr.mail.gq1.yahoo.com
 (sonic301-20.consmr.mail.gq1.yahoo.com [98.137.64.146])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C86F20035
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 05:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567317151; bh=xyzLFbGFGOZTSaMtcMPutncgSOGzVBNC+NNTATqkoDA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=XJk9k36/zjsvTDf3JTiV0SC7u+4fA8Dn0kI9fhLgZqBC2WsUMTvwOSiNgllCFRae6Vz8BzjdaI60cAV1/fQPBVkXSBbGymEu9OA6simvfA9+78SxkItSLW5i8zKCgKJaenlayCbrrTkI7j2r0/j6w6AdSUk48fspzT9duWXMlaDYGRQT2ExAICNkTUkgJM8kk+sv/mHY4sQ4myo+OKo1uAokvxjY2VhkkRVM8gC0HZz+Z1AthJMgRVOVoRGZ1cy2Nf+RO6fql2fqcWPQYj6ULEzVUnkn8ErTVckYToGyiJXARm7ZjBjA6rhDWHhXwy7maD1EVkKSB1Mw6DtooxQVdQ==
X-YMail-OSG: ZoGfFlQVM1lN4mDgMJoo8KEKbdqaqy2_9W9yFXfW_qbuaZb3wJK5zBbke6429BP
 aDBIxiKrt2kZJT.RLCoJ4TdOIOilR9qUY9zjHct_67aEvFDssHdqyzjmB5xzcMJCdeONjVeMkw.e
 sK4Rtdu6AfDIiXf9nNb0oApNBcJj6xJIHjS27l6ez29lDf986VTFB6TltNDIgSeVmU3kwHXbmy_R
 uw43P5_g97uVVDKx7n_z2yDspXrC_e8158iaYDky8NTu051zGb2fbNAcBGC7fIxG9lT3OIfcRWRd
 mC2CQSw2EShVNAHUQH1BcwSC_bpNqHOUov2pl1eQoyw4OOL8Y2WUd.QWyU5XErD_OEv_c7sveB36
 OvCHwxcxoWxmAzVVZeBhQ43cTiTLf4YalyRBMZ9xYvBFg8YeMSJTNVwN7A5EwxZkccI_F0Yww1Tw
 B2OSBi20J1iSxce4Thh0s.KUStm404sJRJlv6F57TI_fJza1EYclW5zQT39cc2k1fUMmg61spxPx
 afjRQXFugr3mYSkPg9XT8qEiVRip4TgeuZHavdOCSddjd_GUGbWz.U1AjpgHO7YN4nAgPSrSMqZt
 tH7zZomUcly0cKBZEzrpMVO2Wga6f5WNmklYDAvdmFntY2WC6kKe1FjSLjwU.ROhkMpXU2G.OvEf
 mz3Ma5NsJKr12A7X4mD_UaG8fcvoUSrTpv1aDq93oHLurVi9E60DCb63H0z6WQXpBY3NLDjpZFTo
 ppS3ytbaebD4JXUXeiG4m7kPfnyIZTy_7Y3GFbqo83ukRL_WAbS9vTkqT8VdOZXS2eJLa.F7SW8n
 5fLIBQnjjFHUUGDrloooyvt_5zAsi2sYzTAMSa414px.BU4gJDhy0Hz_obuhW3m_2q4tofQc6eem
 KFx4InBt9kifDg3PQD7SF6dP1KqksUtr.LGrnn6X3WWStxv1yxlMB3ehL8AK.0WOKlDEKaf4pGW.
 nQXEQF240l38t5Bzh.dMnUwvcRGTUaJuC8OYerxHrgNeLEOG9TWfp9gZK73z01eRjQDwJUB0D4gx
 Zsl7lQGtQ5PKE0pRisXpvVCZJW994bWsnBrn9w.W5eHJq_s5Fq_VAHM9CJjyQYD74R_PmMpdg7oZ
 pjrD_qemdcaBOq3.1nKb0h8h_J_YAqFEsvdkt64ljRsQAQCc3ENgwpCXqbhL663t4cyZVXa5Iu2F
 Fsco1owAQfu7Emq6OAktbYBiE31rvPS2CixsK8fEN_j138zg5QECTiMGql2zA.wufGLr.M8jdf1C
 hlTVxHIDPnb3mp2tpGZWTTciQHIeT1QeO2BHs.x0AjA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.gq1.yahoo.com with HTTP; Sun, 1 Sep 2019 05:52:31 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 426e3b5ec1af9e36f409445c51071a70; 
 Sun, 01 Sep 2019 05:52:29 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 08/21] erofs: update comments in inode.c
Date: Sun,  1 Sep 2019 13:51:17 +0800
Message-Id: <20190901055130.30572-9-hsiangkao@aol.com>
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

As Christoph suggested [1], update them all.

[1] https://lore.kernel.org/r/20190829102426.GE20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/inode.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index de0373647959..24c94a7865f2 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -129,7 +129,7 @@ static int fill_inline_data(struct inode *inode, void *data,
 	if (!is_inode_flat_inline(inode))
 		return 0;
 
-	/* fast symlink (following ext4) */
+	/* fast symlink */
 	if (S_ISLNK(inode->i_mode) && inode->i_size < PAGE_SIZE) {
 		char *lnk = erofs_kmalloc(sbi, inode->i_size + 1, GFP_KERNEL);
 
@@ -138,7 +138,7 @@ static int fill_inline_data(struct inode *inode, void *data,
 
 		m_pofs += vi->inode_isize + vi->xattr_isize;
 
-		/* inline symlink data shouldn't across page boundary as well */
+		/* inline symlink data shouldn't cross page boundary as well */
 		if (m_pofs + inode->i_size > PAGE_SIZE) {
 			kfree(lnk);
 			errln("inline data cross block boundary @ nid %llu",
@@ -147,7 +147,6 @@ static int fill_inline_data(struct inode *inode, void *data,
 			return -EFSCORRUPTED;
 		}
 
-		/* get in-page inline data */
 		memcpy(lnk, data + m_pofs, inode->i_size);
 		lnk[inode->i_size] = '\0';
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
