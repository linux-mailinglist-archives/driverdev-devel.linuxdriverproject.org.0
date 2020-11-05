Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B8F2A7636
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8EEB8560B;
	Thu,  5 Nov 2020 03:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FHbu742xQRh; Thu,  5 Nov 2020 03:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B49185585;
	Thu,  5 Nov 2020 03:48:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3CCA1BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E048685513
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KeQ3OrKOB9dx for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 52B2C854FC
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:16 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id z2so140556ilh.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e98j2N411UER5rHXELNTCsjcaZIK/s/RI1cj1IroP1Y=;
 b=WOatbNLcx2AVVbLrcoJVy4o4+M1ycvKb9D3fUisLOKo4NBuSClLMoUx/OSCCrkAE3H
 0+ygDMWlKlLJNNnmKNjB3i9fmLoaTHlNB0TJ/b9nXN4R694OEnuDDuWOIzBISLwg1Ar9
 lt4Yk7N9Hthvg0YFu+SFF8kicPsRvJ9NVhDo0FTx+tfuR5m8RIi1PyJkUIQguYbmurU0
 llamMd3GT7P888ltDXkbg29IvBB6W0MBaXCSMzvN4Nk71ABaI/ptxdQ1U4HPylMBcWEl
 VMxKuy5OGdfT57NmvyhuinJSeYa2rTqcEfr+3+oNMTryi1tdkhYwv5eLX7da7RqaGLAO
 j2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e98j2N411UER5rHXELNTCsjcaZIK/s/RI1cj1IroP1Y=;
 b=EB7RXO4qumQWqcYg8PgtFfQarp8kdotcCFfSgV6bDDh+vKkUXzMbEyMOSkzGWUSGXi
 2Q07tJSP4T7wFEB2PTtUckcdF3Pqha3ld/rK16ZBF+HVhK2sY/PvSe13wNbzzUye+bHS
 /aTGQshG0YqIU2kE/2BvFJPHRRp24hpvbI8T8EqKdfBZgm7ZIOwjJBciWr1CSLZ5jY7i
 Z3++mt+PXL1C2lfEWoXJUhHkmOvKVMFWNKcAJbIWjVSRpjjebFQMGEWE747Bvkb2xvRD
 +kalpTwV04sBAmdLiVa8zQhOkMXMrKHrhpTO1yOJUVOfajZnD3Vk9Q8uo+exconR2SrK
 8Pmw==
X-Gm-Message-State: AOAM532PDpkBwinvnwOPHjtC9Z+X/Gm603jJKL2ffH/ueNHW1Y80udHh
 5YjlJmeRzIWs3oAsEdByYFcBdHUdThE=
X-Google-Smtp-Source: ABdhPJxqW3CqSvqng3aJ8NMe+iQqvTwSF8vxnSi9Amsa6lPM7aUvUl6L0i/Nn+teoRfxan1FslZTYg==
X-Received: by 2002:a92:c5ce:: with SMTP id s14mr540599ilt.40.1604548095768;
 Wed, 04 Nov 2020 19:48:15 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:15 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 8/9] staging: rtl8723bs: replace rtw_ieee80211_ht_actioncode
Date: Wed,  4 Nov 2020 21:47:53 -0600
Message-Id: <20201105034754.12383-8-ross.schm.dev@gmail.com>
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

Replace the unique rtw_ieee80211_ht_actioncode enum with the provided
standard ieee80211_ht_actioncode.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  2 +-
 drivers/staging/rtl8723bs/include/ieee80211.h | 12 ------------
 2 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index cdb1d2b06f1b..c113902877bd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2145,7 +2145,7 @@ unsigned int OnAction_ht(struct adapter *padapter, union recv_frame *precv_frame
 
 	action = frame_body[1];
 	switch (action) {
-	case RTW_WLAN_ACTION_HT_COMPRESS_BEAMFORMING:
+	case WLAN_HT_ACTION_COMPRESSED_BF:
 		break;
 	default:
 		break;
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 06aacafd2340..cd8f6d006a38 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -920,18 +920,6 @@ enum rtw_ieee80211_back_actioncode {
 	RTW_WLAN_ACTION_DELBA = 2,
 };
 
-/* HT features action code */
-enum rtw_ieee80211_ht_actioncode {
-	RTW_WLAN_ACTION_HT_NOTI_CHNL_WIDTH = 0,
-       RTW_WLAN_ACTION_HT_SM_PS = 1,
-       RTW_WLAN_ACTION_HT_PSMP = 2,
-       RTW_WLAN_ACTION_HT_SET_PCO_PHASE = 3,
-       RTW_WLAN_ACTION_HT_CSI = 4,
-       RTW_WLAN_ACTION_HT_NON_COMPRESS_BEAMFORMING = 5,
-       RTW_WLAN_ACTION_HT_COMPRESS_BEAMFORMING = 6,
-       RTW_WLAN_ACTION_HT_ASEL_FEEDBACK = 7,
-};
-
 /* BACK (block-ack) parties */
 enum rtw_ieee80211_back_parties {
 	RTW_WLAN_BACK_RECIPIENT = 0,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
