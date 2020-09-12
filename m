Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 428982678F1
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 10:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 48636204B5;
	Sat, 12 Sep 2020 08:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYLHVCxWrhM2; Sat, 12 Sep 2020 08:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2276120475;
	Sat, 12 Sep 2020 08:49:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3998F1BF393
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3633787807
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOgABhFM4Yw8 for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 08:49:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A573875FD
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 08:49:28 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id g4so12701445edk.0
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 01:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XSthICaxogmtYPZILEJBq63RkXJbSw500dA6isem7pI=;
 b=Jkuy6aY7YCzAdzLWshANNuiqPg1ToOPWlzBSlvOjyUwbwbW1qz4naHcfIKkQUguJxJ
 chKkIbCtGTq4/+9XOTKtbfIeWnSInsxdZMlm+XGJepKMmb81IEqcUt2LLuOQrwcvMQxt
 LZGRbsBrgjdRODQcAWuofhZ2iDfuxWxXbgl1Sh7fUxmOv+oSkJNxzYMO1UzUhXRYUBGN
 p3ekd6oCiNwrwPI5eHqRDShPi0z127iSe10jO/AEvpmf+a7UgGeOhyD13cad3wGdBVS7
 kjmu0jMHRyscYQfnuP1ABiaJ+lheV3yFl1i3lNuxQkMaoysdGNnh+vAZtnbNGuPKAzu9
 e0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XSthICaxogmtYPZILEJBq63RkXJbSw500dA6isem7pI=;
 b=Ih3znI31/3Y1BV1UlZLWO1hqn1USEvi9lXy6rR4ns7kUGaVYm4HdwoSZGHdv90m0iA
 L9hXEcbXdqVITccUoRMzGmQJeoZDlRBF4GTQm/ha8n6JKuFI1ToMEaSa7tpM8xIe+KfX
 19f86lzJHPdnykGV5ERb/87NDrDhAmUI+df8MxJiq9ugabTI1SHY+RI4ID61RsrGdZaL
 lRrdl4QAg9Lg2nGv3XtP3I0jH3UPY0a+E0N9zMR8DNmSkMm1oW3a6/n69eVKtRVTdgFI
 OcVR+oCqEruyW6NqSlKZki1BaKMbbui7Y3AeXNma1zBderT9/xoAzVlXiLdCEYRvCooS
 X7cw==
X-Gm-Message-State: AOAM533Kw5TE4SRTD4nKRxtPaXylIrxCcWZCkFRe1+C2DLzteujz3epO
 Y6k4f5N39mJbdtui68vxtrY=
X-Google-Smtp-Source: ABdhPJz3ddQfeeIQumdSV7kdW/fmchul1r1nb8YkIgNFKa2fxAVMn4ZZht4d/MTbF/JVUuQlW+lgUw==
X-Received: by 2002:a50:bb65:: with SMTP id y92mr7074411ede.53.1599900566531; 
 Sat, 12 Sep 2020 01:49:26 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id s23sm4009598edt.10.2020.09.12.01.49.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Sep 2020 01:49:26 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: rtl8723bs: make cckrates{only}_included static
Date: Sat, 12 Sep 2020 10:45:17 +0200
Message-Id: <20200912084520.8383-2-straube.linux@gmail.com>
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

Functions cckrates_included() and cckratesonly_included() are used only
in the file core/rtw_wlan_util.c. Make them static and remove extern
declarations from include/rtw_mlme_ext.c.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c   | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 4e0d86b2e2e0..22e4305d70a2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -54,7 +54,7 @@ static u8 rtw_basic_rate_ofdm[3] = {
 	IEEE80211_OFDM_RATE_24MB | IEEE80211_BASIC_RATE_MASK
 };
 
-int cckrates_included(unsigned char *rate, int ratelen)
+static int cckrates_included(unsigned char *rate, int ratelen)
 {
 	int i;
 
@@ -68,7 +68,7 @@ int cckrates_included(unsigned char *rate, int ratelen)
 	return false;
 }
 
-int cckratesonly_included(unsigned char *rate, int ratelen)
+static int cckratesonly_included(unsigned char *rate, int ratelen)
 {
 	int i;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 14583799039f..1567831caf91 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -716,8 +716,6 @@ void sa_query_timer_hdl(struct timer_list *t);
 		DBG_871X("%s set_sa_query_timer(%p, %d)\n", __func__, (mlmeext), (ms)); \
 		_set_timer(&(mlmeext)->sa_query_timer, (ms)); \
 	} while (0)
-extern int cckrates_included(unsigned char *rate, int ratelen);
-extern int cckratesonly_included(unsigned char *rate, int ratelen);
 
 extern void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr);
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
