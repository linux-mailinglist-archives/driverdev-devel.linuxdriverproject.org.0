Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB7791413
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 03:56:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65BA785EA8;
	Sun, 18 Aug 2019 01:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRIiH5fTh888; Sun, 18 Aug 2019 01:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9017785DB1;
	Sun, 18 Aug 2019 01:56:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0847B1BF3C8
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 01:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 04E308578B
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 01:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uN8HuyCRk6l8 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 01:56:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-25.consmr.mail.gq1.yahoo.com
 (sonic304-25.consmr.mail.gq1.yahoo.com [98.137.68.206])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A3BE84528
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 01:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566093409; bh=7wiUkSJ86VOkepGAHwVEnii71cs817iuqxjlV0yqVSI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=FDBsDJtFmpH6IxQ95s6Y2j7LEJfa7aYx/EMpcGvZF9zphoQws5ULRsVy4QkPwrIusdR5nXgYEGOpiNh5N5cHWbJNE7G3iuDHQcLJ4hiv/qlo3Z4eO2s9YjVzxqxEDLBcUBkMYFL0AuoGgY8dDwUBMzCg+12kYFOruHs3GofLZhILFyyQmYhhGgtvrTJ4RIBFmhD+JgrSWUchz9/da4nUatxGj8n/Sq32m9UfwrL+cNPD2ABG6uEwlYh+c6ESnCrCYAj/CBUiMAyzYKs4FR9CEg9T5FIp1sL67kUp2Hpqazl0/v329iklN5yrQDx9wHVOTKQNQQXtHJoFjjGksC9x8Q==
X-YMail-OSG: wN1O5xEVM1ngY_0OCJpc.KKFC0nz8sQV_1oGH16.37UcLuIPiV1epD2SLzKV5kr
 YvWjk90u9HZPTE4PzcVZzLa66s2dsJFjWarGCwMQJC2Pe8_GhXHygc7166OJH7wFZ0Fsg0DieynB
 i3XVcsQLiDI36zx7gprY0k23HH_a0n1Fz1yhnV1lIgupi0rmS9mqfrPcDGqDJhO27_2UGxWjfQtV
 bv6uR6VXcMl7lPmS.fLhBIN2hQquDxewnVHQApR0_MjUG1uqFbVZHUkp8ZJ8nd8XWq6qsy4PX78P
 GEIMe7U.2Xifj7cXG9_X2tTV6m3XTzezDWEs7u5nJkXad8R3z1W9aLZZWan7pRMdG9REdt9G7.dv
 mTRVZOS2rYJ2oWHRC33qlEUcJY_K0qP8PBsWvCPPV7O6rjfEyydqHwLNsdgnLD6F.Y7FZkd5Ur.E
 MA7aDT1xX92U1eNu3Z1yLdKZJJiR1BAjhtJ0MG93ipeLSu5nhziAlLDIrSFYtahOiGQDpVb_DMsQ
 GrI7AlhAaYxqC23zfndUNtyFVOTEF1y7cLg3jS3TeBGAF25BEjH8eIOOTwZIH_U_1loRNtMf8kNA
 co.6vGovVEoHxqKnSmYJCTVKiEZM5AKX5.bdAeFigv01Y4mAHQZbsXXV14iqE2ny0i.fqcujcDO6
 O5d771SGRqn7Sf3MLTU1ZY9lTfoVo0nk95SBZ2Sm1MLBccA2LrTaUXwjnctoYVNVlkZe0pJF_aMq
 M6OxOBUl6CvVrIeyhzuXG87XEZf84._yTSW1lUzeADJUy8.Xy573MY8fAH_y.MOK.2gh3J3lj8ID
 37PQ3JR4OUpHX9G7gaHQl3AlvorBOucrh7EGLC0ZAIXDxIIvKQ8ZqG5NI2_x22eH.iHmxI2UDQ2J
 OjtaVK_xXKt0aHtssYJf9tPef.qi6kWA3SG996s17I9.L5146dBl4alPX1HpNv6xZllK1ZyKsjGq
 UAelQSKTpVwbcbRP5oQpLoFhUQDRRoOorfmzrzsQ2lTLsyRpowvGbsHz_4uXUCNyW_cdNKZ1mtzc
 fLyv6bhXbwLojuwFoGJ5pMrH9FbVI91iKck5_CfT_Ybv0dpWvRjwyW6EAH4Y50vRYckvRZezbFOc
 JqncKTaufWjwEJscFJ2fdmg1qra_vMD7zK8Ryl_eF6dmmfUTp3M8ME80ye13VBtP55bvZpgdF0ba
 OmaNrQSRJjnqrQ9bpkgAbP8rFismYDtVPajt1ju8oKUyUJRCJh6J1WwGVBV27ECLACqJi7dn0m15
 M5nclAMo0jmUWAd.TSKOpQTRO357B35sVEw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Sun, 18 Aug 2019 01:56:49 +0000
Received: by smtp409.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID ede1d329074793b6a6ac0c38eeffc50c; 
 Sun, 18 Aug 2019 01:56:47 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <yuchao0@huawei.com>, Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Subject: [PATCH v2] staging: erofs: fix an error handling in erofs_readdir()
Date: Sun, 18 Aug 2019 09:56:31 +0800
Message-Id: <20190818015631.6982-1-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818014835.5874-1-hsiangkao@aol.com>
References: <20190818014835.5874-1-hsiangkao@aol.com>
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

[1] https://lore.kernel.org/r/1163995781.68824.1566084358245.JavaMail.zimbra@nod.at/

Reported-by: Richard Weinberger <richard@nod.at>
Fixes: 3aa8ec716e52 ("staging: erofs: add directory operations")
Cc: <stable@vger.kernel.org> # 4.19+
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---

changelog from v1:
 - fix the incorrect external link in commit message.

This patch is based on the following patch as well
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
