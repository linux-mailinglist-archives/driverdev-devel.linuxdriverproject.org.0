Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA27D978F2
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 14:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30550887DD;
	Wed, 21 Aug 2019 12:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmwoqAJjXaoT; Wed, 21 Aug 2019 12:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74B5588448;
	Wed, 21 Aug 2019 12:13:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 761CE1BF326
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 72C2886D7B
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITDwImtc8JSK for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 12:13:30 +0000 (UTC)
X-Greylist: delayed 00:05:09 by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D317B86D79
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 12:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1566389606;
 bh=Gs6tfVTCl3a0CpV3ijzDB0oxKOCcKryN1lapcjxRyZ0=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=lAZrBIcvgtLpVcbT8zbFnHDf9eF5BhfaJ/PwVILQQsP1N0lFrtK3qfMbd6P75+7+p
 KbhUrwzXv3cyxASd93dT6nBsvv28ztwLR1m/W6jmpt25nF2AYxQnjzmGXFpxdmO5P4
 jd8mf86UPSDzVpTxX7jWJvp3e9v7ETjb1MrW2BEc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.9.44]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LegAQ-1ibLiZ10Ry-00qTWS; Wed, 21
 Aug 2019 14:08:09 +0200
To: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: =?UTF-8?Q?=5bPATCH=5d_staging=3a_vt6656=3a_Delete_an_unnecessary_ch?=
 =?UTF-8?B?ZWNrIGJlZm9yZSB0aGUgbWFjcm8gY2FsbCDigJxkZXZfa2ZyZWVfc2ti4oCd?=
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <ff6e12fb-f144-351b-25e9-a864b58d7acf@web.de>
Date: Wed, 21 Aug 2019 14:07:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:u4mBGVc+GTyiCCvK3dEEboNXwRxsps4OXWKIYCQbut5U5EUC9Al
 MTzKvrrobzjZcIES61TgkzB/6a8LJp7kdkzM/1Y4DbmybWlBzoS/zoGCEX+vlPyJJmDGBsU
 we44eodBeeu/fZ/662+a4UepLY4Dp8GdqZGCLlt5ptgZSICl6Khew7l70seSjAzi+F1VQVj
 vK5TTKaD4cmepUlHgYFjA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y2fLVRW8GQw=:nnvmyCdWkMynnM6zqJ2q06
 eNlmr6dr2JnaKnIrObywZ3fRngeyaLfhNtjpf7D/va6wqCrS0qCFrGnvDqZfiXKBYHNvyix8a
 ndrBHGcYal7UwOal5R2M98krCC4UQDpgwrtqEFlusxWYWLLuFoxXBRBxaphkxNFYFKzc4eX9w
 eqR/e9zEI7rT6tJfmCypc/oa8aCGoTU2p1oDo073w/Ju8EjPvKcICrdmZ2Yd1hjJeBmngJImM
 ZOYS8LkpXRmbl8JQ8ZgLp5hKALxoCT+tUw+qoMmIORPDIImPovX9D5IDqFBWqzppaKVHJBWtI
 5deTsqUzhB4Fg8dc7oWLhUqNm87+kwxFUB1setV71yzf/v/hAoNhD0VBfmS1jAy1s+6/08pww
 mUGURpBihZ74NUmqKfgz4mS+VrVDV5DHxWcTV9cpojhbydI1xUIbfnd4+tlPx7kBWlwUkRyaj
 JYYuYDkDuQGbqCWxMEIw864YkfuLJz/Yu55pq1env3+7RVWgcG2xengmuoKxjpl6EJP3Ga3sc
 bJyY7MgvrArMuBqkPd9xX68duRb/937EiKG2d0+XI5Wo3PUn8vvEgbsQxR3VmrXG42PSlNkFM
 aqJARb3va7myO76wbEhP+4gnOs2iJDjP1VwpRs168gcv0Z688cvbaMq/ICxr5SEpUkJgfIPZE
 6gZ9D3RfL3f8EkHvL5nChJpPkHPzaSg78MgaeKQSMMZU3KA0KmJYPPEAtvjkvRANIM1dswFuL
 jvSZxDMnPApQLddiToPUXNo2mGEtEHOQSPzv0d2v0cuI5l5ShnfttyGC58cugFeXc8wFDOAzQ
 TObd7Pu8Oqwq6UinzE6BIiqjNWYu9lb8HunYnO8+s99G4n8mP7IHZG74mWFNwSD2xzLMhwxPD
 h4bnWw6gEr3zT3cDc2yeJPn0K1k5GDeiHJC6qEY+eCsFh7ARUdRxOWPIExgIsLHb7+FKcDfhc
 b56suObCDnQ30v+ZRb6WLBZhFAcBUF/UNi8sMIuF+ZW1a9d6Ip/m4pTHDXth6j0AWEg1pVuxR
 pdXYrWO7q9haC/Ro5/DF2wkD3KqvSsDEsm5C1NTR9tmcELPAJXIUuzUuBJCkDcJpN1Mc7ldCB
 zEAvU99YEpAUb9BauGfZuE4IwQVYCXUS1y8J61i+ZSKkPqiLjk4LGKUG8sBhyM5/0PjrgLgK6
 wqNYrbnPr4PK17y5DanpJPrTPL9Xr+XwF5WXfSp7JoQIFwvNJeU+cwNAU1P3KBymM/tArrdKH
 0TI0YS1u0H7eZW99XpwKTUlVmEXfBXG2s3sIEj3ofmhM4Bf79vBkBojH5yKE0+V0kGxURqtGt
 gc3b4xlZvZsENoW05ODNzjimlwW2S8j1iWc1kzBdmV8ZnTA8tAWN/Ovvj+4tnDWPdeB5PYPu9
 b2kZroRw3Ykq/c0F5LcQYVUIQ+EZUXa3SCWl5oa1/QmyaLPj1F7qp6BQowndOJx
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Wed, 21 Aug 2019 13:56:35 +0200

The dev_kfree_skb() function performs also input parameter validation.
Thus the test around the call is not needed.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/staging/vt6656/main_usb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 856ba97aec4f..f57e890659aa 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -422,8 +422,7 @@ static void vnt_free_rx_bufs(struct vnt_private *priv)
 		}

 		/* deallocate skb */
-		if (rcb->skb)
-			dev_kfree_skb(rcb->skb);
+		dev_kfree_skb(rcb->skb);

 		kfree(rcb);
 	}
--
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
