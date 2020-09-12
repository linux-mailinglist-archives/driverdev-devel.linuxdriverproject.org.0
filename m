Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 024452678F5
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 10:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82865204C5;
	Sat, 12 Sep 2020 08:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pu3XV+ynB4GI; Sat, 12 Sep 2020 08:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2DF432048D;
	Sat, 12 Sep 2020 08:49:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1ED1BF393
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C20787841
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C3qQRCO9vNkT for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 08:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42BA0877FC
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 08:49:29 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id n13so12615340edo.10
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 01:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1dw1Ylfivm/LIakXCeDCNCtbBlPy2BWgjC2cncXDgSg=;
 b=d3HDGUqFafr8t93XAAI+a3kLTsBxW6oIx1OhNIJCkF0UxTwVgwDsXrm6AkPQqdR8X0
 rHVn2HdhYXGifeBm14S0S6dswREBL46Yl61//96LzZWKKtmER0ZkTZAGPSUS+jJCv59N
 CEoCHSyPZlYSAzp0pRTrYUocL3RqUWbBIniLENhPwIhKx50jw4lE6UAlgc/5D6FYz/Rg
 dCv88Dc6Bn+tkWxKua90lV6QLTCBmx1lJhGKv+lChFApJyIbiSOg9zcgJgiUAwFkMf9W
 srPgiDOKaouFblAKVrTI9hCONvCwA8nfCKDDE5YMO2uguWbNOgMDSGlVTFz8NKC8Z40R
 cbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1dw1Ylfivm/LIakXCeDCNCtbBlPy2BWgjC2cncXDgSg=;
 b=ol9Q2ZrZYwSKOLIwzGAZxlOxJQFqlBP4fRXZdBZQPCATO2b1WfLnWs58JzPguV7Vty
 GS3Dblz9MSINEDgy6PtVxpzzZ5jhikS2pJiwv+fbpVmIiAkpo8iTdCSCI/KRx5n1YVch
 HXE34ySOzKyJmdtJCopgkNzXHXts6qXqcrFMQKLL7Xa1yDnym8mSTCPSsvEQ7Lj+edkT
 Bnm7Jyq78XX1oA79GI3IGhJYrvgfQefBbPnoCK4FksxnTD3QnuHkzjN4fmhjDuvWpkyY
 2Gxts+tx8HAXa+s2brpSIiMybVdlya5S2EUeaxTtGyRPOuMSQd/VPET4s3nYRadTWuEK
 khXA==
X-Gm-Message-State: AOAM532EucKJgd+dk8L8fKMKByJMXJjmTzwLS9Sj9L3vbGa/q2dKPmxw
 6yTbhQ7vSmSOdTsu20tyMDQ=
X-Google-Smtp-Source: ABdhPJw3xgnvxAXdFIW3LzAlTSB2CRn6WLSdF04mUQb2Sgubl0bhtJrael0ti7sdzPTGm9JXmErQ9g==
X-Received: by 2002:a50:fd87:: with SMTP id o7mr6981205edt.180.1599900567615; 
 Sat, 12 Sep 2020 01:49:27 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id s23sm4009598edt.10.2020.09.12.01.49.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Sep 2020 01:49:27 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: rtl8723bs: convert cckrates{only}_included to
 bool
Date: Sat, 12 Sep 2020 10:45:18 +0200
Message-Id: <20200912084520.8383-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200912084520.8383-1-straube.linux@gmail.com>
References: <20200912084520.8383-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Functions cckrates_included() and cckratesonly_included() return
boolean values. Convert the return type from int to bool.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 22e4305d70a2..7733d076af85 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -54,7 +54,7 @@ static u8 rtw_basic_rate_ofdm[3] = {
 	IEEE80211_OFDM_RATE_24MB | IEEE80211_BASIC_RATE_MASK
 };
 
-static int cckrates_included(unsigned char *rate, int ratelen)
+static bool cckrates_included(unsigned char *rate, int ratelen)
 {
 	int i;
 
@@ -68,7 +68,7 @@ static int cckrates_included(unsigned char *rate, int ratelen)
 	return false;
 }
 
-static int cckratesonly_included(unsigned char *rate, int ratelen)
+static bool cckratesonly_included(unsigned char *rate, int ratelen)
 {
 	int i;
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
