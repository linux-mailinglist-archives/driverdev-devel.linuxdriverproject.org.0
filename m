Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A67BB338762
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51BD26FACF;
	Fri, 12 Mar 2021 08:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XEoCLt6NqP9k; Fri, 12 Mar 2021 08:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D38526067E;
	Fri, 12 Mar 2021 08:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 010641BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F24D542C29
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXnKrjjQ2Q2F for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF8104150B
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:04 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id g25so3246775wmh.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=AzTYdM6iztmvW5JhecbUwuXOxxbpCPdcMfKxmwDzQCc=;
 b=oZINZjXIzBcZiZBeiXxINRP7OAl6frXXjC/OPb1IReMr05X+VYZqTqiXS+59RhV6TF
 kuLGXLm4A7gmNaUCdno5weIAWM+3LI/JMYWKPAfYwmkKRN+wut8v2eRDmdVtM2/lhuf+
 MUxhtMzaAUmy50Fl4Kt3mMTR9t+kFStyA5KG4RuEbNCIBVFw+w0VSK2TjILNOUMvVHuj
 3LiYY2x5PcKUn98/utRBT17ip+Osy3V9j4GCu3xXOpE6yO2MeV26+sc6HcMINDrfHqV1
 5YfxIhRMSb9myboSzs9uD6NECsoQMqjoIdeFD+EDn1O2gRgCcnM6bJllgjW/Nrh2pQdu
 lAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AzTYdM6iztmvW5JhecbUwuXOxxbpCPdcMfKxmwDzQCc=;
 b=Mwcw7zSPLUEHbJxMp8qIrZX5BXNjL/UyG/yGsU7Yp1DfryDBWgWCRRQYrkzuJHfKJU
 Wlgzl9KcKJykRtuYXZor431/NpmOp//Zf8xVho4WRvatX8+ktz82IOTc2LClmJDF3xgY
 xPPAsNwYEi35mdXqohaNnqQQIpSosRLqZd9S05c07d5DsLNSe4SezhH/Gvj84a11amCk
 JSwBnMuBjjKUS2zst96NdPMW9qDDeyDhuqqi6hjZFIOlRbocAC4nCjSQUL9ts9yyoLPB
 QQguaAdq435JpuZLrcLX3gOysdNnOTavR7qn0hsqojPoq/pPpfo/k510X1deIQ54Bdh+
 oXfQ==
X-Gm-Message-State: AOAM5308k3K2UlpQpu8TABKTes3PgvLnL9pVvh53DVbjg+4Kj9FQf/ij
 LqO5ZCm9O1RhOGFUU0eu/+XeGVWbUVU=
X-Google-Smtp-Source: ABdhPJwPWyp4K+VXHRJ8Apv/62c+jCq/9AteoUIQqIVtD9OLe7wEfQeJVVNwsrn3cnJD9DhSaduPaQ==
X-Received: by 2002:a7b:c407:: with SMTP id k7mr12153973wmi.136.1615537623137; 
 Fri, 12 Mar 2021 00:27:03 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:02 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 23/33] staging: rtl8723bs: remove typedefs in rtw_mlme_ext.h
