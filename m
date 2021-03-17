Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23DF33FB08
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:25:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7578743277;
	Wed, 17 Mar 2021 22:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9l4OGwtnRkCH; Wed, 17 Mar 2021 22:25:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 205E74309B;
	Wed, 17 Mar 2021 22:25:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3591BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CE6643096
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C697RJgHNmGw for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18EF9430A8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id b7so819854ejv.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=L4n9rGin3mqIoqITi0TuHs0HRL16VV4IOkC2pLFm77k=;
 b=q9wydZrE8wMjwQyBpLT2Fi/V/fwvWv+GbL3wMnYY/7QowI3vbg6AcpTc+mXDt+8PDQ
 IyrOTs7Gi1/ijQsgnTxgdzWcTcs6rSaV3+f6U9M2IZzzntxFazJtn7HO9vaHmZPTYGvn
 6jeVFJtaOdkp0NL4OQrkwfYe0sYj15hSoq6gStVWssQyV2TgLANz6JiCmJ0+OnyoWnQL
 AAt0l87Jcz46kNgyvrbiieRXtTxStwNf1RfwZ0gspR6U1F+82Gb0hg5uVsK6m7BvLZkL
 XWBVjoA/w4eNMVVzzKjOvWMejFiem6rnkwu2w7/RJT3OqpaGVgyhu+X5JY47n3Nohkd9
 Ob7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L4n9rGin3mqIoqITi0TuHs0HRL16VV4IOkC2pLFm77k=;
 b=c7kV247VVpN3oxSNNi9I72ir3qucmW61+OUC/EJzABVhO96O2YxpHjNQZzlgQ7/GZ2
 wUQFuvfYV9RHMXZxR5E5tkmPX0PxLhW+GGgoxCOguxnZ/4Uj0OVUKwvdAP047XA8nS2/
 X9umf2XQodijyybtC9ffqx/B79z5BpI2/IY1NvqBz+h2Y4OmmmdlSQfulxpjQcozgQZV
 p8DnWakIHpYQWt+Ueg1jRmWx5wuv4cR4njMgec4Sjk4Q6Q6E+BjebEMXQNo3QE1lL/gt
 zO7GTULKEY6bjSlMW93DI4HOwO5i7Qu0NnBEFrX5P+oMRm+vUSp+/2Y9/mAdxTnMO3zF
 krJg==
X-Gm-Message-State: AOAM533+XAvWxg7fp5vmPJNsmnE+QBKWT7cG1A1OpzYEiSk79Yjhio4D
 nQaoyH3d8ZcFi2NgaVdMDA0=
X-Google-Smtp-Source: ABdhPJz4nShIbEt7H5LlZVBgx17gB1gTOP3Axj4c5YZ39JGLwFkw67W0Q/oex0Sec6+6KUSQh6JIxQ==
X-Received: by 2002:a17:906:c102:: with SMTP id
 do2mr37994573ejc.305.1616019692350; 
 Wed, 17 Mar 2021 15:21:32 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:32 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 20/43] Staging: rtl8723bs: fix names in rtw_mlme_ext.h
Date: Wed, 17 Mar 2021 23:21:07 +0100
Message-Id: <20210317222130.29528-21-marcocesati@gmail.com>
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
in include/rtw_mlme_ext.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 24 ++++++++---------
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  | 26 +++++++++----------
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c  |  2 +-
 3 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 416268f26dc3..7bd75744bcb2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -71,7 +71,7 @@ static unsigned char REALTEK_96B_IE[] = {0x00, 0xe0, 0x4c, 0x02, 0x01, 0x20};
 /********************************************************
 ChannelPlan definitions
 *********************************************************/
-static struct RT_CHANNEL_PLAN_2G	RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
+static struct rt_channel_plan_2g	RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x00, RT_CHANNEL_DOMAIN_2G_WORLD , Passive scan CH 12, 13 */
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x01, RT_CHANNEL_DOMAIN_2G_ETSI1 */
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, 11},			/*  0x02, RT_CHANNEL_DOMAIN_2G_FCC1 */
@@ -81,7 +81,7 @@ static struct RT_CHANNEL_PLAN_2G	RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
 	{{}, 0},								/*  0x06, RT_CHANNEL_DOMAIN_2G_NULL */
 };
 
