Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482672A7634
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BD748705B;
	Thu,  5 Nov 2020 03:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hesTeWSoEDRz; Thu,  5 Nov 2020 03:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D08E687044;
	Thu,  5 Nov 2020 03:48:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2E061BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFEE485C90
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDqXmoHzfQcD for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CF9985CA8
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id g15so145485ilc.9
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=afX1gGZlyZvcJQpwCTCtKlmr5LCYW7s+SwuRxa2BoFo=;
 b=BG3eeq4r6Z8Kh0wYQ06zL1tykRFdu1W1fSvCWAgbAyJApSf/rC7fyg/voUzPHkTTbg
 4OZ8q57rqWaB34vQje4YdKSQTwleBc/wkm6SUHmwzJ01G/nBIPSc2OxOjeFfymi5BgxO
 RkpLMIBOHuBLe1Xky30R3yhD2NDjERgf7uTEExDX2w+xDCUMcnDxtNzqUcjkkFNeS7tn
 zkK0af7DLvlaKvYkIPltfDSwOkcEl4mIWd/VMTJPBLABYi8pm0N0nXpQHucOSRhzWhbf
 UPF82vy5j8C31H/sDZWq80CtHcjzdn/giDeyR1NvRsgBEKiHQvalEkOI5iEFiDdOvAkW
 9SrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=afX1gGZlyZvcJQpwCTCtKlmr5LCYW7s+SwuRxa2BoFo=;
 b=mMu3l+Z+7EYPZxkUVjlZCfK84NPeqoEk++xhInvFbrR6ZSI0Y1/E6PSK6ECb9ABjf7
 rxZT8nX7mdLz5pIdXlKFVbXF7u4qgIO0LMe2Yi5DbtPYQ2cgaURv93/edF5kfuoxF9og
 eokY8ZC8Yk1pONQP/uGEHMsAiWob7iFdQPXbnwfXhjdCNZa1TrMP2GNL4/MkQNf/NZH6
 63hH6izybyX3/cd69yUhBgSOIqpBkq0+sDAlDlOxz7JK9FGx3dwMTeNjRjHvr1AGrZSr
 PBmezAGmZsaeoiFYjmuQ8oZgHkGePCU+wqj9TWyzDa/Dvp/zlm0fH0BrGjq2/hROHcIr
 Lr8A==
X-Gm-Message-State: AOAM530ILOW6QQw+enzF2XKJ4srHSkDWVqGifXxLNxz/2zcd8mo5qTcC
 8Vcf3AsvUqfmf6zizq4s6eI=
X-Google-Smtp-Source: ABdhPJzuXf//vRPEu+jW4RqKsyrxs8pItZv3g/5mkiU01qXNOSWDGVBOno+YlYnm+0/TCLlq7ujCWA==
X-Received: by 2002:a92:c0c9:: with SMTP id t9mr524682ilf.56.1604548094684;
 Wed, 04 Nov 2020 19:48:14 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:13 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/9] staging: rtl8723bs: replace
 rtw_ieee80211_spectrum_mgmt_actioncode
Date: Wed,  4 Nov 2020 21:47:52 -0600
Message-Id: <20201105034754.12383-7-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201105034754.12383-1-ross.schm.dev@gmail.com>
References: <20201105034754.12383-1-ross.schm.dev@gmail.com>
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

Replace the unique rtw_ieee80211_mgmt_actioncode enum with the provided
standard ieee80211_spectrum_mgmt_actioncode.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 10 +++++-----
 drivers/staging/rtl8723bs/include/ieee80211.h | 10 ----------
 2 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 3bb80db51562..cdb1d2b06f1b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1891,11 +1891,11 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
 
 	action = frame_body[1];
 	switch (action) {
-	case RTW_WLAN_ACTION_SPCT_MSR_REQ:
-	case RTW_WLAN_ACTION_SPCT_MSR_RPRT:
-	case RTW_WLAN_ACTION_SPCT_TPC_REQ:
-	case RTW_WLAN_ACTION_SPCT_TPC_RPRT:
-	case RTW_WLAN_ACTION_SPCT_CHL_SWITCH:
+	case WLAN_ACTION_SPCT_MSR_REQ:
+	case WLAN_ACTION_SPCT_MSR_RPRT:
+	case WLAN_ACTION_SPCT_TPC_REQ:
+	case WLAN_ACTION_SPCT_TPC_RPRT:
+	case WLAN_ACTION_SPCT_CHL_SWITCH:
 		break;
 	default:
 		break;
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index e2a6b92ba3ba..06aacafd2340 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -893,16 +893,6 @@ enum rtw_ieee80211_category {
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
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
