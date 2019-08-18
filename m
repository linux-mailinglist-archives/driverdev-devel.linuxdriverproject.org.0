Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 962649140C
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 03:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA0F58598A;
	Sun, 18 Aug 2019 01:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pH3QXFPacSiS; Sun, 18 Aug 2019 01:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 146718583F;
	Sun, 18 Aug 2019 01:48:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A38031BF3C8
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 01:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D29C8583F
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 01:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e50tHyh4EB2f for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 01:48:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-55.consmr.mail.gq1.yahoo.com
 (sonic316-55.consmr.mail.gq1.yahoo.com [98.137.69.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 11FF08508E
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 01:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566092929; bh=3z4YsL7cITdwo3WfgBzjdtBKxHfbzIYd54Y/QXXxpig=;
 h=From:To:Cc:Subject:Date:From:Subject;
 b=igjsmRk2B/VVMaIiwk6KZFJ2xs+vdkB0aTsEmbInOb3+X4jBeC3xc5GWN/bnYJeQ/3ugotsaMLuXLDNSVDW+RsZ2xQgJhXn6BlInOyZOt3zFUjpqF13OO8hBUngPCNJIpvCMsy1r2HWwsVzmI8NHrpH4pejQnUC05EffWbZXO9hACzDgoo8w1fbNBnZH9fDdTzQWkuwZ4ReO7PW7Fi3+/h5nAyV4psVt7lo+U2iOu5q7gwisfaumKBdTDLmceTpzftAWFAsCAWrGdADs0Bhw6+XIQ98o8Z0A1mPnET1PHgsm/WO6DvsANrRlZGVcqSgDITJDxZayIovb2713IBng4g==
X-YMail-OSG: nH1tLc8VM1kDn9rx2c7sy4Ia4G0fR8nB1KDqylp4FskuR13tFJNVAPwp840OXp5
 EhdNzOzVsNmE7oedZI.bicNh6Y.BUanFjxjAkKiRMaee40cc_0EVqmjKoLOjackBCV8S0iz6ujsp
 RADzb3Hz7mDmBa3S3zCS7UcLlpImM.xDT4ovcBwWoHZ71b.fQWIQY0GPpGeUZQYE3Z4h8gcmsJXL
 wAxWZRyExv_LAqhUEi0Ktc8sXAwljeXkuu2KRvHdAymTDslbi_17hUs6APnlTr2Jr4InQEZ8aUXw
 YRdNha51u84WLXU_ljA20gbSaaqAZyHH5h1MHSJB61IIgsvKc.iyyDOdXj9NFVcBHffBsaWRsJrs
 1CnB.dH6ODkf2UNOjProgFs3PV.LtqTWZleiPe63zUc0FRpOolRYxmBCutnURgUYF66a43eFadr0
 Cic3D5wt3QuPJOJjMzWSDirBuACdYLIrM4CI0fyw8W6AJ4M7A_Mn_H.IoZRz33SwCPnPofPuZcjE
 JiQgGviKoqQRed3bwcT47oWp5iFdDhS07V192MYe1yQ6fAmDyhzgUSD1vewYdpJ7fN.N_4JaMRp6
 P1nfunMU4NBxqwYJzW9WxZzdOWHHGwKLqjWDS1TylVvr1dSDMz.y8IkO2BLW0dZ7Lg3e.QousgcU
 .84G1QxI4kiPY31wANpRIP1rPB_vBk84ecr08dmO_QRHVjLAxmvFAEWSl2ZvaWoJRzUolq4yrnTc
 Do1WMUIVjlGP53sg9J6a5elF_uKzkbZ10qkYxpZjtioSqj5q7MhOOJNvl9E9w0sAZIEOscAv4LZY
 MVQVkCeYTNfj1KZGNpnX5RmlfEoFlR9c7Jrbx6pXc2JJ7RErzQl2xsksY0K2tYk4BVQAi91H58kB
 rqWHIU7t.HGxJ_N.pEl0WioD4aL8DBXT.FbVCgwshCkp6pq4x8ImtDz1dbjfK_YyzmSq7SIceAID
 rZV..yrIopk0c4z9QIcARAA.ZGj22.MtATeg9iPC_2yZrqKjxjFe_AmWpFgelDKBXi17BIS81zQw
 PeZKoDaI9SN4GuyvVJ1Ekr9jNxBI26HwJd8MhuWLcVMqTixd.dIgLodiZL3qJVFz0K10HOyK_ZEd
 1ohHBW4Vp9giHb3d5q1MZz.vXv_.nB9pUtSEwjGH9F_wVZqArmt2TRjo28N6hvCHtfKhl98bQioN
 JdIpEhf4lkn3XK.LbY0C.083i3brSpG3uyhB13CP6rEgBw0NUkyu5eoKmvy7VSMnWKrJvMc2liSv
 czKCr_7IpTwBhZUpzVapYwwMr00Y06wwZqzc-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.gq1.yahoo.com with HTTP; Sun, 18 Aug 2019 01:48:49 +0000
Received: by smtp411.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID be81c6d863eaec55ce60d29fea3fc0a8; 
 Sun, 18 Aug 2019 01:48:44 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <yuchao0@huawei.com>, Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Subject: [PATCH] staging: erofs: fix an error handling in erofs_readdir()
Date: Sun, 18 Aug 2019 09:48:35 +0800
Message-Id: <20190818014835.5874-1-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Gao Xiang <gaoxiang25@huawei.com>

Richard observed a forever loop of erofs_read_raw_page() [1]
which can be generated by forcely setting ->u.i_blkaddr
to 0xdeadbeef (as my understanding block layer can
handle access beyond end of device correctly).

After digging into that, it seems the problem is highly
related with directories and then I found the root cause
is an improper error handling in erofs_readdir().

Let's fix it now.

[1] https://lore.kernel.org/r/1746679415.68815.1566076790942.JavaMail.zimbra@nod.at/

Reported-by: Richard Weinberger <richard@nod.at>
Fixes: 3aa8ec716e52 ("staging: erofs: add directory operations")
Cc: <stable@vger.kernel.org> # 4.19+
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---

Which is based on the following patch as well
https://lore.kernel.org/r/20190816071142.8633-1-gaoxiang25@huawei.com/

and
https://lore.kernel.org/r/20190817082313.21040-1-hsiangkao@aol.com/
can still be properly applied after this patch.

 drivers/staging/erofs/dir.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 5f38382637e6..f2d7539589e4 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 		unsigned int nameoff, maxsize;
 
 		dentry_page = read_mapping_page(mapping, i, NULL);
-		if (IS_ERR(dentry_page))
-			continue;
+		if (IS_ERR(dentry_page)) {
+			errln("fail to readdir of logical block %u of nid %llu",
+			      i, EROFS_V(dir)->nid);
+			err = PTR_ERR(dentry_page);
+			break;
+		}
 
 		de = (struct erofs_dirent *)kmap(dentry_page);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
