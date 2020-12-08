Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 883532D21C1
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7F672E50A;
	Tue,  8 Dec 2020 04:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlmlpeYGJSYW; Tue,  8 Dec 2020 04:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E130B2E50B;
	Tue,  8 Dec 2020 04:08:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4A771BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C156D8769E
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uUkwRi0jlOxN for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D372887B8B
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:08:00 +0000 (UTC)
Received: by mail-io1-f46.google.com with SMTP id r9so15635634ioo.7
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dsWJ3wrdvClaf8NoUeAOfEEb2bR+T2eO/cQV3hJDJhA=;
 b=O3SsdqoptsHL+5djAONfMBEO4xq7WCTiejUCI/p/Nmi6OEizNdKX5jH2UatTU6nxSz
 kYXX/BH9jGXLcj341NUUje8zDnWt0U9ZsNIn1igZFVytaV13cgxVAzyC1vSz0x+Vgkwd
 MlliFr/LKBxzOD12uqhAYZRB1FziXfvMILEqLJVM5VuhrEaqd2TA8/OgkqIc1xPMTlD0
 MLvVDR00+LQliL77qZ3x+akhodwsl1eKA2W22McXhDDOilivK87oYVydz8nbKUirwbid
 efrP8A+EaFjK5fP1oW8m/FaglBCXI+kpI7+h1cHG4kzJRHoQW9uOO5zZHe7M8EuDVqI8
 1Org==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dsWJ3wrdvClaf8NoUeAOfEEb2bR+T2eO/cQV3hJDJhA=;
 b=A99FO+hbm1Lxtxy6vp1R0ZjjTqqRKaMQ8UmhULnkWnsw+zzRJ3gqzRuFDebdOAwz2D
 kj71QCS3xz988rxUaBkEf4jmVvzJ8IGoNTQrF5C9qRFoS4YXAN4zBtnLZ1/mj2pZ4lfG
 1DXqRHBS1gNtqG/1iiEz13jWu33kSoB4vsZJitJwvQZWxCpLsOzB08xjheB5iOohYiUQ
 PTLr4FktzgwLMh56RA4nL0reuu5A2pVl1XR0Uhbnrka49Eij04obyv8kHaGSz+GIxllS
 F4ylAObkiHqhr/PB+qKgDBVx9xKW4yKEelkcmVdQJSAjSuaAlKj6V8JlPf2Pbc+6DKaD
 tV2w==
X-Gm-Message-State: AOAM533CI0qiqTIji+dDTzdx5UMSCIO5NVOVYA3XIN/mVZtdrMdVfQyN
 JBZafdP8G1O6awvCdBAtM/g=
X-Google-Smtp-Source: ABdhPJxK9xuXLbplaY1A0R0SwyrpRl4q1MJSZx1rOm8fC1aw+oP6FpIfRiS27FtfmeE65QMnwhgQpw==
X-Received: by 2002:a02:b607:: with SMTP id h7mr25285486jam.120.1607400480332; 
 Mon, 07 Dec 2020 20:08:00 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:59 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 20/21] staging: rtl8723bs: remove unused macros
Date: Mon,  7 Dec 2020 22:07:32 -0600
Message-Id: <20201208040733.379197-21-ross.schm.dev@gmail.com>
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

Remove many macros from wifi.h and ieee80211.h because they are unused.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/include/ieee80211.h |  5 -----
 drivers/staging/rtl8723bs/include/wifi.h      | 15 ---------------
 2 files changed, 20 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 20c53c290aa1..d9ff8c8e7f36 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -348,11 +348,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_REASON_JOIN_WRONG_CHANNEL       65534
 #define WLAN_REASON_EXPIRATION_CHK 65535
 
-/* EIDs defined by IEEE 802.11h - END */
-#define WLAN_EID_20_40_BSS_COEXISTENCE 72
-#define WLAN_EID_20_40_BSS_INTOLERANT 73
-#define WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS 74
-
 #define IEEE80211_MGMT_HDR_LEN 24
 #define IEEE80211_DATA_HDR3_LEN 24
 #define IEEE80211_DATA_HDR4_LEN 30
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 82dfdafb38fc..7f482a45705b 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,21 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-#define _SUPPORTED_CH_IE_		36
-#define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-
-#define _FTIE_						55
-#define _TIMEOUT_ITVL_IE_			56
-#define _SRC_IE_				59
-
-#define _RIC_Descriptor_IE_			75
-#define _LINK_ID_IE_					101
-#define _CH_SWITCH_TIMING_		104
-#define _PTI_BUFFER_STATUS_		106
-#define _EXT_CAP_IE_				127
-
-#define	_RESERVED47_				47
-
 enum ELEMENT_ID {
 	EID_SsId					= 0, /* service set identifier (0:32) */
 	EID_SupRates				= 1, /* supported rates (1:8) */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
