Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0AD916AF
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 14:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2F0D8489C;
	Sun, 18 Aug 2019 12:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-aR9N+AZMln; Sun, 18 Aug 2019 12:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CA8E85C04;
	Sun, 18 Aug 2019 12:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03D901BF3C5
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 12:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F24B8874AB
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 12:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j42lDEBYDYul for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 12:55:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-22.consmr.mail.ir2.yahoo.com
 (sonic304-22.consmr.mail.ir2.yahoo.com [77.238.179.147])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C970A8744A
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566132921; bh=jKgTuEY61Ia3/tSy7knI2OLWYhEXkTOsi1PJnFLa0EQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=oazOFWB3FynD6KvVTxwuFf1QKUr8XIVmw4nfNtrwh+B+lZXgs7WOyaLHjBysPnTXK47PdcRoCUjJ+aOgHsHgzys8t99N6VtlZyw32Yl+OktYqFsEesrOwN8ft52jYXjdKD19uwFxUUZO6zuWXTh8UgMz7pDhZ8ylJAeUAeDSPzT7TXU7L0aTd0j866AGJ1dnRZWqmADL/b20OLrUAtljY6cN4JjtB7WoATeZs2j4Q++UjUAuHunWYLisAyixTBxmymGk/ZyKtBAo0B/u1C1lHbARllgaBi6C7dqnq2l+rjubpS9YPPinnY5SjzGNBBK7NxJbpzuEjL2x8YsF1rC3rA==
X-YMail-OSG: Tt6Sc1MVM1ngyWoauh0bUwd2.Id6Cprx0oxQt2bKSXyjPBmo35BX0UPGv14SHU3
 i2uK3g61B5NmKOVmqWhhHNUTLADbtRq5wjoRdvIbTMt_nXOBQTzMolnV6KcPOcjIQWeiiDGaPSpT
 6ZMcMw6qfkYV8IVDVmUw3wYP_pFNl1loNF55hv4uqY9La3FzDgBKYqOXelHQgZm13L16nHtlV0n3
 q6_eXMRO3RVNfAMGO7DcENjVJbVLIhCzl_WdpGJ8RDkFaN7sjxkhlsxUdTLzzk9wCEdTYL7Bvd1i
 Qn8TXGQ2Hxa08jdwwUeonil5ttMBLFQqTl8KVvrt8olQP7jf378Hy8xhWmXsga1k4DkzQYiqXsZF
 S9R9oPSDEdNFviADxDMA8g9X1uagG4t59s8P.pE5bHTYDzS6S52d9XAiATqCxzfA84aK.MnPDud8
 IB3QhI4k_d6S_Ca2dki_OMsZgaMwAW6Mnc4CR0_mii1WkiPBXgndDEeLrVfdUH4OdEqDI3Kuqb99
 qsXJ0GzMyFD8cr6T0bBYUMRwiJnJJ8jPwkqnkTo8kIx5a7IZoUkgh7a2zwaRm0XAq7LUudcv7HK0
 N3Jabk_ICyv_RnJ0l0Hd4yqRoND21xnCFilX94vAmvuoiRb7SiN5HXXIgVXIihEfMwlxPBJfuPhf
 UYhG16qBvHPnZL02sTx_1Nt.rFMjbzlrks_deDjFm6Uoux8VSxGcw3vimu00uyRKE93vNnonhyOp
 fuHRhicly_tIK5RsMpqUkLLvcshzkokQSsgIefjgpKpLUGHZ1JP8vCaoX__uro02x2sW2C0z6uqm
 VLPpjtOPcK0q4y.teTI08sw2K0CcmDxhnnf6JZR_6sXDsQYSAnqtF8dGF4GtTTkdOUx22HRG4fTK
 2229OQmJKRVBFKels66fPaTJuSKMGNL01vNAasfUTTVCbNo.JmgY58e_HnmC8iUFdLoc4jJrNOak
 _LuDoEFExE3d_97ffM0C0qqObZzG14_upCFGNDfgNwZA4BDefYMKQ3zYM4Y0_Iy4CnJA6ppdctsu
 Wrhk13prswf19UrPx6kibGpGiUDgXJFUNYmPiLHKPe1.m2wZOnOkwTNhLNCrr2pn1FNHlU3hX_IJ
 5hBgFCUirjm9wSxLIu8hzrk.sGUkgNvAXuabk5M5d7bH_DQcdSJTYXekSSrQBqCptwIA5XwhXSK_
 qz.KbTXbkZK2xhQW80ZwxEvCrEmdO5ITPT2IfbfEyGdpmxB03BwXjR3UszsllwFg6fpOsMAjaop3
 cP97lIuOTaMcm1iHK2BXGN.5FK70wtZQXmg21xQq2
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ir2.yahoo.com with HTTP; Sun, 18 Aug 2019 12:55:21 +0000
Received: by smtp422.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 1fc0e4804ad770b0a11e2771bf1d5885; 
 Sun, 18 Aug 2019 12:55:18 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <yuchao0@huawei.com>, Richard Weinberger <richard@nod.at>,
 Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Subject: [PATCH v4] staging: erofs: fix an error handling in erofs_readdir()
Date: Sun, 18 Aug 2019 20:54:57 +0800
Message-Id: <20190818125457.25906-1-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818123858.GA24535@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190818123858.GA24535@hsiangkao-HP-ZHAN-66-Pro-G1>
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
Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
changelog from v3:
 - kill message when memory allocation fails as suggested by Matthew;

[RESEND] --> add the missing v3 version in subject, no logic change.

changelog from v2:
 - transform EIO to EFSCORRUPTED as suggested by Matthew;

changelog from v1:
 - fix the incorrect external link in commit message.

This patch is based on staging-testing tree and
https://lore.kernel.org/r/20190817082313.21040-1-hsiangkao@aol.com/
can still be properly applied after this patch.

 drivers/staging/erofs/dir.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 5f38382637e6..77ef856df9f3 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -82,8 +82,15 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 		unsigned int nameoff, maxsize;
 
 		dentry_page = read_mapping_page(mapping, i, NULL);
-		if (IS_ERR(dentry_page))
-			continue;
+		if (dentry_page == ERR_PTR(-ENOMEM)) {
+			err = -ENOMEM;
+			break;
+		} else if (IS_ERR(dentry_page)) {
+			errln("fail to readdir of logical block %u of nid %llu",
+			      i, EROFS_V(dir)->nid);
+			err = -EFSCORRUPTED;
+			break;
+		}
 
 		de = (struct erofs_dirent *)kmap(dentry_page);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
