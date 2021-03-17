Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3C133FAF1
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:21:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3ED443284;
	Wed, 17 Mar 2021 22:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UjaE8UHYXrEN; Wed, 17 Mar 2021 22:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF2EF43096;
	Wed, 17 Mar 2021 22:21:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 727AA1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F335430A8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5hDFw4RPj89 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A2E543061
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:21 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id z1so4209053edb.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1HK8NjhFpQfTuxFOCEp4/yPjD7ckDZ9JUrUhzdMGmLw=;
 b=fgWBhrFAmGMaAiSib7q00Wx2kzRWJdT2lrrnmROlm6eO8A02CWgsdmfVsSS+ZKBPMe
 fy6SsLsNO6GOKFLMZXZjH2A1iufYpFVQoR4yah9X0RBgfy4qc55IQ2gujI5DQH86dlr3
 WqcvfVeW9GzHplNqz3rGccJFqbm94Np2+H0AmFu4l06vDH2vcdfRSgXcVbo/eENOnyeP
 Go4kDbjsJnJHO6/KlbQSZxMVQQUvOjVQHa9yoZtbbtjEJ1WKHMyQW9HUluoYvvHzgAUi
 5mUptxTYx9t+gqhVUAewti+ImFXbuwlwwU3p+zV6hN6wdphcRutvE2IKB9e0crSxTU/L
 UzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1HK8NjhFpQfTuxFOCEp4/yPjD7ckDZ9JUrUhzdMGmLw=;
 b=H/EmDOROAySCSYFRtKIzuFvkT7ekp8Kd9SJMcvPCsUwlNn9UvCLkkOFSaQC6rZ6kWv
 ExBuVrwzi97bELMddt92gkZ7bCA7166GoNUl0q2AKjD++4M5wh9K1tjqLGDHe7zqRPWv
 bSxGcWq79u1WuDr2sWjFSunV4F1mCt/jKL4wSfzfWoD8zffm6HY/0GmTZUo0suBbGkXB
 UQIPl0Ku0yhYN/61K1LmR0JDxZqO1CXacdXe3BI6qbxMcRc51AXAgt/xZi6/ECEqffo6
 rRiPFQLvv4KPEj+3ESY9eVBwm4Lt6TMZZa4KZRE5evJRYMqZzMfNVvPei/DLO+ibEiBd
 GAoA==
X-Gm-Message-State: AOAM5337tRBsCZxfmKn1B+4wpwJUWWRsuwSU+21GtCu9I1lnv8fDix6g
 BEKpYJK0WZvsNquXaLhKoNM=
X-Google-Smtp-Source: ABdhPJySAEjBrfQnhu77Tl6lKYPNr1KjewBbipnZ4Niglh0n5xU8pMQ5vAPzC0g5xj7jhlxQ3YXAfQ==
X-Received: by 2002:a05:6402:4314:: with SMTP id
 m20mr43685855edc.5.1616019679600; 
 Wed, 17 Mar 2021 15:21:19 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:19 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 01/43] Staging: rtl8723bs: fix names in rtw_mlme.h
Date: Wed, 17 Mar 2021 23:20:48 +0100
Message-Id: <20210317222130.29528-2-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_mlme.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    |  2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c       |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h     | 12 ++++++------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index e60a2ed32de5..416268f26dc3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4133,7 +4133,7 @@ Following are some utility functions for WiFi MLME
 void site_survey(struct adapter *padapter)
 {
 	unsigned char 	survey_channel = 0, val8;
-	enum RT_SCAN_TYPE	ScanType = SCAN_PASSIVE;
+	enum rt_scan_type	ScanType = SCAN_PASSIVE;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	u32 initialgain = 0;
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index fb279b662122..0b339c155860 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -445,7 +445,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 
 	case BTC_GET_U4_WIFI_TRAFFIC_DIRECTION:
 		{
-			struct RT_LINK_DETECT_T *plinkinfo;
+			struct rt_link_detect_t *plinkinfo;
 			plinkinfo = &padapter->mlmepriv.LinkDetectInfo;
 
 			if (plinkinfo->NumTxOkInPeriod > plinkinfo->NumRxOkInPeriod)
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 1ebc1e183381..ffcceb1fdde6 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -81,13 +81,13 @@ enum dot11AuthAlgrthmNum {
 };
 
 /*  Scan type including active and passive scan. */
-enum RT_SCAN_TYPE {
+enum rt_scan_type {
 	SCAN_PASSIVE,
 	SCAN_ACTIVE,
 	SCAN_MIX,
 };
 
-enum  _BAND {
+enum  _band {
 	GHZ24_50 = 0,
 	GHZ_50,
 	GHZ_24,
@@ -101,7 +101,7 @@ enum DriverInterface {
 	DRIVER_CFG80211 = 2
 };
 
-enum SCAN_RESULT_TYPE {
+enum scan_result_type {
 	SCAN_RESULT_P2P_ONLY = 0,		/* 	Will return all the P2P devices. */
 	SCAN_RESULT_ALL = 1,			/* 	Will return all the scanned device, include AP. */
 	SCAN_RESULT_WFD_TYPE = 2		/* 	Will just return the correct WFD device. */
@@ -134,7 +134,7 @@ struct sitesurvey_ctrl {
 	struct timer_list	sitesurvey_ctrl_timer;
 };
 
-struct RT_LINK_DETECT_T {
+struct rt_link_detect_t {
 	u32 			NumTxOkInPeriod;
 	u32 			NumRxOkInPeriod;
 	u32 			NumRxUnicastOkInPeriod;
@@ -385,12 +385,12 @@ struct mlme_priv {
 
 	struct ht_priv htpriv;
 
-	struct RT_LINK_DETECT_T	LinkDetectInfo;
+	struct rt_link_detect_t	LinkDetectInfo;
 	struct timer_list	dynamic_chk_timer; /* dynamic/periodic check timer */
 
 	u8 acm_mask; /*  for wmm acm mask */
 	u8 ChannelPlan;
-	enum RT_SCAN_TYPE	scan_mode; /*  active: 1, passive: 0 */
+	enum rt_scan_type	scan_mode; /*  active: 1, passive: 0 */
 
 	u8 *wps_probe_req_ie;
 	u32 wps_probe_req_ie_len;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index e593293bb9c4..0f4dd33b6e55 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -419,7 +419,7 @@ struct mlme_ext_info {
 /*  The channel information about this channel including joining, scanning, and power constraints. */
 struct RT_CHANNEL_INFO {
 	u8 		ChannelNum;		/*  The channel number. */
-	enum RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
+	enum rt_scan_type	ScanType;		/*  Scan type such as passive or active scan. */
 };
 
 int rtw_ch_set_search_ch(struct RT_CHANNEL_INFO *ch_set, const u32 ch);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
