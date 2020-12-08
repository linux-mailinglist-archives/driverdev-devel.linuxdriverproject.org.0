Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2052D21B4
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71CCF876D5;
	Tue,  8 Dec 2020 04:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lPwlc6UnYnAP; Tue,  8 Dec 2020 04:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FC0387A60;
	Tue,  8 Dec 2020 04:07:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 468931BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 43C8B87A0A
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id evj06YRZAQhp for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14815879F7
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:51 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id b8so14332564ila.13
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B1AJFYjdsVXmhfoTYzC+8zbX17r0CL2qIE6XsavrcP8=;
 b=iE52eEJ57XPMICXUHrlBOAr0VIRcLo6RwUiTVYKrvgLt/eiPIx9dCX5fJFgll7K7a5
 aDM0HFUSFZbA5vP48wezuVPZvX7gcg/ToN/63/buFCL9hxNKujWRAXHtNiusJ6EQFbaa
 JzhXIJJRkRGTg1uSMzqSJKAK5JGUWPptkEtq/d1K3mwCp4A2SzmPhNGtFxCeMsHOLKzV
 YMcZ+3NlUPHeb1vjCpLgjczUUDDOoCiRePMGlsqqZBjNw30PViZNabfHIznYaSmFc9l8
 mtp70VRhYxfaECW0lFfc++fc8dYHVv13cZu506q3bOr9HkuyYkDrwhJeFVnUAOD5czgc
 E/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B1AJFYjdsVXmhfoTYzC+8zbX17r0CL2qIE6XsavrcP8=;
 b=NBLoau8cI1ZoXjLgdGFvk14Xo8pBuLr6+1vJLRgokeL5pEHRZHNbMS+6QCeApzDI1t
 t4zWeVJBxh92jviCEmtLx4MCENy+WMaRT/5MgjYDQ3hy+mPuT/LZV2QR9/6EGuIO+zX1
 FeQEHmSRrQwnpAz+o5tGqvCXhakagPO4VNgmQAXJdHszUmrYz9Ks4DpQkBeJLSsrLBRa
 n1ntVAbtjaP11LNFZ2grSr0W7diysZozD9ry/F8uhIs9m4yoRbHD1129HBiYNzRKFth1
 6EJRWzHmK0MlITWwov3/kCASTpAsLVnAYNJVq70PjmYxj5NZS0BE9/I5G42BkVb1zBIA
 8NMQ==
X-Gm-Message-State: AOAM5305yIRsI+++iLSOSVYBJixXFEFi69zHSzOXBBpATCjCD18SywG0
 upvJNu+QGhP1W94xbekrHsk=
X-Google-Smtp-Source: ABdhPJy+03nV7mpJPbBx4SaEIUyRyLg0+vRVU3GrF1b+YHM7GqvcWN56iW0x7fr8m6yxlb5zVr5v5Q==
X-Received: by 2002:a92:6410:: with SMTP id y16mr24431243ilb.126.1607400470407; 
 Mon, 07 Dec 2020 20:07:50 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:49 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 11/21] staging: rtl8723bs: replace _COUNTRY_IE_
Date: Mon,  7 Dec 2020 22:07:23 -0600
Message-Id: <20201208040733.379197-12-ross.schm.dev@gmail.com>
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

Replace unique _COUNTRY_IE_ macro with kernel provided WLAN_EID_COUNTRY
from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtl8723bs/include/wifi.h      | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 546e4a31142b..319a99833a49 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4788,7 +4788,7 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 		u8 noc; /*  number of channel */
 		u8 j, k;
 
-		ie = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _COUNTRY_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+		ie = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_COUNTRY, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 		if (!ie)
 			return;
 		if (len < 6)
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 3adeb3c23a3c..6df50468200e 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,7 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-#define _COUNTRY_IE_			7
 #define _CHLGETXT_IE_			16
 #define _SUPPORTED_CH_IE_		36
 #define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
