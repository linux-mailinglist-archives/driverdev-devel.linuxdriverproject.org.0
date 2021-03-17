Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A9F33FAF2
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:22:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39E3B4EDE1;
	Wed, 17 Mar 2021 22:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8opZXnx4aHjy; Wed, 17 Mar 2021 22:21:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90B994EDCC;
	Wed, 17 Mar 2021 22:21:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC3001BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AAF694EDE0
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9IIm7OB54xMt for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1101F4EDCC
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:21 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id u5so817496ejn.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=14acdP/aMP3M6ZKo1Go9UPtN5Atqe5CvIkMmmCN6ZU4=;
 b=Em5ZccTMWEooHXQxhNLA4mv7XNSBpxsRV+5Xd6N9BaI+PK0awb4d3iWfgy1659kzq/
 3r6Ll2dIxXHE4Y0mzZakILiedgccWDj8UJx0ZBtFlciZtck+rmvdHZBSUXayi0wRA1rt
 yw6kc6fVWbk6lkdhDspCZs05XjEKSR8d9x950uBQt26WF0TXxgLQt0MrZHQyOA+s3Yn4
 QlIo+2PYDUAaLbRCMgwfDugJebdzdWBGXSpN8ATnKrj5JVsCsJfphevv6D/oqgfZ6NE7
 m+7/TLb7+EvXmHADks0euXznoRX1sDHn6fTR4QHUYQqGlJMn5HLB2ZpnFL4tOzJT4fMG
 a4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=14acdP/aMP3M6ZKo1Go9UPtN5Atqe5CvIkMmmCN6ZU4=;
 b=NOxRLKwk9lV+XO2XUYMLHPUrfaXaHKcplQv3Zn/akMgYX8tDXhwtUv1IsL9IK+O7KS
 cp7j/orahuPqHf1gB5tQ7iXTO0X46LBgnNaF3rKZHu3nfZCYPgBgamcKsaL/1JvMGd0H
 YluxCYChQU+KrGgV/x6v1eDCqvxdZFIQarW3ejc8JpaXr9w35gVxF1BBIxfOhpa3IBdW
 FNWN+E1mhHA2i5gfPWzd5oNzIGUL+4HWFYtPY/aIuTZ7s28Pve4c+QJfMC6v2xWma9ho
 MFVPfzpNR/qm8WuK/pRwQbE9yUIszOPGK19EwxBbX15UgwsHCg+9bgK/GwwfigkCdANB
 NCVQ==
X-Gm-Message-State: AOAM530Q8kOQhtus09LMEaCaBMWoKZPjCEWFbx+HITmNOFyPCqEaTral
 P+SOAYzVDoJEvmELTX9Pm+w=
X-Google-Smtp-Source: ABdhPJz+8EENfAJQxUYtylKZLumC3ws3G5zLvmQ/zTTdS1oMgF3IbUen9wOAUn2ys36absYAjbGx1A==
X-Received: by 2002:a17:906:2692:: with SMTP id
 t18mr37085915ejc.16.1616019680203; 
 Wed, 17 Mar 2021 15:21:20 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:20 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 02/43] Staging: rtl8723bs: fix names in wlan_bssdef.h
Date: Wed, 17 Mar 2021 23:20:49 +0100
Message-Id: <20210317222130.29528-3-marcocesati@gmail.com>
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
in include/wlan_bssdef.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  4 +--
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |  6 ++--
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  2 +-
 .../staging/rtl8723bs/include/rtw_ioctl_set.h |  4 +--
 .../staging/rtl8723bs/include/rtw_security.h  |  2 +-
 .../staging/rtl8723bs/include/wlan_bssdef.h   | 28 +++++++++----------
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  4 +--
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  8 +++---
 9 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index e671ccfea964..2aaf25b48f96 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -760,7 +760,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct ht_priv 		*phtpriv = &pmlmepriv->htpriv;
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE ndis_network_mode = pnetwork->network.InfrastructureMode;
+	enum ndis_802_11_network_infrastructure ndis_network_mode = pnetwork->network.InfrastructureMode;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	u32 tmp_len;
@@ -914,7 +914,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 	return res;
 }
 
-u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype, bool enqueue)
+u8 rtw_setopmode_cmd(struct adapter  *padapter, enum ndis_802_11_network_infrastructure networktype, bool enqueue)
 {
 	struct	cmd_obj *ph2c;
 	struct	setopmode_parm *psetop;
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index c9418bfb2a00..211071e0254b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -401,11 +401,11 @@ u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_1
 }
 
 u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
