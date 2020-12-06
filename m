Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC242D004D
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1159886BF;
	Sun,  6 Dec 2020 03:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3s8QGnnqveb; Sun,  6 Dec 2020 03:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B5CE882EF;
	Sun,  6 Dec 2020 03:45:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D51141BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1C1D8748F
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2S3qHyA97_s for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6847686BEC
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:25 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id i18so10008211ioa.1
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fHFt93kHoZzyS04/7DhBnCnR0xzssBhe/lWUui/RyI4=;
 b=pc9dHnsjBcintZJkhS8Ng5ml4xo3Mm0Ry4lWIyKTgmsPbeKyzncoxGPbbHFY8h7rIU
 Edtv/6YL1RPN0mF87P189ZTZv9EQkmE/yHTZRcTVzfukswGz1eqjuRHO4rf+7pXp7e7B
 PEfYE1W5y96Rw+0QN/87oY4WOemcxjXU4bB7T9511hCwQLhDfAhSrGu4jWVnxlcQvuHT
 mt+4OZJaXidNAWlsyjMFv/PgA3eIpbnLfMfZRUWyn7G1IS8BpLXTmrG6LwrnaqZqE7PD
 erBYmoOXHPQqN4XsLOCtNe5l5JfK+3Dfu0pVZ41tJDk+tXVkbLPMZrKMNJhobhOpbCD/
 QLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fHFt93kHoZzyS04/7DhBnCnR0xzssBhe/lWUui/RyI4=;
 b=eK1oefUqSgT4+NQPV2LLO7kgUbOjNnni3cMUvnamWVDz5WO99zcHFF0zshVvWgo5RN
 SSzKWKHadlPoA9NA5jF9fJfurDTroZ/kKT8xYvNTM8aju8Y7Xp+dW7GwG94OiboAfH1z
 XKuzxn5IUIWy6FrPzPUzGVKOg6pRXP9LDYf8JtBKy9PZ0gTCftl83O+v+u++Y8FidklA
 UdkM9X2D3aBvaJhnfE89nm24k1QjwOM714bZv/ghBTjRL2pkozjHdpK1iUNPMv8Sj6eN
 kKODZqhbMltJeADG8sxpd38DGFtEQiJxCQGy0goZqd3qYv1riumz3Le3xs38fYCQwZyl
 A5dA==
X-Gm-Message-State: AOAM530NtkkGWUwQXGK3j4qbEDV7IQVvX3Ti3rgFPtFWzNyfac7pTD7V
 UAh6A6rWSUgraF+BNHVB9Fo=
X-Google-Smtp-Source: ABdhPJySAHQ3fYKTne3y0X/dVBOhrlOqAWgVPReWIUDQlGRonUX70XR4B6UcnUheizWStTZISdUQXQ==
X-Received: by 2002:a02:82cb:: with SMTP id u11mr13784724jag.0.1607226324787; 
 Sat, 05 Dec 2020 19:45:24 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:24 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/10] staging: rtl8723bs: replace WIFI_REASON_CODE
Date: Sat,  5 Dec 2020 21:45:09 -0600
Message-Id: <20201206034517.4276-2-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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

Replace unique macros and WIFI_REASON_CODE enum with the kernel provided
ieee80211_reasoncode.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  4 +--
 drivers/staging/rtl8723bs/include/wifi.h      | 36 -------------------
 2 files changed, 2 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ab4876507198..6dab68033941 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1210,7 +1210,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	pstat = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
 	if (!pstat) {
-		status = _RSON_CLS2_;
+		status = WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA;
 		goto asoc_class2_error;
 	}
 
@@ -1226,7 +1226,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	/*  check if this stat has been successfully authenticated/assocated */
 	if (!((pstat->state) & WIFI_FW_AUTH_SUCCESS)) {
 		if (!((pstat->state) & WIFI_FW_ASSOC_SUCCESS)) {
-			status = _RSON_CLS2_;
+			status = WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA;
 			goto asoc_class2_error;
 		} else {
 			pstat->state &= (~WIFI_FW_ASSOC_SUCCESS);
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 8e0ec95c1339..fe9c3a4ffe7f 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -88,42 +88,6 @@ enum WIFI_FRAME_SUBTYPE {
     WIFI_QOS_DATA_NULL	= (BIT(6) | WIFI_QOS_DATA_TYPE),
 };
 
-enum WIFI_REASON_CODE	{
-	_RSON_RESERVED_					= 0,
-	_RSON_UNSPECIFIED_				= 1,
-	_RSON_AUTH_NO_LONGER_VALID_		= 2,
-	_RSON_DEAUTH_STA_LEAVING_		= 3,
-	_RSON_INACTIVITY_				= 4,
-	_RSON_UNABLE_HANDLE_			= 5,
-	_RSON_CLS2_						= 6,
-	_RSON_CLS3_						= 7,
-	_RSON_DISAOC_STA_LEAVING_		= 8,
-	_RSON_ASOC_NOT_AUTH_			= 9,
-
-	/*  WPA reason */
-	_RSON_INVALID_IE_				= 13,
-	_RSON_MIC_FAILURE_				= 14,
-	_RSON_4WAY_HNDSHK_TIMEOUT_		= 15,
-	_RSON_GROUP_KEY_UPDATE_TIMEOUT_	= 16,
-	_RSON_DIFF_IE_					= 17,
-	_RSON_MLTCST_CIPHER_NOT_VALID_	= 18,
-	_RSON_UNICST_CIPHER_NOT_VALID_	= 19,
-	_RSON_AKMP_NOT_VALID_			= 20,
-	_RSON_UNSUPPORT_RSNE_VER_		= 21,
-	_RSON_INVALID_RSNE_CAP_			= 22,
-	_RSON_IEEE_802DOT1X_AUTH_FAIL_	= 23,
-
-	/* belowing are Realtek definition */
-	_RSON_PMK_NOT_AVAILABLE_		= 24,
-	_RSON_TDLS_TEAR_TOOFAR_			= 25,
-	_RSON_TDLS_TEAR_UN_RSN_			= 26,
-};
-
-/* Reason codes (IEEE 802.11-2007, 7.3.1.7, Table 7-22) */
-/* IEEE 802.11h */
-#define WLAN_REASON_PWR_CAPABILITY_NOT_VALID 10
-#define WLAN_REASON_SUPPORTED_CHANNEL_NOT_VALID 11
-
 enum WIFI_REG_DOMAIN {
 	DOMAIN_FCC		= 1,
 	DOMAIN_IC		= 2,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
