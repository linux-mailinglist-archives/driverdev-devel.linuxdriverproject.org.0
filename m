Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCD3144AB
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 01:12:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E96F6871AD;
	Tue,  9 Feb 2021 00:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JGeAD8+YQG-F; Tue,  9 Feb 2021 00:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70D7086F6E;
	Tue,  9 Feb 2021 00:12:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E641D1BF983
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 00:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1960867C0
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 00:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHHTTE7-7i+j for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 00:12:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33E8F866B1
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 00:11:58 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id z6so19339489wrq.10
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 16:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RNW9Ks+8Ua7hv7uVipZV2262XdqhcTBizCH/T1G1OgM=;
 b=ew3ObgYGsAgy2WlW1nZF1b84IQzCCvSkXE3pxwMfh7cMkJvzoTDMG9h+j3bejFPXfP
 gntAoSNN3+jlaTiNM+BlcD489HFYpb/C8fHpqU7rjecGQsr7v5kU1IHdGuK78fXugFWt
 J/uBV8XZdVp7NqkPXWy0JmG3M6xmtGiD+j1FQpmiS6HdrRybyLU0yhwjUvT+GI8UhHuK
 HCDnLm6w6GqusKXvizy3B1BXegPVFh2acBBtzSuG7jEgaEJkBwLB5LF7wGN8yU+VMwJ0
 b1EGfJQARqVBZkCi9KQlpds/InTivMsWD7pjYjXcsf9PXWeo/danYlCyUoD3GNlVfQlu
 ZKig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RNW9Ks+8Ua7hv7uVipZV2262XdqhcTBizCH/T1G1OgM=;
 b=uiI+bSpn3MU+a8iIaBBYXeQRAbqdQvcsTwb76bRaUNyxfXKeD6CMVds3tlWZyPB6U9
 qpqCG6W7Z/GTbNEI73ZKXJl4pbcBbnQC/Z4R22IrEICCfZwFDquyl4HG4dpyy39Qn8vW
 BytLVspnz7Bn5edziOAbM+8Dk4/Sotk0WKVD0p9UiUcx8r5jJPmeuTy7gD2QGlO6jn4i
 aAXq3wdGSDN0Sxftwr1XZm4J+L+ViJtlIkbP30RA1V4oWi3Hmpf1JWJGogapm0tsK6Ha
 1qIdLVA/PrXOSFT9AV8AmD0fWDpY+aBgTQty78IF56fbM0B9BmRhhd3egTFXGAR2OAuX
 d0jQ==
X-Gm-Message-State: AOAM5331A9hO50XIgo1g/qVTRa6BgTaBEwSW3VhcV3qEU5ZDOtW6iYuH
 Zzwd7aIgLiLUVPy2nHKqGoUPcg==
X-Google-Smtp-Source: ABdhPJxe3gEKcJS8/btTXIimaLI1D3TrigItjihX2tvAPs1upNlCdd52JUQ14jY21e/iPKjqcbcZ0Q==
X-Received: by 2002:adf:ee09:: with SMTP id y9mr22494142wrn.74.1612829516674; 
 Mon, 08 Feb 2021 16:11:56 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id h9sm7983357wrc.94.2021.02.08.16.11.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 16:11:56 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: fix braces for os_dep/mlme_linux.c
Date: Tue,  9 Feb 2021 00:11:53 +0000
Message-Id: <20210209001153.165135-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, luk@wybcz.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add braces to both branches of an if block for consistency, and also
remove braces from a single line for loop. Fixes a checkpatch check
and warning, thus clearing this file of any brace check/warning
notices.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index fb2df871c0cb..d46c65ab384b 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -48,8 +48,9 @@ void rtw_os_indicate_connect(struct adapter *adapter)
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
 		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
 		rtw_cfg80211_ibss_indicate_connect(adapter);
-	} else
+	} else {
 		rtw_cfg80211_indicate_connect(adapter);
+	}
 
 	rtw_indicate_wx_assoc_event(adapter);
 	netif_carrier_on(adapter->pnetdev);
@@ -163,9 +164,8 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 		len = sec_ie[1] + 2;
 		len = (len < IW_CUSTOM_MAX) ? len : IW_CUSTOM_MAX;
 
-		for (i = 0; i < len; i++) {
+		for (i = 0; i < len; i++)
 			p += sprintf(p, "%02x", sec_ie[i]);
-		}
 
 		p += sprintf(p, ")");
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