+	enum ndis_802_11_network_infrastructure networktype)
 {
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct	wlan_network	*cur_network = &pmlmepriv->cur_network;
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE *pold_state = &(cur_network->network.InfrastructureMode);
+	enum ndis_802_11_network_infrastructure *pold_state = &(cur_network->network.InfrastructureMode);
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_notice_,
 		 ("+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\n",
@@ -539,7 +539,7 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 	return res;
 }
 
-u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum NDIS_802_11_AUTHENTICATION_MODE authmode)
+u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum ndis_802_11_authentication_mode authmode)
 {
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	int res;
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index a3d431af8d26..4df980f94327 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -63,7 +63,7 @@ void rtw_hal_dm_deinit(struct adapter *padapter)
 
 static void rtw_hal_init_opmode(struct adapter *padapter)
 {
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType = Ndis802_11InfrastructureMax;
+	enum ndis_802_11_network_infrastructure networkType = Ndis802_11InfrastructureMax;
 	struct  mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	signed int fw_state;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index b15a5abca17c..dd01c3c76584 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -826,7 +826,7 @@ extern u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8
 
 extern u8 rtw_joinbss_cmd(struct adapter *padapter, struct wlan_network *pnetwork);
 u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueue);
-extern u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype, bool enqueue);
+extern u8 rtw_setopmode_cmd(struct adapter  *padapter, enum ndis_802_11_network_infrastructure networktype, bool enqueue);
 extern u8 rtw_setdatarate_cmd(struct adapter  *padapter, u8 *rateset);
 extern u8 rtw_setrfintfs_cmd(struct adapter  *padapter, u8 mode);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
index 4db23b1c2d47..4b929b84040a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
@@ -16,12 +16,12 @@ struct BSSIDInfo {
 };
 
 
-u8 rtw_set_802_11_authentication_mode(struct adapter *pdapter, enum NDIS_802_11_AUTHENTICATION_MODE authmode);
+u8 rtw_set_802_11_authentication_mode(struct adapter *pdapter, enum ndis_802_11_authentication_mode authmode);
 u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid);
 u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep);
 u8 rtw_set_802_11_disassociate(struct adapter *padapter);
 u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_ssid *pssid, int ssid_max_num);
