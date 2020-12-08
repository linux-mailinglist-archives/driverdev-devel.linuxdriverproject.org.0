Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1FD2D21BA
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDA1887B3E;
	Tue,  8 Dec 2020 04:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pxTVTs6THmvQ; Tue,  8 Dec 2020 04:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0C2B87B4D;
	Tue,  8 Dec 2020 04:08:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A9CF1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 13D032E501
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFfZ+CuC7814 for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CB552E505
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:55 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id g1so14363719ilk.7
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6KIyuVe6VyFOKOY1iJM9w6ygBrAwLaf1UtxyGLFKOTM=;
 b=p6cf+WlMC6WHpNSzEgHaKr2ztTGDZfHrofUktx43No4G0+K/bCKboxplQN5W4kIVfS
 6NhoH/bWfEJoCC4EnIS4OtKwr+tbHxfuXZq357iyj+g0yDzpL5QVJVHGu3+z7CyiBV+S
 ToB5OnRCtWvBVWoW1nCtMohmJPymz3Ro6b9fUIgC1ya2fiRDvd9V2iO89mFwdZIRak0y
 H6VhJKj3SQu/RI5Ctyz6nMldzbpWD/OW5R7u4OraTSCHF0bCTx98RExiNUCg97IDA7I9
 xUCGQB5m2uLv9E5l2l+ln+Rx+hw5OemBSgw9Ho8VZPPTyi50qCE/DNrcweLpOg0XKwQe
 SkyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6KIyuVe6VyFOKOY1iJM9w6ygBrAwLaf1UtxyGLFKOTM=;
 b=RD9FgSPs1ztsb7trZhElsSnxBKhuXw+ZEIgyvryTnKc8Cg3TYaS5fil6NLcJvHD4ou
 /oh2dmKT/b3h+f2wJElsvk75vc9IhXKS2HI0XeKu5doKgivDx5+coZEFuZ/UbeDRiEtL
 AYzjIScPELV59I68isNwm3slti+Rgumkq4DO8QL112cpDk+7ZRt+K/JWHnbsobJJIlL0
 vySWdWbMXCddILo9W5eVfT9ZQnsZs79g1boAUxPALWYg76yokQHDbyVXDoYTjzoPJp7o
 LqbrZDVsQOIBAPYrmCFbGCimzu+bLdeFFqy86LqxkJcV3ApKlu128qPkx2v6OB9FHW/3
 7u2g==
X-Gm-Message-State: AOAM5310Bti4YKmLvtKWatPuKKWy4/jPppiP0Vr+lo01J49ClZieRrf+
 1Wd4DxFxeqLCnV3MKf1Lcv4=
X-Google-Smtp-Source: ABdhPJzWJED/BRXZXEPedtlQiE/6DcdXLlWjW5VqOBB5lWkpt5/PWV21pYeao3W/EuIC2zaiwwH3/Q==
X-Received: by 2002:a05:6e02:19cd:: with SMTP id
 r13mr10385284ill.199.1607400474872; 
 Mon, 07 Dec 2020 20:07:54 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:54 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 15/21] staging: rtl8723bs: replace _WAPI_IE_
Date: Mon,  7 Dec 2020 22:07:27 -0600
Message-Id: <20201208040733.379197-16-ross.schm.dev@gmail.com>
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

Replace unique _WAPI_IE_ macro with kernel provided
WLAN_EID_BSS_AC_ACCESS_DELAY from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 ++--
 drivers/staging/rtl8723bs/include/wifi.h       | 1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 28d5892d8bda..be4cffce4f5d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -623,8 +623,8 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-		/* if (authmode == _WAPI_IE_) */
-		if (authmode == _WAPI_IE_ && (!memcmp(&in_ie[cnt+6], wapi_oui1, 4) ||
+		/* if (authmode == WLAN_EID_BSS_AC_ACCESS_DELAY) */
+		if (authmode == WLAN_EID_BSS_AC_ACCESS_DELAY && (!memcmp(&in_ie[cnt+6], wapi_oui1, 4) ||
 					!memcmp(&in_ie[cnt+6], wapi_oui2, 4))) {
 			if (wapi_ie) {
 				memcpy(wapi_ie, &in_ie[cnt], in_ie[cnt+1]+2);
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index e221d4574f32..29621fce6a83 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -393,7 +393,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _FTIE_						55
 #define _TIMEOUT_ITVL_IE_			56
 #define _SRC_IE_				59
-#define _WAPI_IE_					68
 
 #define _RIC_Descriptor_IE_			75
 #define _MME_IE_					76 /* 802.11w Management MIC element */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
