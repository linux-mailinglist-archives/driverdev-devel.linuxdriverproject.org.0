Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C70CA479C
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 07:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18847863AE;
	Sun,  1 Sep 2019 05:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VgEtPnFQzBcU; Sun,  1 Sep 2019 05:52:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A523086148;
	Sun,  1 Sep 2019 05:52:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C32931BF983
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC5E486190
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNWIlXqIXjLR for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 05:52:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic302-20.consmr.mail.gq1.yahoo.com
 (sonic302-20.consmr.mail.gq1.yahoo.com [98.137.68.146])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4402E85BA9
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 05:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567317136; bh=3O6cJFKVmB7hCW3cVQChsdJJWaBz5U9+tHWa8vcLe+U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=QOPExNavkt/GHUqZYU9X5WaEfpze8nv1M5zC0X+n5XYof3R3zMwCTkjQFvqejaRW2w90g8QVBrT1Gtm17XQ+Dy9v7wkk607jHrJElNm00o+UDSg80e6SJnYp1K7+raqdGdKo9xde4cBEJG6VumE9iAYolF5VMe1sCdHWMCil0u+htRsXzv3maPqOCsiJHu63B++SuJz+31p2uLzbEKd/ybA5cFQ8P7YdZrCTKMBSSyGZg/b9Zne/Qe5gD4VB8XlNgQdw3Pj3rYMLrcsA4X2BUri1mYs1KWsRw9JVijV7IMy/WCWUOJtsFX7AFs8ChB1NTKEThgGQ5i/vW7X3SvcSPA==
X-YMail-OSG: UXeh09AVM1mo9zHexmvdphOLm7OQTRfeAh35.5FA.3MbkzFD8u_UjsmX2ubTytI
 8vcdihwqaAFZEspWFkUQzqyeBBYdbG.U_HuhVbLp3fh8JXmyAJApbLNyqx7otKvupGQzvcurU0hq
 a1.LsFFvex8ahbmu2RwbkL6tptxtze_Kl_NML.KYZlrBlZH.7SBPTGxYRwJDDfVuY_RrNmkxs6km
 iZbZsMEoowePDF29MNAnfhx6jpbF9R06Cvi.yaQ.bdACmaiZBszlmAmKrFsTKr05SfeJ_3C8P.XA
 X.Ol5zr7fZHFohrMtQDBb_pkbnHZGZV44XmWjZ385pWhV82m_AcJMWz5HWsFqNrVKZKg6MRrRCZO
 .PzDYSBqO75ip6r5taXsVxFTknIsmIrsmRajA5h_T9iKSFpY5mXJZjZTo5mdriVpoqxuLziC2IVY
 .rdx4o2VtNYq3oNhsYhi7jccwCUgD.1qwA0M3rFPZ64xN2mVa.bHIA2vB3BdHi.KP1OtjQUIuPV0
 69cApWDTjZd0H6A4Ww595VFy.5jXOaLVaiIysZQSS21hExk3d0hULzmVKkFVBIAmscqhNO.BQxSb
 VoNdoYjV6YMN.XxQ8FYioV_s7Hdzx7ozlIWfGX1rgbLq_qOP3Kq7ezlBY0W8zJUHugavn.7G9jBr
 uMJiMVh4CRkONXyHs_JTbH63_p5HijlmYBwfAlGPqS.e4Sy..NZO9fJRCqkxLUaGZ1neECDpo2tp
 bPtdlbBDEKwZQZ7_RZnh6qxJAhwZ9nc2djbu9zupGW0EKqIYlOu3kJgsILYFZOpntK8uW8QQFlbY
 aHyFHKrfLjEfaWLNKt_p_iE4KV_wonMa2l7g.doVsUQAEkriSdCK8tdJMrsuVX1KYw_Kr6AtpRu8
 oDfxo_jpK_yVHCmtA3TZQBgHTI7wXtebKRpZ1LLIN6MJp88Obw91i0xagMtfeAPgq_Imo0ZIRXZi
 YEc5ENu4G.Z1xT9nJtlF05X3HE6EyfJd7d3g.hOBkJLBtrUHSwfZYdfE7pX35vUFHCqjcr0i7_fl
 Gg7cpGb3A14mXowjFkz5MAU6hXyaDujbJcqte4e7TEXGIYpPogzNsDBW7qlbRtm7a0IosVCCExNg
 UEfV2o8PTR3yhUhgMQYwfra_9NKcx6C.FEvXYF4u3J.1GJodIs5bC4OLaHu5fFzGeDY_ghZpR0RR
 V3UhAX3L7.6gIaItVlfxny9RbhWhaJ5L3v2t8BEWHpa_z8o2GUuotN6K5qkIs3Oc555m0OfUcKmz
 DAHa7cirZ0IOC7_pTFoUZk.lJUod0Z5FJj6jLk6yb
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.gq1.yahoo.com with HTTP; Sun, 1 Sep 2019 05:52:16 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 426e3b5ec1af9e36f409445c51071a70; 
 Sun, 01 Sep 2019 05:52:13 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 05/21] erofs: update erofs_inode_is_data_compressed helper
Date: Sun,  1 Sep 2019 13:51:14 +0800
Message-Id: <20190901055130.30572-6-hsiangkao@aol.com>
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

As Christoph said, "This looks like a really obsfucated
way to write:
	return datamode == EROFS_INODE_FLAT_COMPRESSION ||
		datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY; "

Although I had my own consideration, it's the right way for now.

[1] https://lore.kernel.org/linux-fsdevel/20190829095954.GB20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/erofs_fs.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index 59dcc2e8cb02..87d7ae82339a 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -62,9 +62,8 @@ enum {
 
 static inline bool erofs_inode_is_data_compressed(unsigned int datamode)
 {
-	if (datamode == EROFS_INODE_FLAT_COMPRESSION)
-		return true;
-	return datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY;
+	return datamode == EROFS_INODE_FLAT_COMPRESSION ||
+		datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY;
 }
 
 /* bit definitions of inode i_advise */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