-u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
+u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter, enum ndis_802_11_network_infrastructure networktype);
 u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid);
 u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_11_ssid *ssid);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index 3f3fd19d61c3..8611dff1aa4a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -142,7 +142,7 @@ struct security_priv {
 
 
 	/* keeps the auth_type & enc_status from upper layer ioctl(wpa_supplicant or wzc) */
-	u32 ndisauthtype;	/*  enum NDIS_802_11_AUTHENTICATION_MODE */
+	u32 ndisauthtype;	/*  enum ndis_802_11_authentication_mode */
 	u32 ndisencryptstatus;	/*  NDIS_802_11_ENCRYPTION_STATUS */
 
 	struct wlan_bssid_ex sec_bss;  /* for joinbss (h2c buffer) usage */
diff --git a/drivers/staging/rtl8723bs/include/wlan_bssdef.h b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
index b9bc8ba21914..259835386597 100644
--- a/drivers/staging/rtl8723bs/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
@@ -24,7 +24,7 @@ struct ndis_802_11_ssid {
 	u8  Ssid[32];
 };
 
-enum NDIS_802_11_NETWORK_TYPE {
+enum ndis_802_11_network_type {
 	Ndis802_11FH,
 	Ndis802_11DS,
 	Ndis802_11OFDM5,
@@ -51,7 +51,7 @@ struct ndis_802_11_conf {
 	struct ndis_802_11_conf_fh    FHConfig;
 };
 
-enum NDIS_802_11_NETWORK_INFRASTRUCTURE {
+enum ndis_802_11_network_infrastructure {
 	Ndis802_11IBSS,
 	Ndis802_11Infrastructure,
 	Ndis802_11AutoUnknown,
@@ -74,13 +74,13 @@ struct ndis_80211_var_ie {
 /* Length is the 4 bytes multiples of the sum of
  * sizeof (NDIS_802_11_MAC_ADDRESS) + 2 +
  * sizeof (struct ndis_802_11_ssid) + sizeof (u32) +
- * sizeof (long) + sizeof (enum NDIS_802_11_NETWORK_TYPE) +
+ * sizeof (long) + sizeof (enum ndis_802_11_network_type) +
  * sizeof (struct ndis_802_11_conf) + sizeof (NDIS_802_11_RATES_EX) + IELength
  *
  * Except for IELength, all other fields are fixed length. Therefore, we can
  * define a macro to present the partial sum.
  */
-enum NDIS_802_11_AUTHENTICATION_MODE {
+enum ndis_802_11_authentication_mode {
 	Ndis802_11AuthModeOpen,
 	Ndis802_11AuthModeShared,
 	Ndis802_11AuthModeAutoSwitch,
@@ -91,7 +91,7 @@ enum NDIS_802_11_AUTHENTICATION_MODE {
 	Ndis802_11AuthModeMax   /*  Not a real mode, defined as upper bound */
 };
 
-enum NDIS_802_11_WEP_STATUS {
+enum ndis_802_11_wep_status {
 	Ndis802_11WEPEnabled,
 	Ndis802_11Encryption1Enabled = Ndis802_11WEPEnabled,
 	Ndis802_11WEPDisabled,
@@ -127,7 +127,7 @@ struct ndis_801_11_ai_resfi {
 	u16 AssociationId;
 };
 
-struct NDIS_802_11_ASSOCIATION_INFORMATION {
+struct ndis_802_11_association_information {
 	u32                   Length;
 	u16                  AvailableRequestFixedIEs;
 	struct ndis_802_11_ai_reqfi    RequestFixedIEs;
@@ -139,13 +139,13 @@ struct NDIS_802_11_ASSOCIATION_INFORMATION {
 	u32                   OffsetResponseIEs;
 };
 
-enum NDIS_802_11_RELOAD_DEFAULTS {
+enum ndis_802_11_reload_defaults {
 	Ndis802_11ReloadWEPKeys
 };
 
 
 /*  Key mapping keys require a BSSID */
-struct NDIS_802_11_KEY {
+struct ndis_802_11_key {
 	u32           Length;             /*  Length of this structure */
 	u32           KeyIndex;
 	u32           KeyLength;          /*  length of key in bytes */
@@ -154,7 +154,7 @@ struct NDIS_802_11_KEY {
 	u8           KeyMaterial[32];     /*  variable length depending on above field */
 };
 
-struct NDIS_802_11_REMOVE_KEY {
+struct ndis_802_11_remove_key {
 	u32                   Length;        /*  Length of this structure */
 	u32                   KeyIndex;
 	NDIS_802_11_MAC_ADDRESS BSSID;
@@ -211,9 +211,9 @@ struct wlan_bssid_ex {
 	struct ndis_802_11_ssid  Ssid;
 	u32  Privacy;
 	long  Rssi;/* in dBM, raw data , get from PHY) */
-	enum NDIS_802_11_NETWORK_TYPE  NetworkTypeInUse;
+	enum ndis_802_11_network_type  NetworkTypeInUse;
 	struct ndis_802_11_conf  Configuration;
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE  InfrastructureMode;
+	enum ndis_802_11_network_infrastructure  InfrastructureMode;
 	NDIS_802_11_RATES_EX  SupportedRates;
 	struct wlan_phy_info PhyInfo;
 	u32  IELength;
@@ -236,13 +236,13 @@ struct	wlan_network {
 	struct wlan_bcn_info	BcnInfo;
 };
 
-enum VRTL_CARRIER_SENSE {
+enum vrtl_carrier_sense {
 	DISABLE_VCS,
 	ENABLE_VCS,
 	AUTO_VCS
 };
 
-enum VCS_TYPE {
+enum vcs_type {
 	NONE_VCS,
 	RTS_CTS,
 	CTS_TO_SELF
@@ -254,7 +254,7 @@ enum VCS_TYPE {
 #define PWR_UAPSD 3
 #define PWR_VOIP 4
 
-enum UAPSD_MAX_SP {
+enum uapsd_max_sp {
 	NO_LIMIT,
 	TWO_MSDU,
 	FOUR_MSDU,
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 2ff71d001c07..685ecb45e742 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1274,7 +1274,7 @@ static int cfg80211_rtw_change_iface(struct wiphy *wiphy,
 				     struct vif_params *params)
 {
 	enum nl80211_iftype old_type;
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType;
+	enum ndis_802_11_network_infrastructure networkType;
 	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct wireless_dev *rtw_wdev = padapter->rtw_wdev;
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
@@ -2017,7 +2017,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 				 struct cfg80211_connect_params *sme)
 {
 	int ret = 0;
-	enum NDIS_802_11_AUTHENTICATION_MODE authmode;
+	enum ndis_802_11_authentication_mode authmode;
 	struct ndis_802_11_ssid ndis_ssid;
 	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index aac1391bdbf1..2d8da969fbda 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -817,7 +817,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
-	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType;
+	enum ndis_802_11_network_infrastructure networkType;
 	int ret = 0;
 
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
@@ -1103,7 +1103,7 @@ static int rtw_wx_set_wap(struct net_device *dev,
 	u8 *dst_bssid, *src_bssid;
 	struct __queue	*queue	= &(pmlmepriv->scanned_queue);
 	struct	wlan_network	*pnetwork = NULL;
-	enum NDIS_802_11_AUTHENTICATION_MODE	authmode;
+	enum ndis_802_11_authentication_mode	authmode;
 
 	rtw_ps_deny(padapter, PS_DENY_JOIN);
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
@@ -1469,7 +1469,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 	struct __queue *queue = &pmlmepriv->scanned_queue;
 	struct list_head *phead;
 	struct wlan_network *pnetwork = NULL;
-	enum NDIS_802_11_AUTHENTICATION_MODE authmode;
+	enum ndis_802_11_authentication_mode authmode;
 	struct ndis_802_11_ssid ndis_ssid;
 	u8 *dst_ssid, *src_ssid;
 
@@ -1807,7 +1807,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	u32 key, ret = 0;
 	u32 keyindex_provided;
 	struct ndis_802_11_wep	 wep;
-	enum NDIS_802_11_AUTHENTICATION_MODE authmode;
+	enum ndis_802_11_authentication_mode authmode;
 
 	struct iw_point *erq = &(wrqu->encoding);
 	struct adapter *padapter = rtw_netdev_priv(dev);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
