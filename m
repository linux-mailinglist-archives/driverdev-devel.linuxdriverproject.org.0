Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DAF9144E
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 05:21:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01BDF86072;
	Sun, 18 Aug 2019 03:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UN0vvTrPxnA4; Sun, 18 Aug 2019 03:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B67E857CB;
	Sun, 18 Aug 2019 03:21:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF7CF1BF963
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 03:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCB82857D8
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 03:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0NDxU7UOJxZ0 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 03:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic303-19.consmr.mail.ir2.yahoo.com
 (sonic303-19.consmr.mail.ir2.yahoo.com [77.238.178.200])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9751A857CB
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 03:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566098486; bh=VL+r3q3bHO+kJBlNK0FTX8eiBkYwN0lcRePyte3rpuA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=kIAGp1nWCsOw/k1KQomjIlaawsK4/bzOKoPFXUuxOhrXsklJYDZTMJi7uvE6MLOTPshKvgHpyFORD0P8Pj/Y4hNa0GHJkp2+hux7HpgPz4ZD3AAelvoELwScdVvYU7KYbu06vro5Q8UbI1gIgpbdrhHPWrKdZjv8MyGKzG50oVdzBjTy83FMsTEKhjx8+iFksCV81IK+AY0e8V23nElUVFoedmdzwQnOtHxzoF3BkcPpLoXi9w/amKOxNq4+7+01UcrbBFDjOCwA13rzAtfVNwJLPMfYgMFLDTZc7W0Jwa2WBgjRRLOhfR50JhdoNZzNOg82vNLpJLhTcIujmDDC2Q==
X-YMail-OSG: FWrmF6YVM1mMpmZFRk31_RjMumU2B_19tQBXJCiF5Ki4d2DlaFsT48GMCYHchpz
 6RWe9ncYWNB0H2A_wQhORs.IU_QWsEcm3TarLOAwAOcbD_FKNMFLMJFKt_KkSF_0X6lOWS0evqbZ
 fCv27pkzrcpxeEOiY0rjb7naSkkUSGPuQ2dts8.AoH630jNE.v_P5KzgDtUN2qnh6sIobFhitSiu
 .7v65zhtoX.3MgL5Adig2bsjrhELEB3OgseTuv5DCf4xTPjFHnepCamxTuMe2im.AuXRYg_HL6gk
 ovJORNWL4vKUSTwhzzfTCdNMid0cx.Bc1HAUEg7zKTAPtqpp9vgp2raCCOMsFWhNn9QHNGX2sWd9
 62T._m9ltqNgp1MH0g9zDhLAjdTrgS8NbyqO0yhbtbAbZlvHFtY2r5pWrzhR6sMi7HxZ0atzwlzK
 xqXOs0vGYLUI9dRr_mjRkNKljMXIqD30vcb1BrV6gYYN68XEWcUFZH9F4RBnP8.5RMzPWrdpzHUw
 TmRHMACUU4gnp3qcQkTfZ_CBsHsvXwxPQVNAaoNyeCaApYoyUe0oGD5Mvtjei5i48R3wvFqNBCkg
 FXZVrrWWD2ieh5g_SZZcjAFlG5LO087IjQ9vxGON0j.x9TdCQ2gaSdJZGW5mqG1A7maQYWWkfRkB
 sq_jecK1qeV3WqBzAZVhMRa6T6K9DTLxBhjITgtjWDM_CmBvILQ70OMorTa8uu4zt5hckpymANAY
 ES2cm3ZwB9gS8.jkT7q_GaqF2oRUTLmQuP84EW171mdybzwATfXZwsPVlL6j9V36OCyyo5QbGtKP
 3MCO1vaa_5g3Kz0sQEEigyIGXqigw8mVg8mIfKtknC9DiivY6wg77QKWPdxFMuuXn6McCiq8QZoe
 FXBJD.xai6iwdA6WkHeSpwHP2MG4mIHBzkjS4.tzoALwvrt7xyicM2jQnvFtvhOVCXBRzdi1bw47
 hhEcZTMSw0Vp48eXXk5tVYPwRGy0hBGk8M9UbSFdrCePl6_qtcgrCKa2Ga_r7P8K0UZBaH8dRxC_
 EGd8h.2q1bq9tGtsB3a05CCzoyNaSt6dFT9ZbifDF.DLzToZNlR4hJWpgoKwXTkz6oODPKkYb9CP
 RC1KQ90QMjgiae99qSLe84w0lKgQV5gwiJWDfMbXc.Y2LDBVN1BINoQCkhlSTGsMqvPncaO3Xr23
 ALaxLwowm4PRQtPjUDBs0lZWjsIYzwp1eHUWa5FOZJU8ZrBiK7YmOqVN5Kp3QnqWMv1YKqv55dZV
 Jz0cMAHHRIKk4aJ76MKwuDs2_mv3rMj0-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ir2.yahoo.com with HTTP; Sun, 18 Aug 2019 03:21:26 +0000
Received: by smtp408.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID d0778e91ef06b470a11982e764e03f0c; 
 Sun, 18 Aug 2019 03:21:25 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <yuchao0@huawei.com>, Richard Weinberger <richard@nod.at>,
 Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Subject: [PATCH v3 RESEND] staging: erofs: fix an error handling in
 erofs_readdir()
Date: Sun, 18 Aug 2019 11:21:11 +0800
Message-Id: <20190818032111.9862-1-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818030109.GA8225@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190818030109.GA8225@hsiangkao-HP-ZHAN-66-Pro-G1>
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
[RESEND] --> add the missing v3 version in subject, no logic change.

changelog from v2:
 - transform EIO to EFSCORRUPTED as suggested by Matthew;

changelog from v1:
 - fix the incorrect external link in commit message.

This patch is based on the following patch as well
https://lore.kernel.org/r/20190816071142.8633-1-gaoxiang25@huawei.com/

and
https://lore.kernel.org/r/20190817082313.21040-1-hsiangkao@aol.com/
can still be properly applied after this patch.

 drivers/staging/erofs/dir.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 5f38382637e6..eb430a031b20 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -82,8 +82,17 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 		unsigned int nameoff, maxsize;
 
 		dentry_page = read_mapping_page(mapping, i, NULL);
-		if (IS_ERR(dentry_page))
-			continue;
+		if (dentry_page == ERR_PTR(-ENOMEM)) {
+			errln("no memory to readdir of logical block %u of nid %llu",
+			      i, EROFS_V(dir)->nid);
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
