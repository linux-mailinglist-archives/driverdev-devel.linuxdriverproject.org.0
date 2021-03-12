Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC8338744
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F2BC4150C;
	Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BcPHJm_F2f0y; Fri, 12 Mar 2021 08:27:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86AD94150B;
	Fri, 12 Mar 2021 08:27:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2181BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B9536F963
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGYn5Xs8QxUt for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E9836067E
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:49 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id e18so1272798wrt.6
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=yj+d7ezdi1V3eCv7LrQqxxS8SdqEaWC7PKmApP6CZzE=;
 b=Ahel/MRrKKP67nqga8/I/sHZhwoIfWnWfG1crpK8V6LTbsoYSBXNK9dAyds1AiQL9T
 3DEI5BBye8iQozsVjyggkwv63TTO1PRnSzyT3gGmTIfoeWT2jUV0uOq6Lewv1mbKe57F
 mp20kBl5vxGVAbaj1u7SS0e66r+W7r9IeR8OIZCR9F8Hm1eBZededmY3gW8d4ymah3M+
 eCOkc3pfcPFbLJmJ8T6X67dESkVPdQgPMNlnW+62b/ObNrJSGvYYI3tHm8h4OZi06wcE
 w1xVJyFhsMOM6b8MfbsuBK1c4SD40crbiYRHZAk4Q8+rg5lC18/++XMNccjxsAdh/2fA
 TOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yj+d7ezdi1V3eCv7LrQqxxS8SdqEaWC7PKmApP6CZzE=;
 b=GkMFMdc+RamBMEl788NXeT8xDOg7kbyanUT1s4XfE3HxiHdfAuVHrn1KbtjBrw/8nT
 aanwIdHdnt7yBDXoZCh9wvgPFAer3bYXk4e4bwGfSlM19tjuSCOOnjWVat7kIKmIflhM
 qH24j+uFFf0Jl4IQgRj46FGWyZRgMPgQ9ba1k1NAi1IWC7fgc/eq77vrnYvlNTpwj38L
 aFAsIXDuW/pVApXNa94CV/ejeRr6QTsLids0cHnkoQg9vHm7gcntfKeo9cprRP8cCMYk
 HkkIu7GxEo+vvUZ6tC04dcfrHQvZxyOTP9mcZuuX79OMiAu9fg1FevlL5EH8INzmtNMh
 S55g==
X-Gm-Message-State: AOAM532jFiZCliq2rlhi/lTMivfcVVDDvkiQDE0xBXNwJXjikrKED0HI
 M6Vr5JGABPT4MK4Dn83/aPo=
X-Google-Smtp-Source: ABdhPJyoMA7KKFOYWVr3s4heYVfxsazvB0y+83vpGMKAuVLb4gZUOdelba+TIpQHuxHzJuDgGA23QQ==
X-Received: by 2002:a05:6000:192:: with SMTP id
 p18mr12584972wrx.403.1615537607884; 
 Fri, 12 Mar 2021 00:26:47 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:47 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 02/33] staging: rtl8723bs: remove typedefs in rtw_mlme.h
Date: Fri, 12 Mar 2021 09:26:07 +0100
Message-Id: <20210312082638.25512-3-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #84: FILE: include/rtw_mlme.h:84:
    +typedef enum _RT_SCAN_TYPE {

    WARNING: do not add new typedefs
    #137: FILE: include/rtw_mlme.h:137:
    +typedef struct _RT_LINK_DETECT_T {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    |  2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c       |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h     | 12 ++++++------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 3443a5764c50..8ab5b38e8fc1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4272,7 +4272,7 @@ Following are some utility functions for WiFi MLME
 void site_survey(struct adapter *padapter)
 {
 	unsigned char 	survey_channel = 0, val8;
-	RT_SCAN_TYPE	ScanType = SCAN_PASSIVE;
+	enum RT_SCAN_TYPE	ScanType = SCAN_PASSIVE;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	u32 initialgain = 0;
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 7ac8a173245f..35d88832de0f 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -445,7 +445,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 
 	case BTC_GET_U4_WIFI_TRAFFIC_DIRECTION:
 		{
-			PRT_LINK_DETECT_T plinkinfo;
+			struct RT_LINK_DETECT_T * plinkinfo;
 			plinkinfo = &padapter->mlmepriv.LinkDetectInfo;
 
 			if (plinkinfo->NumTxOkInPeriod > plinkinfo->NumRxOkInPeriod)
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index d8655cb619a1..2f9c2a03e385 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -81,11 +81,11 @@ enum dot11AuthAlgrthmNum {
 };
 
 /*  Scan type including active and passive scan. */
-typedef enum _RT_SCAN_TYPE {
+enum RT_SCAN_TYPE {
 	SCAN_PASSIVE,
 	SCAN_ACTIVE,
 	SCAN_MIX,
-} RT_SCAN_TYPE, *PRT_SCAN_TYPE;
+};
 
 enum  _BAND {
 	GHZ24_50 = 0,
@@ -134,7 +134,7 @@ struct sitesurvey_ctrl {
 	_timer	sitesurvey_ctrl_timer;
 };
 
-typedef struct _RT_LINK_DETECT_T {
+struct RT_LINK_DETECT_T {
 	u32 			NumTxOkInPeriod;
 	u32 			NumRxOkInPeriod;
 	u32 			NumRxUnicastOkInPeriod;
@@ -147,7 +147,7 @@ typedef struct _RT_LINK_DETECT_T {
 	/* u8 TrafficBusyState; */
 	u8 TrafficTransitionCount;
 	u32 LowPowerTransitionCount;
-} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+};
 
 struct profile_info {
 	u8 ssidlen;
@@ -385,12 +385,12 @@ struct mlme_priv {
 
 	struct ht_priv htpriv;
 
-	RT_LINK_DETECT_T	LinkDetectInfo;
+	struct RT_LINK_DETECT_T	LinkDetectInfo;
 	_timer	dynamic_chk_timer; /* dynamic/periodic check timer */
 
 	u8 acm_mask; /*  for wmm acm mask */
 	u8 ChannelPlan;
-	RT_SCAN_TYPE	scan_mode; /*  active: 1, passive: 0 */
+	enum RT_SCAN_TYPE	scan_mode; /*  active: 1, passive: 0 */
 
 	u8 *wps_probe_req_ie;
 	u32 wps_probe_req_ie_len;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 1567831caf91..ed6b03c25367 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -419,7 +419,7 @@ struct mlme_ext_info {
 /*  The channel information about this channel including joining, scanning, and power constraints. */
 typedef struct _RT_CHANNEL_INFO {
 	u8 		ChannelNum;		/*  The channel number. */
-	RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
+	enum RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
 } RT_CHANNEL_INFO, *PRT_CHANNEL_INFO;
 
 int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