-static struct RT_CHANNEL_PLAN_5G	RTW_ChannelPlan5G[RT_CHANNEL_DOMAIN_5G_MAX] = {
+static struct rt_channel_plan_5g	RTW_ChannelPlan5G[RT_CHANNEL_DOMAIN_5G_MAX] = {
 	{{}, 0},																					/*  0x00, RT_CHANNEL_DOMAIN_5G_NULL */
 	{{36, 40, 44, 48, 52, 56, 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140}, 19},						/*  0x01, RT_CHANNEL_DOMAIN_5G_ETSI1 */
 	{{36, 40, 44, 48, 52, 56, 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165}, 24},	/*  0x02, RT_CHANNEL_DOMAIN_5G_ETSI2 */
@@ -121,7 +121,7 @@ static struct RT_CHANNEL_PLAN_5G	RTW_ChannelPlan5G[RT_CHANNEL_DOMAIN_5G_MAX] = {
 	{{36, 40, 44, 48, 149, 153, 157, 161}, 8},															/*  0x22, RT_CHANNEL_DOMAIN_5G_FCC4_NO_DFS */
 };
 
-static struct RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
+static struct rt_channel_plan_map	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 	/*  0x00 ~ 0x1F , Old Define ===== */
 	{0x02, 0x20},	/* 0x00, RT_CHANNEL_DOMAIN_FCC */
 	{0x02, 0x0A},	/* 0x01, RT_CHANNEL_DOMAIN_IC */
@@ -209,7 +209,7 @@ static struct RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 };
 
  /* use the combination for max channel numbers */
-static struct RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
+static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
 
 /* Search the @param ch in given @param ch_set
  * @ch_set: the given channel set
@@ -217,7 +217,7 @@ static struct RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0
  *
  * return the index of channel_num in channel_set, -1 if not found
  */
-int rtw_ch_set_search_ch(struct RT_CHANNEL_INFO *ch_set, const u32 ch)
+int rtw_ch_set_search_ch(struct rt_channel_info *ch_set, const u32 ch)
 {
 	int i;
 
@@ -325,7 +325,7 @@ static void init_mlme_ext_priv_value(struct adapter *padapter)
 	pmlmeext->action_public_dialog_token = 0xff;
 }
 
-static int has_channel(struct RT_CHANNEL_INFO *channel_set,
+static int has_channel(struct rt_channel_info *channel_set,
 					   u8 chanset_size,
 					   u8 chan)
 {
@@ -340,7 +340,7 @@ static int has_channel(struct RT_CHANNEL_INFO *channel_set,
 	return 0;
 }
 
-static void init_channel_list(struct adapter *padapter, struct RT_CHANNEL_INFO *channel_set,
+static void init_channel_list(struct adapter *padapter, struct rt_channel_info *channel_set,
 							  u8 chanset_size,
 							  struct p2p_channels *channel_list)
 {
@@ -392,13 +392,13 @@ static void init_channel_list(struct adapter *padapter, struct RT_CHANNEL_INFO *
 
 }
 
-static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, struct RT_CHANNEL_INFO *channel_set)
+static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, struct rt_channel_info *channel_set)
 {
 	u8 index, chanset_size = 0;
 	u8 b5GBand = false, b2_4GBand = false;
 	u8 Index2G = 0, Index5G = 0;
 
-	memset(channel_set, 0, sizeof(struct RT_CHANNEL_INFO)*MAX_CHANNEL_NUM);
+	memset(channel_set, 0, sizeof(struct rt_channel_info)*MAX_CHANNEL_NUM);
 
 	if (ChannelPlan >= RT_CHANNEL_DOMAIN_MAX && ChannelPlan != RT_CHANNEL_DOMAIN_REALTEK_DEFINE) {
 		DBG_871X("ChannelPlan ID %x error !!!!!\n", ChannelPlan);
@@ -4616,7 +4616,7 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 {
 	struct registry_priv *pregistrypriv;
 	struct mlme_ext_priv *pmlmeext;
-	struct RT_CHANNEL_INFO *chplan_new;
+	struct rt_channel_info *chplan_new;
 	u8 channel;
 	u8 i;
 
@@ -4629,8 +4629,8 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 		(!pmlmeext->update_channel_plan_by_ap_done)) {
 		u8 *ie, *p;
 		u32 len;
-		struct RT_CHANNEL_PLAN chplan_ap;
-		struct RT_CHANNEL_INFO chplan_sta[MAX_CHANNEL_NUM];
+		struct rt_channel_plan chplan_ap;
+		struct rt_channel_info chplan_sta[MAX_CHANNEL_NUM];
 		u8 country[4];
 		u8 fcn; /*  first channel number */
 		u8 noc; /*  number of channel */
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 0f4dd33b6e55..fb283dc04ee2 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -113,9 +113,9 @@ extern unsigned char WMM_PARA_OUI[];
 /* 	We just add new channel plan when the new channel plan is different from any of the following */
 /* 	channel plan. */
 /* 	If you just wnat to customize the acitions(scan period or join actions) about one of the channel plan, */
-/* 	customize them in RT_CHANNEL_INFO in the RT_CHANNEL_LIST. */
+/* 	customize them in rt_channel_info in the RT_CHANNEL_LIST. */
 /*  */
-enum RT_CHANNEL_DOMAIN {
+enum rt_channel_domain {
 	/*  old channel plan mapping ===== */
 	RT_CHANNEL_DOMAIN_FCC = 0x00,
 	RT_CHANNEL_DOMAIN_IC = 0x01,
@@ -183,7 +183,7 @@ enum RT_CHANNEL_DOMAIN {
 	RT_CHANNEL_DOMAIN_REALTEK_DEFINE = 0x7F,
 };
 
-enum RT_CHANNEL_DOMAIN_2G {
+enum rt_channel_domain_2g {
 	RT_CHANNEL_DOMAIN_2G_WORLD = 0x00,		/* Worldwird 13 */
 	RT_CHANNEL_DOMAIN_2G_ETSI1 = 0x01,		/* Europe */
 	RT_CHANNEL_DOMAIN_2G_FCC1 = 0x02,		/* US */
@@ -195,7 +195,7 @@ enum RT_CHANNEL_DOMAIN_2G {
 	RT_CHANNEL_DOMAIN_2G_MAX,
 };
 
-enum RT_CHANNEL_DOMAIN_5G {
+enum rt_channel_domain_5g {
 	RT_CHANNEL_DOMAIN_5G_NULL = 0x00,
 	RT_CHANNEL_DOMAIN_5G_ETSI1 = 0x01,		/* Europe */
 	RT_CHANNEL_DOMAIN_5G_ETSI2 = 0x02,		/* Australia, New Zealand */
@@ -238,22 +238,22 @@ enum RT_CHANNEL_DOMAIN_5G {
 
 #define rtw_is_channel_plan_valid(chplan) (chplan < RT_CHANNEL_DOMAIN_MAX || chplan == RT_CHANNEL_DOMAIN_REALTEK_DEFINE)
 
-struct RT_CHANNEL_PLAN {
+struct rt_channel_plan {
 	unsigned char Channel[MAX_CHANNEL_NUM];
 	unsigned char Len;
 };
 
-struct RT_CHANNEL_PLAN_2G {
+struct rt_channel_plan_2g {
 	unsigned char Channel[MAX_CHANNEL_NUM_2G];
 	unsigned char Len;
 };
 
-struct RT_CHANNEL_PLAN_5G {
+struct rt_channel_plan_5g {
 	unsigned char Channel[MAX_CHANNEL_NUM_5G];
 	unsigned char Len;
 };
 
-struct RT_CHANNEL_PLAN_MAP {
+struct rt_channel_plan_map {
 	unsigned char Index2G;
 	unsigned char Index5G;
 };
@@ -270,7 +270,7 @@ enum Associated_AP {
 	maxAP,
 };
 
-enum HT_IOT_PEER_E {
+enum ht_iot_peer_e {
 	HT_IOT_PEER_UNKNOWN			= 0,
 	HT_IOT_PEER_REALTEK			= 1,
 	HT_IOT_PEER_REALTEK_92SE		= 2,
@@ -293,7 +293,7 @@ enum HT_IOT_PEER_E {
 };
 
 
-enum SCAN_STATE {
+enum scan_state {
 	SCAN_DISABLE = 0,
 	SCAN_START = 1,
 	SCAN_TXNULL = 2,
@@ -417,12 +417,12 @@ struct mlme_ext_info {
 };
 
 /*  The channel information about this channel including joining, scanning, and power constraints. */
-struct RT_CHANNEL_INFO {
+struct rt_channel_info {
 	u8 		ChannelNum;		/*  The channel number. */
 	enum rt_scan_type	ScanType;		/*  Scan type such as passive or active scan. */
 };
 
-int rtw_ch_set_search_ch(struct RT_CHANNEL_INFO *ch_set, const u32 ch);
+int rtw_ch_set_search_ch(struct rt_channel_info *ch_set, const u32 ch);
 bool rtw_mlme_band_check(struct adapter *adapter, const u32 ch);
 
 /*  P2P_MAX_REG_CLASSES - Maximum number of regulatory classes */
@@ -474,7 +474,7 @@ struct mlme_ext_priv {
 	unsigned char cur_wireless_mode;	/*  NETWORK_TYPE */
 
 	unsigned char max_chan_nums;
-	struct RT_CHANNEL_INFO		channel_set[MAX_CHANNEL_NUM];
+	struct rt_channel_info		channel_set[MAX_CHANNEL_NUM];
 	struct p2p_channels channel_list;
 	unsigned char basicrate[NumRates];
 	unsigned char datarate[NumRates];
diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index b3d87a971398..ee55893528b9 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -61,7 +61,7 @@ static void _rtw_reg_apply_flags(struct wiphy *wiphy)
 {
 	struct adapter *padapter = wiphy_to_adapter(wiphy);
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct RT_CHANNEL_INFO *channel_set = pmlmeext->channel_set;
+	struct rt_channel_info *channel_set = pmlmeext->channel_set;
 	u8 max_chan_nums = pmlmeext->max_chan_nums;
 
 	struct ieee80211_supported_band *sband;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
