Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFC54523B
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 04:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF41C87A24;
	Fri, 14 Jun 2019 02:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eghtr3ApVDnk; Fri, 14 Jun 2019 02:55:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E984185CD0;
	Fri, 14 Jun 2019 02:55:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D04731BF2F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CAC0E879AA
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoG66fJf2atN for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 02:55:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E0AB85CD0
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 02:55:23 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id r7so476505pfl.3
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 19:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=SwSZeh81DBlOnvWVgHdXN91MkGQB7AkIc/s+fZav48I=;
 b=mZgMNuIICMJ535dfwlrSQzVmNFBy9rpWsCv0yaKH6iq4Xu5Bf8q89rii/7rBR/k/UP
 etYiSsEg72LzqI/pmcOInN6jpurv8Hl3O47tnPKU9n7bIYux4r9sXziHKCG4kGCR+/yi
 qSpquCRxpm6A7gSAdmv+tO+O3hcEX7vwILUwq0tcff6BDR7sG1TbEYM3Qw0iXXnhdJD7
 koP9HhsTWD8ZVFEEZvBo7vN5pf14q10DNGp4B1g/QYepd/OCWqRpqOXdcYzs/ZSr56Zh
 58R98oqe2j5peb2me25tz2bxoEUptrgHrZhYnr5zl8R4m0CZyuiEMd4pc8vdj48HwQ6S
 uvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=SwSZeh81DBlOnvWVgHdXN91MkGQB7AkIc/s+fZav48I=;
 b=A0zREalMVWgCMEbqMr41nmtyE6tJQSVaKW4f2ESQeBzhKhRvA5MpsSi/1Pw9TtAI5m
 TCqm9QVgNAky314/fRlJwSBTIMkHtJnXWe2Twju2dSovOL74BulBhu9WZm5Qky3APC3X
 HtW1tXqvKLMQT1ujwE+/R/lw903dEZhWXJTMS73Wa6tRVEPAh1cyQy88W9WKE1/vzXCk
 XMq5QtjFanByeWofBg1qqsb93dL6gu07LjtDIChlgoN9xwudwVFwLpYE0xztzI1KtW/E
 nqDJA38e0nvUMxZCFwzWxGpaXklN4voO63JRvvPwH9CvBmTIyFf0vtbM9v+QxfyNIrqa
 rYmw==
X-Gm-Message-State: APjAAAWTzi/D8q3z+aXEaCfdjmNx69qEBCMVQS+b4O1RESl3zWvg3b4D
 qOLJNTf820gKpXUpscF+5ahS/Ucd
X-Google-Smtp-Source: APXvYqyeoz280H99Rzxd6MfOi9jtrF/1mnTPz4N8u9/1DhOIFjeclmoJh5RkhXKyeL22ggZMfoJhlA==
X-Received: by 2002:a63:d458:: with SMTP id i24mr24164947pgj.171.1560480923027; 
 Thu, 13 Jun 2019 19:55:23 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id j2sm1033788pfb.157.2019.06.13.19.55.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 19:55:22 -0700 (PDT)
Date: Fri, 14 Jun 2019 08:25:19 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2 3/3] staging: rtl8723bs: hal: sdio_halinit: fix Comparison
 to NULL
Message-ID: <20190614025519.GA3459@hari-Inspiron-1545>
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

This patch fixes below issue reported by checkpatch

CHECK: Comparison to NULL could be written "psta"
CHECK: Comparison to NULL could be written "psta"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
-----
changes in v2: Send proper patch with out corruption
----
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 5c7cff0..6f10349 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1558,7 +1558,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 			DBG_871X_LEVEL(_drv_always_, "WOWLAN_DISABLE\n");
 
 			psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(pmlmepriv));
-			if (psta != NULL)
+			if (psta)
 				rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_DISCONNECT, psta->mac_id);
 			else
 				DBG_871X("psta is null\n");
@@ -1673,7 +1673,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				(pwrctl->wowlan_wake_reason != Rx_DeAuth)
 			) {
 				rtl8723b_set_FwJoinBssRpt_cmd(padapter, RT_MEDIA_CONNECT);
-				if (psta != NULL)
+				if (psta)
 					rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_CONNECT, psta->mac_id);
 			}
 #ifdef CONFIG_PNO_SUPPORT
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
