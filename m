Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 890F3743E4
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 05:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B32C186C5C;
	Thu, 25 Jul 2019 03:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ShQksWy7NEi9; Thu, 25 Jul 2019 03:23:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3840986C11;
	Thu, 25 Jul 2019 03:23:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 186381BF96B
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 03:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 15189860D1
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 03:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vHeGYJYLeQdt for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 03:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79324860BE
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 03:23:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k189so3197705pgk.13
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 20:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=gWOX4S2cmsNDQd7ZgPQfa5ixwhND2vZIS2QHH9OWdfg=;
 b=l2jb3A1MO1XyzVUoqM5G7/WDQ1HMx8OR4zyPKsqa+mrfNPiB4YjbcjML1BJdqxUUhz
 70cmpS4K4Pal11bPy6q1Ba/0Edh4jQM5HQROUn8rqIqeh7WWDq5ceNoQ5ECzWTwAp+kZ
 is0cPH2PfG15KvabWvheJ5IWcqJj8Vn6Sw0OlwpHl+SZaH8fSdTzQz92ycuO56rJB+95
 6EMrZqG8H9VBigaybM2nrUVilIHZ11rt+B4y1zgKOKHrekF56bIpIYvqtad9SvlyKWZb
 OwJObY8xLdSY7T6mEU19ln6YH8BxuGY1U0wDMOYheHLt3zijqDUX0KvLfWeXQL7ahQ7/
 sosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=gWOX4S2cmsNDQd7ZgPQfa5ixwhND2vZIS2QHH9OWdfg=;
 b=MhZtjc/kTJp8LTBgGh3mzjZogLQ10h057C8rud46gJNskWTXZ8jxqhUYLdW2/Lh10v
 BNQnzaVVeHTSHLTlJ0sV+/NQX5vb6OiegFnQE91QzGpCOwxEGYO1zy1nrPIamD0w2HYV
 47WyOKpoJJdKuvSx5kTO/pXGJ87xdr6lvW9PLZq8TR4KgQliet+z89pvpfBRhNxtNMn5
 siiOC0N7poYk6e3nu+OUn5pcTq9ccfGOrgpSIn3nzwQtRvhgt3eUD3S6T8iKe5hWmQ1x
 WoFbaati2RfGW6NAME4jnv3OyaSbuwAK6uvOZc7V05z+9/esYuf4j4NtrbkMaMTQJoJW
 Hufw==
X-Gm-Message-State: APjAAAWs324kKTRTLeNunzwbtJhvQZWl+wHjd4iQcPNo1Tv59egpiZWX
 iq46eRppZW9QYrW53Ni0dhs=
X-Google-Smtp-Source: APXvYqwUocSs3pHrtnRJQ38nov8KlT7MAbFsSOEEWV4BKHnlkQjxwVfJBcf7ZoiL10AMlfczwbvdMA==
X-Received: by 2002:a63:6947:: with SMTP id e68mr48279889pgc.60.1564025012080; 
 Wed, 24 Jul 2019 20:23:32 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id 143sm70254341pgc.6.2019.07.24.20.23.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 20:23:31 -0700 (PDT)
Date: Thu, 25 Jul 2019 08:53:25 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Remove unneeded variable pU1Tmp
Message-ID: <20190725032325.GA16473@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Both pu8 and pU1Tmp are of same data type u8. So replace pU1Tmp with u8.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 5257287..8987b5f 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -389,7 +389,6 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 	u8 *pu8;
 	s32 *pS4Tmp;
 	u32 *pU4Tmp;
-	u8 *pU1Tmp;
 	u8 ret;
 
 
@@ -403,7 +402,6 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 	pu8 = pOutBuf;
 	pS4Tmp = pOutBuf;
 	pU4Tmp = pOutBuf;
-	pU1Tmp = pOutBuf;
 	ret = true;
 
 	switch (getType) {
@@ -516,32 +514,32 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 		break;
 
 	case BTC_GET_U1_WIFI_DOT11_CHNL:
-		*pU1Tmp = padapter->mlmeextpriv.cur_channel;
+		*pu8 = padapter->mlmeextpriv.cur_channel;
 		break;
 
 	case BTC_GET_U1_WIFI_CENTRAL_CHNL:
-		*pU1Tmp = pHalData->CurrentChannel;
+		*pu8 = pHalData->CurrentChannel;
 		break;
 
 	case BTC_GET_U1_WIFI_HS_CHNL:
-		*pU1Tmp = 0;
+		*pu8 = 0;
 		ret = false;
 		break;
 
 	case BTC_GET_U1_MAC_PHY_MODE:
-		*pU1Tmp = BTC_SMSP;
+		*pu8 = BTC_SMSP;
 /* 			*pU1Tmp = BTC_DMSP; */
 /* 			*pU1Tmp = BTC_DMDP; */
 /* 			*pU1Tmp = BTC_MP_UNKNOWN; */
 		break;
 
 	case BTC_GET_U1_AP_NUM:
-		*pU1Tmp = halbtcoutsrc_GetWifiScanAPNum(padapter);
+		*pu8 = halbtcoutsrc_GetWifiScanAPNum(padapter);
 		break;
 
 	/* 1Ant =========== */
 	case BTC_GET_U1_LPS_MODE:
-		*pU1Tmp = padapter->dvobj->pwrctl_priv.pwr_mode;
+		*pu8 = padapter->dvobj->pwrctl_priv.pwr_mode;
 		break;
 
 	default:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