Date: Fri, 12 Mar 2021 09:26:28 +0100
Message-Id: <20210312082638.25512-24-marco.cesati@gmail.com>
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
    #118: FILE: include/rtw_mlme_ext.h:118:
    +typedef enum _RT_CHANNEL_DOMAIN {

    WARNING: do not add new typedefs
    #186: FILE: include/rtw_mlme_ext.h:186:
    +typedef enum _RT_CHANNEL_DOMAIN_2G {

    WARNING: do not add new typedefs
    #198: FILE: include/rtw_mlme_ext.h:198:
    +typedef enum _RT_CHANNEL_DOMAIN_5G {

    WARNING: do not add new typedefs
    #241: FILE: include/rtw_mlme_ext.h:241:
    +typedef struct _RT_CHANNEL_PLAN {

    WARNING: do not add new typedefs
    #246: FILE: include/rtw_mlme_ext.h:246:
    +typedef struct _RT_CHANNEL_PLAN_2G {

    WARNING: do not add new typedefs
    #251: FILE: include/rtw_mlme_ext.h:251:
    +typedef struct _RT_CHANNEL_PLAN_5G {

    WARNING: do not add new typedefs
    #256: FILE: include/rtw_mlme_ext.h:256:
    +typedef struct _RT_CHANNEL_PLAN_MAP {

    WARNING: do not add new typedefs
    #273: FILE: include/rtw_mlme_ext.h:273:
    +typedef enum _HT_IOT_PEER {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 24 +++++------
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  | 40 +++++++++----------
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c  |  2 +-
 3 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 8ab5b38e8fc1..f542805a461c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -71,7 +71,7 @@ static unsigned char REALTEK_96B_IE[] = {0x00, 0xe0, 0x4c, 0x02, 0x01, 0x20};
 /********************************************************
 ChannelPlan definitions
 *********************************************************/
-static RT_CHANNEL_PLAN_2G	RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
+static struct RT_CHANNEL_PLAN_2G	RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x00, RT_CHANNEL_DOMAIN_2G_WORLD , Passive scan CH 12, 13 */
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x01, RT_CHANNEL_DOMAIN_2G_ETSI1 */
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, 11},			/*  0x02, RT_CHANNEL_DOMAIN_2G_FCC1 */
@@ -81,7 +81,7 @@ static RT_CHANNEL_PLAN_2G	RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
 	{{}, 0},								/*  0x06, RT_CHANNEL_DOMAIN_2G_NULL */
 };
 
-static RT_CHANNEL_PLAN_5G	RTW_ChannelPlan5G[RT_CHANNEL_DOMAIN_5G_MAX] = {
+static struct RT_CHANNEL_PLAN_5G	RTW_ChannelPlan5G[RT_CHANNEL_DOMAIN_5G_MAX] = {
 	{{}, 0},																					/*  0x00, RT_CHANNEL_DOMAIN_5G_NULL */
 	{{36, 40, 44, 48, 52, 56, 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140}, 19},						/*  0x01, RT_CHANNEL_DOMAIN_5G_ETSI1 */
 	{{36, 40, 44, 48, 52, 56, 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165}, 24},	/*  0x02, RT_CHANNEL_DOMAIN_5G_ETSI2 */
@@ -121,7 +121,7 @@ static RT_CHANNEL_PLAN_5G	RTW_ChannelPlan5G[RT_CHANNEL_DOMAIN_5G_MAX] = {
 	{{36, 40, 44, 48, 149, 153, 157, 161}, 8},															/*  0x22, RT_CHANNEL_DOMAIN_5G_FCC4_NO_DFS */
 };
 
-static RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
+static struct RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 	/*  0x00 ~ 0x1F , Old Define ===== */
 	{0x02, 0x20},	/* 0x00, RT_CHANNEL_DOMAIN_FCC */
 	{0x02, 0x0A},	/* 0x01, RT_CHANNEL_DOMAIN_IC */
@@ -209,7 +209,7 @@ static RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 };
 
  /* use the combination for max channel numbers */
-static RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
+static struct RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
 
 /* Search the @param ch in given @param ch_set
  * @ch_set: the given channel set
@@ -217,7 +217,7 @@ static RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
  *
  * return the index of channel_num in channel_set, -1 if not found
  */
-int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch)
+int rtw_ch_set_search_ch(struct RT_CHANNEL_INFO *ch_set, const u32 ch)
 {
 	int i;
 
@@ -325,7 +325,7 @@ static void init_mlme_ext_priv_value(struct adapter *padapter)
 	pmlmeext->action_public_dialog_token = 0xff;
 }
 
-static int has_channel(RT_CHANNEL_INFO *channel_set,
+static int has_channel(struct RT_CHANNEL_INFO *channel_set,
 					   u8 chanset_size,
 					   u8 chan)
 {
@@ -340,7 +340,7 @@ static int has_channel(RT_CHANNEL_INFO *channel_set,
 	return 0;
 }
 
-static void init_channel_list(struct adapter *padapter, RT_CHANNEL_INFO *channel_set,
+static void init_channel_list(struct adapter *padapter, struct RT_CHANNEL_INFO *channel_set,
 							  u8 chanset_size,
 							  struct p2p_channels *channel_list)
 {
@@ -392,13 +392,13 @@ static void init_channel_list(struct adapter *padapter, RT_CHANNEL_INFO *channel
 
 }
 
-static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_INFO *channel_set)
+static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, struct RT_CHANNEL_INFO *channel_set)
 {
 	u8 index, chanset_size = 0;
 	u8 b5GBand = false, b2_4GBand = false;
 	u8 Index2G = 0, Index5G = 0;
 
-	memset(channel_set, 0, sizeof(RT_CHANNEL_INFO)*MAX_CHANNEL_NUM);
+	memset(channel_set, 0, sizeof(struct RT_CHANNEL_INFO)*MAX_CHANNEL_NUM);
 
 	if (ChannelPlan >= RT_CHANNEL_DOMAIN_MAX && ChannelPlan != RT_CHANNEL_DOMAIN_REALTEK_DEFINE) {
 		DBG_871X("ChannelPlan ID %x error !!!!!\n", ChannelPlan);
@@ -4767,7 +4767,7 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 {
 	struct registry_priv *pregistrypriv;
 	struct mlme_ext_priv *pmlmeext;
-	RT_CHANNEL_INFO *chplan_new;
+	struct RT_CHANNEL_INFO *chplan_new;
 	u8 channel;
 	u8 i;
 
@@ -4780,8 +4780,8 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 		(!pmlmeext->update_channel_plan_by_ap_done)) {
 		u8 *ie, *p;
 		u32 len;
-		RT_CHANNEL_PLAN chplan_ap;
-		RT_CHANNEL_INFO chplan_sta[MAX_CHANNEL_NUM];
+		struct RT_CHANNEL_PLAN chplan_ap;
+		struct RT_CHANNEL_INFO chplan_sta[MAX_CHANNEL_NUM];
 		u8 country[4];
 		u8 fcn; /*  first channel number */
 		u8 noc; /*  number of channel */
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index ed6b03c25367..6aa3805b7abd 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -115,7 +115,7 @@ extern unsigned char WMM_PARA_OUI[];
 /* 	If you just wnat to customize the acitions(scan period or join actions) about one of the channel plan, */
 /* 	customize them in RT_CHANNEL_INFO in the RT_CHANNEL_LIST. */
 /*  */
-typedef enum _RT_CHANNEL_DOMAIN {
+enum RT_CHANNEL_DOMAIN {
 	/*  old channel plan mapping ===== */
 	RT_CHANNEL_DOMAIN_FCC = 0x00,
 	RT_CHANNEL_DOMAIN_IC = 0x01,
@@ -181,9 +181,9 @@ typedef enum _RT_CHANNEL_DOMAIN {
 	/*  Add new channel plan above this line =============== */
 	RT_CHANNEL_DOMAIN_MAX,
 	RT_CHANNEL_DOMAIN_REALTEK_DEFINE = 0x7F,
-} RT_CHANNEL_DOMAIN, *PRT_CHANNEL_DOMAIN;
+};
 
-typedef enum _RT_CHANNEL_DOMAIN_2G {
+enum RT_CHANNEL_DOMAIN_2G {
 	RT_CHANNEL_DOMAIN_2G_WORLD = 0x00,		/* Worldwird 13 */
 	RT_CHANNEL_DOMAIN_2G_ETSI1 = 0x01,		/* Europe */
 	RT_CHANNEL_DOMAIN_2G_FCC1 = 0x02,		/* US */
@@ -193,9 +193,9 @@ typedef enum _RT_CHANNEL_DOMAIN_2G {
 	RT_CHANNEL_DOMAIN_2G_NULL = 0x06,
 	/*  Add new channel plan above this line =============== */
 	RT_CHANNEL_DOMAIN_2G_MAX,
-} RT_CHANNEL_DOMAIN_2G, *PRT_CHANNEL_DOMAIN_2G;
+};
 
-typedef enum _RT_CHANNEL_DOMAIN_5G {
+enum RT_CHANNEL_DOMAIN_5G {
 	RT_CHANNEL_DOMAIN_5G_NULL = 0x00,
 	RT_CHANNEL_DOMAIN_5G_ETSI1 = 0x01,		/* Europe */
 	RT_CHANNEL_DOMAIN_5G_ETSI2 = 0x02,		/* Australia, New Zealand */
@@ -234,29 +234,29 @@ typedef enum _RT_CHANNEL_DOMAIN_5G {
 	RT_CHANNEL_DOMAIN_5G_JAPAN_NO_DFS = 0x21,
 	RT_CHANNEL_DOMAIN_5G_FCC4_NO_DFS = 0x22,
 	RT_CHANNEL_DOMAIN_5G_MAX,
-} RT_CHANNEL_DOMAIN_5G, *PRT_CHANNEL_DOMAIN_5G;
+};
 
 #define rtw_is_channel_plan_valid(chplan) (chplan < RT_CHANNEL_DOMAIN_MAX || chplan == RT_CHANNEL_DOMAIN_REALTEK_DEFINE)
 
-typedef struct _RT_CHANNEL_PLAN {
+struct RT_CHANNEL_PLAN {
 	unsigned char Channel[MAX_CHANNEL_NUM];
 	unsigned char Len;
-} RT_CHANNEL_PLAN, *PRT_CHANNEL_PLAN;
+};
 
-typedef struct _RT_CHANNEL_PLAN_2G {
+struct RT_CHANNEL_PLAN_2G {
 	unsigned char Channel[MAX_CHANNEL_NUM_2G];
 	unsigned char Len;
-} RT_CHANNEL_PLAN_2G, *PRT_CHANNEL_PLAN_2G;
+};
 
-typedef struct _RT_CHANNEL_PLAN_5G {
+struct RT_CHANNEL_PLAN_5G {
 	unsigned char Channel[MAX_CHANNEL_NUM_5G];
 	unsigned char Len;
-} RT_CHANNEL_PLAN_5G, *PRT_CHANNEL_PLAN_5G;
+};
 
-typedef struct _RT_CHANNEL_PLAN_MAP {
+struct RT_CHANNEL_PLAN_MAP {
 	unsigned char Index2G;
 	unsigned char Index5G;
-} RT_CHANNEL_PLAN_MAP, *PRT_CHANNEL_PLAN_MAP;
+};
 
 enum Associated_AP {
 	atherosAP	= 0,
@@ -270,7 +270,7 @@ enum Associated_AP {
 	maxAP,
 };
 
-typedef enum _HT_IOT_PEER {
+enum HT_IOT_PEER_E {
 	HT_IOT_PEER_UNKNOWN			= 0,
 	HT_IOT_PEER_REALTEK			= 1,
 	HT_IOT_PEER_REALTEK_92SE		= 2,
@@ -290,7 +290,7 @@ typedef enum _HT_IOT_PEER {
 	HT_IOT_PEER_REALTEK_JAGUAR_BCUTAP = 16,
 	HT_IOT_PEER_REALTEK_JAGUAR_CCUTAP = 17,
 	HT_IOT_PEER_MAX					= 18
-} HT_IOT_PEER_E, *PHTIOT_PEER_E;
+};
 
 
 enum SCAN_STATE {
@@ -417,12 +417,12 @@ struct mlme_ext_info {
 };
 
 /*  The channel information about this channel including joining, scanning, and power constraints. */
-typedef struct _RT_CHANNEL_INFO {
+struct RT_CHANNEL_INFO {
 	u8 		ChannelNum;		/*  The channel number. */
 	enum RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
-} RT_CHANNEL_INFO, *PRT_CHANNEL_INFO;
+};
 
-int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch);
+int rtw_ch_set_search_ch(struct RT_CHANNEL_INFO *ch_set, const u32 ch);
 bool rtw_mlme_band_check(struct adapter *adapter, const u32 ch);
 
 /*  P2P_MAX_REG_CLASSES - Maximum number of regulatory classes */
@@ -474,7 +474,7 @@ struct mlme_ext_priv {
 	unsigned char cur_wireless_mode;	/*  NETWORK_TYPE */
 
 	unsigned char max_chan_nums;
-	RT_CHANNEL_INFO		channel_set[MAX_CHANNEL_NUM];
+	struct RT_CHANNEL_INFO		channel_set[MAX_CHANNEL_NUM];
 	struct p2p_channels channel_list;
 	unsigned char basicrate[NumRates];
 	unsigned char datarate[NumRates];
diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index 3f04b7a954ba..b3d87a971398 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -61,7 +61,7 @@ static void _rtw_reg_apply_flags(struct wiphy *wiphy)
 {
 	struct adapter *padapter = wiphy_to_adapter(wiphy);
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	RT_CHANNEL_INFO *channel_set = pmlmeext->channel_set;
+	struct RT_CHANNEL_INFO *channel_set = pmlmeext->channel_set;
 	u8 max_chan_nums = pmlmeext->max_chan_nums;
 
 	struct ieee80211_supported_band *sband;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
