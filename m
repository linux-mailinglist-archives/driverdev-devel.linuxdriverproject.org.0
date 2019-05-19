Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7272267D
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 11:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9626C86717;
	Sun, 19 May 2019 09:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEjRxsTqCbLU; Sun, 19 May 2019 09:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CA5786429;
	Sun, 19 May 2019 09:36:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 078181BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 09:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0421623018
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 09:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gv1s3td1PVyk for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 09:36:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic310-20.consmr.mail.gq1.yahoo.com
 (sonic310-20.consmr.mail.gq1.yahoo.com [98.137.69.146])
 by silver.osuosl.org (Postfix) with ESMTPS id B3F6221FF8
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 09:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1558258572; bh=rNoyCAgrxYRbN0K2NqdLraf5QRw30tYLlkja2irKysw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=BByQFAwFoAxQgfOHVmrTEYloHtH/TJ0PN81dUMg8mPyTpqsWYFgBxyaxIw/RAdEmMPhC/RuH1rwjfGhH42ybjL9HJjLvUY5YXiyBv5jesBJiMFigGuOCo7/GWwFe4LD1UKr3BRrrBP8chjR/HOezt4UGogG74zaIhbyK06yV+Ly7XtgtyQCphjDme110k6ctNS3fPa9G5niBcrPmOB+9O9vQeOVBlYTweI4HADr7HT9pLwaiqo5XxGGnSBL4rra4Ut6cRa412Gh9u68JBax8PBHJKTF6tL1+lS61e19VrOgOcLQXO0Sci6Wx8QTQUsvGxEY/+eEq2DCPa712eg4+iA==
X-YMail-OSG: LRPXbXYVM1n66J3VNhd_ubjUWPkCzNTr9yxfMMJ.cy46oplJcxWpEV00jHH17ji
 I1.qPDQNL5wDnPXYil.8ikp_aRA.Srs54c8_bc09EEbGwygjxXkOsw3u.gVcsgnne8Rp.QDm9o9V
 .2DFyXTvMR3J5itddF_nwcqBKHiCvCBpnN_66M4mSLy71OZbIXPHLYFPOKsdifkDwcN1jxRyHuJ1
 DTXbIhGxDZHmOIqfD4b9xfPzn9JFmqVXGyB8yZEhax76k1J.EngiugQ31tKPQwSUskvVwHNbPTJ2
 BgQ4d7YO4DA_S7zZ3mzIFDhE9XoWw53jWf03sGq2z6dzAC12nFgMfFHv1OHWRJdhQ4Yq6R5WRmON
 VFztj_hg5REcfz9DrSbYRwtoHfNoQDh5z2a.ro.FhpqLz.W_PElEqZZpaWSNKQTmGzeRLOfNbvQI
 wpEgQzduDtpTOVaSxetKxu3XITqMGDWTHh248riHO1XcWo0vRpQ0U9yr9dHtKXJQ9EIm2QN_tbaD
 v4htJCSvDYzF0hrzGVbIxpd__dCsl4soXxNtoda36fV_bzG2Z0LPdxFIX66OWhvLGCRa7ZGgRiG0
 om5kvBfjc8m7P9eSspVTwPHDxeNyCFcxWs_.DcQjkXHyMaCVvMtCv_yi_ZEVSnibcYnmDpjRTkbA
 WXAF3lHe1TMbX0GvccNCP1WJ1Q6z2qIaCgR3Zl7QVw9e3MM0jiebWYI_FXz5p1xn09OMdILwKRHk
 Y2BX__IyIfsZ6Rj3JZIPwpi8s7BJm1v0zNhuIGGeMiOLO_Z2xof2S59AcZctGWcI8kHZW4yeZP5L
 .g9kqbtQuqT5XtPqoD93xfUhgdbNkn91NQlRHNVCeBJV1jA_2yR_CfwUkRm1kmoKqL6hEvPp4.Ur
 sfcUBF04IsS0ehEC4ubW8VLk2YKpd.9tC78MT2rRQPoFG_AISfAi9Q.zLMuVnJskQKsT9BJk1rw6
 2UZDlPHs_.e3ovRz2cRHtq8WvpMmku5CJw3VYsX2wKNCHD_oE4yqAjRU.B2QKcHBumESnB.V0iD.
 unz9pftcse3qBGPuAaroQKbvVF5mpzC5ogFOp4FM6sa1JR_8u1kvxMoxy6.OqTmQuoR82LAF2RAT
 .b84pJlgXZXkV7EQqfs00vocVZwwpbEBGeaz_RaEJchCP1uApCHCofGazs1XHegQAtM0EQ2WQCze
 TYhizkNa9Rvlw76KomgqqCGy05fRahzF1mhD6A_xkoZN5QO6CbspCQ3s-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.gq1.yahoo.com with HTTP; Sun, 19 May 2019 09:36:12 +0000
Received: from 183.156.112.94 (EHLO hsiangkao-HP-ZHAN-66-Pro-G1.lan)
 ([183.156.112.94])
 by smtp431.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 148e062d14a667deeea031b54b94079f; 
 Sun, 19 May 2019 09:36:09 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
Date: Sun, 19 May 2019 17:35:57 +0800
Message-Id: <20190519093557.20982-1-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518173331.GA1069@hari-Inspiron-1545>
References: <20190518173331.GA1069@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below warning reported by  coccicheck

drivers/staging/erofs/unzip_pagevec.h:74:2-5: WARNING: Use BUG_ON
instead of if condition followed by BUG.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
[ Gao Xiang: use DBG_BUGON instead of BUG_ON for eng version only. ]
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
change log v2:
 - use DBG_BUGON as what said in the commit message.

Thanks,
Gao Xiang

 drivers/staging/erofs/unzip_pagevec.h | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
index f37d8fd14771..7af0ba8d8495 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/unzip_pagevec.h
@@ -69,10 +69,7 @@ z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
 		if (tags == Z_EROFS_PAGE_TYPE_EXCLUSIVE)
 			return tagptr_unfold_ptr(t);
 	}
-
-	if (unlikely(nr >= ctor->nr))
-		BUG();
-
+	DBG_BUGON(nr >= ctor->nr);
 	return NULL;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
