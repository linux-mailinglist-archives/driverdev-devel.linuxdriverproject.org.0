Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF1325EDF5
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Sep 2020 15:28:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E43E870BF;
	Sun,  6 Sep 2020 13:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXLK4pDESZ3I; Sun,  6 Sep 2020 13:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83B208702B;
	Sun,  6 Sep 2020 13:28:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37D851BF331
 for <devel@linuxdriverproject.org>; Sun,  6 Sep 2020 13:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2ED1920335
 for <devel@linuxdriverproject.org>; Sun,  6 Sep 2020 13:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yC+h2qwku0b7 for <devel@linuxdriverproject.org>;
 Sun,  6 Sep 2020 13:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D51920117
 for <devel@driverdev.osuosl.org>; Sun,  6 Sep 2020 13:27:56 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id k25so441221ljk.0
 for <devel@driverdev.osuosl.org>; Sun, 06 Sep 2020 06:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o9X2quCT3ijRZbfEg1lBDRxkIX0ndQZpXitZWRbnil4=;
 b=a3xN9/vEhqSkTymr7qjQlPOQeFnCLASezuSHqkwv8HH1ND3Z3EpFQxbFbASRaNolJq
 kQBpsEKe32xsLDG1rPZzIYqgsh7pbpnjtCsa+8Yx/GvBfsUzX09rvaIsADacDbxH0u3J
 zMugpdzVAseTcZm+YKs1D86xsA2ynVvJjTFTRnMZPK9l+e01H+hWcH1o47qDsQamz4oM
 liGr32QxprkkXSbH15BezBZAbmtlizKcN3fiv7+IpAKipENAqri75fZYj+3u+MalZPgo
 PlmVBS34n0xmcr8vzQXFl6RByJVL0OicuyG0jfN1T2fwcV7wwMlDw+bNuhZz63PLdE7a
 UWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o9X2quCT3ijRZbfEg1lBDRxkIX0ndQZpXitZWRbnil4=;
 b=Elpt1TYmmen5wG/tASilMmcgiayYu0JQybyeL5GKes+5+62xHhFlwO+tbH93l6GpDY
 fd0ZnBt8U3oFsbObBMsgUrRgEAB+cSfRgXthzeI/9jn/VvHs9P00/XPuXDK83nybj82+
 pmZ6SGdXJgiuuWDqoDCtcSkF8nJ2pHXwI9h4oV6lG+pc3wzaBx4xpTm2xY/EgUdL8k3h
 oz5vBzNvIsSeAffmUC5dFneri2rFIewLAZ0sWz1zvWeSlE+jnwK3oY8W9crR/+xa7YlA
 aj/qdZb+28pAxdd+gMoWy7cf7MlZws20tBdAm7zRijWUkIYahXA/d4+KtBv71dB2s1ta
 XQ5Q==
X-Gm-Message-State: AOAM532YW5Nzda6ftOnlUQlTlq802mdpizxZahFOA5InaaX3dUItyq7I
 Ug3To2Z29ZfGy3sPzrOAg+M=
X-Google-Smtp-Source: ABdhPJxi6jKv3UU4V74z8BpHT0legfyJ6m4liwDjnUs26TCqWbf+zXKSGEFe/8+C6okzWB2llg7JkA==
X-Received: by 2002:a2e:7c18:: with SMTP id x24mr8025546ljc.402.1599398874492; 
 Sun, 06 Sep 2020 06:27:54 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id k10sm4219247lja.112.2020.09.06.06.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Sep 2020 06:27:53 -0700 (PDT)
Received: (nullmailer pid 556475 invoked by uid 1000);
 Sun, 06 Sep 2020 13:33:01 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: replace enum
 rtw_ieee80211_spectrum_mgmt_actioncode with
 ieee80211_spectrum_mgmt_actioncode
Date: Sun,  6 Sep 2020 16:32:37 +0300
Message-Id: <20200906133236.556427-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Enum rtw_ieee80211_spectrum_mgmt_actioncode is a duplication
of ieee80211_spectrum_mgmt_actioncode from include/linux/ieee80211.h.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 10 +++++-----
 drivers/staging/rtl8188eu/include/ieee80211.h | 10 ----------
 2 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 98b1ba2e489f..0eaf81e83ddc 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -3546,12 +3546,12 @@ static unsigned int on_action_spct(struct adapter *padapter,
 
 	action = frame_body[1];
 	switch (action) {
-	case RTW_WLAN_ACTION_SPCT_MSR_REQ:
-	case RTW_WLAN_ACTION_SPCT_MSR_RPRT:
-	case RTW_WLAN_ACTION_SPCT_TPC_REQ:
-	case RTW_WLAN_ACTION_SPCT_TPC_RPRT:
+	case WLAN_ACTION_SPCT_MSR_REQ:
+	case WLAN_ACTION_SPCT_MSR_RPRT:
+	case WLAN_ACTION_SPCT_TPC_REQ:
+	case WLAN_ACTION_SPCT_TPC_RPRT:
 		break;
-	case RTW_WLAN_ACTION_SPCT_CHL_SWITCH:
+	case WLAN_ACTION_SPCT_CHL_SWITCH:
 		break;
 	default:
 		break;
diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 83218e7ec0a9..cb6940d2aeab 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -526,16 +526,6 @@ enum rtw_ieee80211_category {
 	RTW_WLAN_CATEGORY_P2P = 0x7f,/* P2P action frames */
 };
 
-/* SPECTRUM_MGMT action code */
-enum rtw_ieee80211_spectrum_mgmt_actioncode {
-	RTW_WLAN_ACTION_SPCT_MSR_REQ = 0,
-	RTW_WLAN_ACTION_SPCT_MSR_RPRT = 1,
-	RTW_WLAN_ACTION_SPCT_TPC_REQ = 2,
-	RTW_WLAN_ACTION_SPCT_TPC_RPRT = 3,
-	RTW_WLAN_ACTION_SPCT_CHL_SWITCH = 4,
-	RTW_WLAN_ACTION_SPCT_EXT_CHL_SWITCH = 5,
-};
-
 enum _PUBLIC_ACTION {
 	ACT_PUBLIC_BSSCOEXIST = 0, /*  20/40 BSS Coexistence */
 	ACT_PUBLIC_DSE_ENABLE = 1,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
