Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76072D21B9
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 808AF87CF3;
	Tue,  8 Dec 2020 04:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9BDby4cVCpx; Tue,  8 Dec 2020 04:08:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 040BC86BA1;
	Tue,  8 Dec 2020 04:08:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B464A1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B00C72E516
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tz+dCbjK-RZj for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D5B4F2E502
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:49 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id r9so15635293ioo.7
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JST98VZPaX2qnxCjv/Wu6UJKvxVQ8ZfkpQ0u1A/qWnQ=;
 b=PSBY/Cj73fWmbvypFpatUNUYlRwtvtP+dlMvWeZLEs+BSfu23hScw9KqmGbITUhGPs
 e4u/naCzZzSg0rIiEJgbjkK1Qvi2PefI94n8NLWEfVuFxbiCOop1af/qI/oC9qUBzv7h
 478xW7GTCuF+h2jMhWKTGEBUnot90PiQYfFva2dWT4WzLnjTAMe9KHOmWmDqlKdIN9je
 5q11XmXtweJvQ3zYfiD9omzY4pHeWb2IzFxBrlGFHDL4H1lRYIXysfYM7aKKL3N5J289
 dOu6lzqTGqP31Wh7x3pGDIPacPAMDgCjr6+kn90TQEjTxnXNCWAtwtlAXXz8WPnegJdd
 7zyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JST98VZPaX2qnxCjv/Wu6UJKvxVQ8ZfkpQ0u1A/qWnQ=;
 b=dUxvocO89uSfC3OWKQmBAC1hh0Nc2Q2x1l9TF8FlXgR9eNVMHnpYWA0sazDj0uqwKI
 oCapzgQd4HR0a3R7UzMMr4+KuI5PvcYW3Radhx7pg9uc3Tsiq0FMuVYnoN0JynXRlv7d
 peWJy5lryosWCEAmmLbdNJbyQQuoZhHEEjZI9bL9N1PcrxU4zzFgPiL2wrXYtFaQEcnB
 /Yh2B82LevLEsCaN+Tyrn0LA1HxbpP3FmS6hmh2O6nJrciTVuhuvn7PKS60ZqXh1wcFf
 8VXj8R+O2jQied2eLGNWZx0C39q3CihE5hD5LD2c5MAWdOSg6WD81+9yCP7n0UyScCVa
 Hr3g==
X-Gm-Message-State: AOAM5325qAcgStbkVl69JDkYJMNqHwzE9bgEspJ7S7SvehLs49bW8Kol
 iHbLcADroe+RX6VVCAnPgVA=
X-Google-Smtp-Source: ABdhPJxXGPFenswYiMPKdpPyxS/1QjD/CEYgAxlvcpk9uYWEqy2eTP8d3NoJRHfEEJFE1PDvcD9Ldw==
X-Received: by 2002:a6b:441a:: with SMTP id r26mr22951251ioa.105.1607400469242; 
 Mon, 07 Dec 2020 20:07:49 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:48 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 10/21] staging: rtl8723bs: replace _IBSS_PARA_IE_
Date: Mon,  7 Dec 2020 22:07:22 -0600
Message-Id: <20201208040733.379197-11-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique _IBSS_PARA_IE_ macro with kernel provided
WLAN_EID_IBSS_PARAMS from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  | 4 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   | 2 +-
 drivers/staging/rtl8723bs/include/wifi.h       | 1 -
 4 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 58e29314c8f8..b899f511ff9f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -354,7 +354,7 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 
 	/* IBSS Parameter Set */
 
-	ie = rtw_set_ie(ie, _IBSS_PARA_IE_, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_IBSS_PARAMS, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);
 
 	if (rateLen > 8) {
 		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 1f6c1e441744..546e4a31142b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2552,7 +2552,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 		/*  IBSS Parameter Set... */
 		/* ATIMWindow = cur->Configuration.ATIMWindow; */
 		ATIMWindow = 0;
-		pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 		/* ERP IE */
 		pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
@@ -2755,7 +2755,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 			/*  IBSS Parameter Set... */
 			/* ATIMWindow = cur->Configuration.ATIMWindow; */
 			ATIMWindow = 0;
-			pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 			/* ERP IE */
 			pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index ac6677212086..f6073ecef2e2 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -189,7 +189,7 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 		/*  IBSS Parameter Set... */
 		/* ATIMWindow = cur->Configuration.ATIMWindow; */
 		ATIMWindow = 0;
-		pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pktlen);
 	}
 
 
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index dc11ba28d469..3adeb3c23a3c 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,7 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-#define _IBSS_PARA_IE_			6
 #define _COUNTRY_IE_			7
 #define _CHLGETXT_IE_			16
 #define _SUPPORTED_CH_IE_		36
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
