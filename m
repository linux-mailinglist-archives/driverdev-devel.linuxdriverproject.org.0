Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56B998236
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 20:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 586FD88185;
	Wed, 21 Aug 2019 18:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XeLy7z74uXV; Wed, 21 Aug 2019 18:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6107488187;
	Wed, 21 Aug 2019 18:02:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E22271BF308
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 18:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DBC9586407
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 18:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VpwHUsk3vSIP for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 18:02:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A66CE86403
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 18:02:08 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w16so1923585pfn.7
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 11:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LtYc2nsl9XwoS0Io9P5/H0hmwBKz+t+m/NiZxThx/Us=;
 b=euU7xlu+fsUb13ao5ePmFKEgHFCkX3pMx6jYMWrdhhk5aqt9fhIDmYZxsmaDX47fPs
 b4I6gqz9RG9QdJtk0ghMbFd+OVC0Gie2rSDVyraatIFd1lgJI9zn5UMMAxKJNhj6/xwO
 olS+WFloNl/rwflms0tH1LtiiL2TQzemdzyWgfI/3A/U0WpjCSTF0hjTV/WFBhCZWwwF
 8z+bcsAiTdyaJdBEOEVR8kzdyhCOTT/pRHO7bO1q1N3oOiLkDzFaOd9lEaX6a0xsF+Jb
 wZj1dfdCRTUF6FLW0vYe71FcwyQoaguJ3emfQvX5Jmoh5yp78RQIOvZcmsnKtHgy0QzX
 YuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LtYc2nsl9XwoS0Io9P5/H0hmwBKz+t+m/NiZxThx/Us=;
 b=DIZHDvmr/RXfbizlbI1Yjwgb+aZjTI6b2u35PTKyXhjgZ5abBHvXbmgbd7D0FuqugS
 XcCo5fXgDpf0l6G+64i4zujINrvR2pQlQyaOO94MoiGMHR9DkJJubQbFKT9KRuREdPpy
 r5FzZSGGqAbypOHY3Tyu7XFWl+Ea/5pVotNuPyxAO/zLYjcTQzu9g0TDLt3PrDMQQWxA
 8nwQj72JskIqLxaUcesesIfHV6bfebFdmt+mrgsqDl+xFwvr3Y9GFR6ToEkC7k71Hoeg
 u+H/47HGOtQeiuRl1U4vZEMMFffz6FLTvXyvT/TfMR2S17sx8/TmkTHYSmCXYomJAWZT
 VcwA==
X-Gm-Message-State: APjAAAVUZG7BB+zCEJApUW46SSi2yRFRUh2f/2ZlGduqFaW8kQSVsTWj
 L4uMUsm9MCajcbxG/pSsQok=
X-Google-Smtp-Source: APXvYqwsGq0TXgAP9xST695omRpXSbBLkyKrklAKes8dsBwEssj2+oduymqhDp3Kp/z4f+Ak6Tc8ug==
X-Received: by 2002:a63:d34c:: with SMTP id u12mr30661141pgi.114.1566410527948; 
 Wed, 21 Aug 2019 11:02:07 -0700 (PDT)
Received: from saurav ([123.201.163.53])
 by smtp.gmail.com with ESMTPSA id e10sm30774663pfj.151.2019.08.21.11.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:02:07 -0700 (PDT)
Date: Wed, 21 Aug 2019 23:32:01 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 hariprasad.kelam@gmail.com;, himadri18.07@gmail.com;,
 saurav.girepunje@gmail.com;, colin.king@canonical.com;,
 shobhitkukreti@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Drop condition with no effect
Message-ID: <20190821180153.GA10678@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the "else if" and "else" branch body are identical the condition
has no effect. So drop the else if condition.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 19486f0e0ead..6e4a1fcb8790 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -482,10 +482,8 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 			*pU4Tmp = BTC_WIFI_BW_LEGACY;
 		else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_20)
 			*pU4Tmp = BTC_WIFI_BW_HT20;
-		else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_40)
-			*pU4Tmp = BTC_WIFI_BW_HT40;
 		else
-			*pU4Tmp = BTC_WIFI_BW_HT40; /* todo */
+			*pU4Tmp = BTC_WIFI_BW_HT40;
 		break;
 
 	case BTC_GET_U4_WIFI_TRAFFIC_DIRECTION:
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
