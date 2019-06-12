Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B6E432D3
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6406187E99;
	Thu, 13 Jun 2019 05:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RP7LesyCPegG; Thu, 13 Jun 2019 05:42:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E21A387E5D;
	Thu, 13 Jun 2019 05:42:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F23A21BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFF3987E99
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8tqTl5Q0Dw5U for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D570187E5D
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:15 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q10so11065298pff.9
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RVn8TbcdTMdKwVP8cWPL+u9DSXOIccv/F3tbKKuIXO0=;
 b=u7GM2K/gQU5LqD/IHiDQKgPZHHm2JFpoUcamdqVcYGgL/SldV33va6jerJSScL1XJ2
 Lzb1iL1mkA7P3OquxmbmLdakt8JOAElDzCBwu7ikWM09iPXVsqY7nM0/vo/9kQ2oH8o+
 fbKZPOwnGlD8v50a1+cUleItv4+xmP943eWim5O3IdLl5AAisjjmIY3ath4lfQKwzVP/
 LafIdUxKOg5PfzTlcw5hzyxNURF+lzSBwsoNtsKlnUnwy+EvT7WLOJb0OB1SoPj/OL8l
 BrZRRF6loUJSV6UqLEgHlofZ7csXain6IWnrXc47VDw8p5e2127CHR+Hn/IxJDn7ImeA
 UpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RVn8TbcdTMdKwVP8cWPL+u9DSXOIccv/F3tbKKuIXO0=;
 b=V2ddP4BPPwM18CYgi4hWyO+04zrPRvvBhDxJ4qD1Xz6bF5syr0OTMN3lKAnLF4oBBp
 SXdLx28Fg2MubQNSSmSJGAB/GecnqlgiwAfNWprtJPX2mnDU/tkCLfsKMZEyTBVzwWC6
 6GbHNWcdCPYoNQRx4wWkBobq/ch7HYsLYwAkx2wRpstyxxV0laycwpktmqpaKUwVRtVq
 xo2Vtg58Qb+ySTj/yjkk6aBDOTXnEf7Ipy+ebtNiAWIkkdkoG6LijgMJUudd9jOQU3a0
 kZ+HknpuSCjKfmk8oiKjnZ58KO/3clfaHuFl+hytT+Etwjd4LStwCDrB2tgaStSZYT56
 Ze4g==
X-Gm-Message-State: APjAAAWN7g6XT/H5LvPkBhO0Z1WDH9PA2hFo53BoTbQcFDEwSGIb0k0u
 ZOxwSouBIvSfHysNe0dISryb5fyT
X-Google-Smtp-Source: APXvYqyeEnx/xsUzlmjc084SyKKKpENDgD1fnjPteaUt6G80X4/nzL+lZ43E7QXW+ac4NSc9JVVH7Q==
X-Received: by 2002:a63:6142:: with SMTP id v63mr29204168pgb.309.1560404535540; 
 Wed, 12 Jun 2019 22:42:15 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:15 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 05/11] staging: rtl8723bs: core: Remove function
 enable_rate_adaptive()
Date: Wed, 12 Jun 2019 23:34:33 +0530
Message-Id: <20190612180439.7101-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function enable_rate_adaptive as all it does is call
Update_RA_Entry.
Modify the single callsite of enable_rate_adaptive to call
Update_RA_Entry directly instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index d7103f73e281..93f4ea0ac433 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1615,16 +1615,10 @@ void Update_RA_Entry(struct adapter *padapter, struct sta_info *psta)
 	rtw_hal_update_ra_mask(psta, 0);
 }
 
-void enable_rate_adaptive(struct adapter *padapter, struct sta_info *psta);
-void enable_rate_adaptive(struct adapter *padapter, struct sta_info *psta)
-{
-	Update_RA_Entry(padapter, psta);
-}
-
 void set_sta_rate(struct adapter *padapter, struct sta_info *psta)
 {
 	/* rate adaptive */
-	enable_rate_adaptive(padapter, psta);
+	Update_RA_Entry(padapter, psta);
 }
 
 unsigned char check_assoc_AP(u8 *pframe, uint len)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
