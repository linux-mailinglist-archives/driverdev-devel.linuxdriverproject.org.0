Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5360B28A801
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Oct 2020 17:42:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A2365204F4;
	Sun, 11 Oct 2020 15:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JOKp3Jgqc8pJ; Sun, 11 Oct 2020 15:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6706204EF;
	Sun, 11 Oct 2020 15:42:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5E91BF424
 for <devel@linuxdriverproject.org>; Sun, 11 Oct 2020 15:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F612204B8
 for <devel@linuxdriverproject.org>; Sun, 11 Oct 2020 15:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DN8oD8HJlNRF for <devel@linuxdriverproject.org>;
 Sun, 11 Oct 2020 15:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1042E2001E
 for <devel@driverdev.osuosl.org>; Sun, 11 Oct 2020 15:42:28 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id r127so15764981lff.12
 for <devel@driverdev.osuosl.org>; Sun, 11 Oct 2020 08:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QMLAHju+kvWEPvDHxJkNniYMfokOJScdqA1ZYwiN5E0=;
 b=ArfS4/3VKz2BZXvYlBegi38jPeC+wJmvqFBmMoeb6dsqyQuvElf74khdC+ahVekHWh
 BO2F9nIYGsNxERwxD3+/cgayt7i/tbx47KE/K2RqoBULDv5wF+5hMKD5Xj/jy1KeKjtY
 5IuieyxclLC8TU8YnnteIcNPrHWGFNTAMYhHGvXBaPe49vuLCsrEZ7lRIb5PqIT5ttzp
 mzFUOkMTmut1VIVpu9Y1/C9bdLz/t1vvM+L1pyDoY6X0c7AAyLeZQzXl7qDTjcrkFtFo
 CPjvfKXwYdUXveYTdPmlEcEJh00tOg+2KOOrC3P7FVL9inFdJUGFiiB3lGhmCnOHkm+X
 dHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QMLAHju+kvWEPvDHxJkNniYMfokOJScdqA1ZYwiN5E0=;
 b=sD9DVKg0bC+gtwV7nKC6QnIsbnW8YUOPIj6lfI6mjo4If5hkayOjn2euULrs7QDeyn
 YDn6zKnA8DMRD9Lm62fx+VJX+YagphHnBql4MSjk/jW3dZcqh6fsI/m3zUPzLqrGmbW8
 RfRK1ud6VcwPctSlsNPCkEEESxzLbzKTKhg+iy2d77OgCID0cCZawt8XSkR+Tqa4594s
 BnKTnJG8C6taUor7EDABlRhqhKd0WRbSDQXSCMD7u5ilhk5nNN/Z2ESAjmeTAP5benX4
 1ikHKdxcAVMy5L8aH35bqrVHy1BB7wm0aGzn928fWNN6Thecmx9gIAK+Nti+lD+3UMTz
 7K7g==
X-Gm-Message-State: AOAM530+WSIPzVH1SdO3wKPl2tSgsc4FyT1QKT7APj2EH0/4E5DbRXur
 SREcbSOFTUa0/g0VrbggCBw=
X-Google-Smtp-Source: ABdhPJyZS/ky0hxBCfbnYgz5crylYolW3sItCXxh6gUKxzpPsbUrPJVVDTyvNxYaTQpfl+10Xl92Sg==
X-Received: by 2002:ac2:46f2:: with SMTP id q18mr6578502lfo.124.1602430945699; 
 Sun, 11 Oct 2020 08:42:25 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id c20sm2624090lfg.15.2020.10.11.08.42.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Oct 2020 08:42:24 -0700 (PDT)
Received: (nullmailer pid 13586 invoked by uid 1000);
 Sun, 11 Oct 2020 15:47:56 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: remove unnecessary type cast of
 rtw_netdev_priv() result
Date: Sun, 11 Oct 2020 18:47:16 +0300
Message-Id: <20201011154715.13445-1-insafonov@gmail.com>
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
 Denis Straghkov <d.straghkov@ispras.ru>, linux-kernel@vger.kernel.org,
 John Oldman <john.oldman@polehill.co.uk>, Lukasz Szczesny <luk@wybcz.pl>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The type cast
padapter = (struct adapter *)rtw_netdev_priv(dev);
do nothing because type of rtw_netdev_priv() result
is (struct adapter *).

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |   6 +-
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  50 ++++----
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 116 +++++++++---------
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  12 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c |   2 +-
 5 files changed, 93 insertions(+), 93 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 372ce17c3569..e3e8140eec9e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -2010,7 +2010,7 @@ int rtw_get_gpio(struct net_device *netdev, int gpio_num)
 {
 	u8 value;
 	u8 direction;
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(netdev);
+	struct adapter *adapter = rtw_netdev_priv(netdev);
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(adapter);
 
 	rtw_ps_deny(adapter, PS_DENY_IOCTL);
@@ -2038,7 +2038,7 @@ int  rtw_set_gpio_output_value(struct net_device *netdev, int gpio_num, bool isH
 {
 	u8 direction = 0;
 	u8 res = -1;
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(netdev);
+	struct adapter *adapter = rtw_netdev_priv(netdev);
 
 	/* Check GPIO is 4~7 */
 	if (gpio_num > 7 || gpio_num < 4) {
@@ -2074,7 +2074,7 @@ EXPORT_SYMBOL(rtw_set_gpio_output_value);
 
 int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput)
 {
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(netdev);
+	struct adapter *adapter = rtw_netdev_priv(netdev);
 
 	if (gpio_num > 7 || gpio_num < 4) {
 		DBG_871X("%s The gpio number does not included 4~7.\n", __func__);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index ea3ae3d38337..9bb97c39f1a2 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -561,7 +561,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 	int ret = 0;
 	u32 wep_key_idx, wep_key_len;
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv* psecuritypriv =  &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -847,7 +847,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 {
 	int ret = 0;
 	u32 wep_key_idx, wep_key_len;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
@@ -1039,7 +1039,7 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 	u32 param_len;
 	struct ieee_param *param = NULL;
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	DBG_871X(FUNC_NDEV_FMT" adding key for %pM\n", FUNC_NDEV_ARG(ndev), mac_addr);
@@ -1149,7 +1149,7 @@ static int cfg80211_rtw_get_key(struct wiphy *wiphy, struct net_device *ndev,
 static int cfg80211_rtw_del_key(struct wiphy *wiphy, struct net_device *ndev,
 				u8 key_index, bool pairwise, const u8 *mac_addr)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
 	DBG_871X(FUNC_NDEV_FMT" key_index =%d\n", FUNC_NDEV_ARG(ndev), key_index);
@@ -1168,7 +1168,7 @@ static int cfg80211_rtw_set_default_key(struct wiphy *wiphy,
 	, bool unicast, bool multicast
 	)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
 	DBG_871X(FUNC_NDEV_FMT" key_index =%d, unicast =%d, multicast =%d\n",
@@ -1201,7 +1201,7 @@ static int cfg80211_rtw_get_station(struct wiphy *wiphy,
 				struct station_info *sinfo)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -1275,7 +1275,7 @@ static int cfg80211_rtw_change_iface(struct wiphy *wiphy,
 {
 	enum nl80211_iftype old_type;
 	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct wireless_dev *rtw_wdev = padapter->rtw_wdev;
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	int ret = 0;
@@ -1502,7 +1502,7 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 		goto exit;
 	}
 
-	padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	padapter = rtw_netdev_priv(ndev);
 	pwdev_priv = adapter_wdev_data(padapter);
 	pmlmepriv = &padapter->mlmepriv;
 
@@ -1938,7 +1938,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 static int cfg80211_rtw_join_ibss(struct wiphy *wiphy, struct net_device *ndev,
 				  struct cfg80211_ibss_params *params)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct ndis_802_11_ssid ndis_ssid;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1993,7 +1993,7 @@ static int cfg80211_rtw_join_ibss(struct wiphy *wiphy, struct net_device *ndev,
 
 static int cfg80211_rtw_leave_ibss(struct wiphy *wiphy, struct net_device *ndev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct wireless_dev *rtw_wdev = padapter->rtw_wdev;
 	enum nl80211_iftype old_type;
 	int ret = 0;
@@ -2030,7 +2030,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 	int ret = 0;
 	enum NDIS_802_11_AUTHENTICATION_MODE authmode;
 	struct ndis_802_11_ssid ndis_ssid;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
@@ -2214,7 +2214,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 static int cfg80211_rtw_disconnect(struct wiphy *wiphy, struct net_device *ndev,
 				   u16 reason_code)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
@@ -2264,7 +2264,7 @@ static int cfg80211_rtw_set_power_mgmt(struct wiphy *wiphy,
 				       struct net_device *ndev,
 				       bool enabled, int timeout)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct rtw_wdev_priv *rtw_wdev_priv = adapter_wdev_data(padapter);
 
 	DBG_871X(FUNC_NDEV_FMT" enabled:%u, timeout:%d\n", FUNC_NDEV_ARG(ndev),
@@ -2283,7 +2283,7 @@ static int cfg80211_rtw_set_pmksa(struct wiphy *wiphy,
 				  struct cfg80211_pmksa *pmksa)
 {
 	u8 index, blInserted = false;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 
@@ -2336,7 +2336,7 @@ static int cfg80211_rtw_del_pmksa(struct wiphy *wiphy,
 				  struct cfg80211_pmksa *pmksa)
 {
 	u8 index, bMatched = false;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
@@ -2366,7 +2366,7 @@ static int cfg80211_rtw_del_pmksa(struct wiphy *wiphy,
 static int cfg80211_rtw_flush_pmksa(struct wiphy *wiphy,
 				    struct net_device *ndev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
@@ -2421,7 +2421,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 	unsigned char dst_mac_addr[6];
 	struct ieee80211_hdr *dot11_hdr;
 	struct ieee80211_radiotap_header *rtap_hdr;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
@@ -2691,7 +2691,7 @@ static int cfg80211_rtw_del_virtual_intf(struct wiphy *wiphy,
 		goto exit;
 	}
 
-	adapter = (struct adapter *)rtw_netdev_priv(ndev);
+	adapter = rtw_netdev_priv(ndev);
 	pwdev_priv = adapter_wdev_data(adapter);
 
 	unregister_netdevice(ndev);
@@ -2757,7 +2757,7 @@ static int cfg80211_rtw_start_ap(struct wiphy *wiphy, struct net_device *ndev,
 								struct cfg80211_ap_settings *settings)
 {
 	int ret = 0;
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *adapter = rtw_netdev_priv(ndev);
 
 	DBG_871X(FUNC_NDEV_FMT" hidden_ssid:%d, auth_type:%d\n", FUNC_NDEV_ARG(ndev),
 		settings->hidden_ssid, settings->auth_type);
@@ -2783,7 +2783,7 @@ static int cfg80211_rtw_start_ap(struct wiphy *wiphy, struct net_device *ndev,
 static int cfg80211_rtw_change_beacon(struct wiphy *wiphy, struct net_device *ndev,
                                 struct cfg80211_beacon_data *info)
 {
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *adapter = rtw_netdev_priv(ndev);
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
@@ -2812,7 +2812,7 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 	struct list_head	*phead, *plist;
 	u8 updated = false;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	const u8 *mac = params->mac;
@@ -2927,7 +2927,7 @@ static int	cfg80211_rtw_dump_station(struct wiphy *wiphy, struct net_device *nde
 {
 
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	struct adapter *padapter = rtw_netdev_priv(ndev);
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
@@ -3080,7 +3080,7 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 		goto exit;
 	}
 
-	padapter = (struct adapter *)rtw_netdev_priv(ndev);
+	padapter = rtw_netdev_priv(ndev);
 	pwdev_priv = adapter_wdev_data(padapter);
 
 	/* cookie generation */
@@ -3152,7 +3152,7 @@ static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy,
 		struct net_device *dev,
 		struct cfg80211_sched_scan_request *request) {
 
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	int ret;
 
@@ -3468,7 +3468,7 @@ void rtw_wdev_unregister(struct wireless_dev *wdev)
 	if (!(ndev = wdev_to_ndev(wdev)))
 		return;
 
-	adapter = (struct adapter *)rtw_netdev_priv(ndev);
+	adapter = rtw_netdev_priv(ndev);
 	pwdev_priv = adapter_wdev_data(adapter);
 
 	rtw_cfg80211_indicate_scan_done(adapter, true);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 902ac8169948..68c1a8d0b7ba 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -387,7 +387,7 @@ static char *translate_scan(struct adapter *padapter,
 
 static int wpa_set_auth_algs(struct net_device *dev, u32 value)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	int ret = 0;
 
 	if ((value & WLAN_AUTH_SHARED_KEY) && (value & WLAN_AUTH_OPEN)) {
@@ -424,7 +424,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	int ret = 0;
 	u32 wep_key_idx, wep_key_len, wep_total_len;
 	struct ndis_802_11_wep	 *pwep = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
@@ -759,7 +759,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 ht_ielen = 0;
 	char *p;
 	u8 ht_cap = false, vht_cap = false;
@@ -823,7 +823,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -845,7 +845,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType;
 	int ret = 0;
 
@@ -911,7 +911,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_get_mode\n"));
@@ -934,7 +934,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	                     struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u8          j, blInserted = false;
 	int         intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -1023,7 +1023,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 				union iwreq_data *wrqu, char *extra)
 {
 	struct iw_range *range = (struct iw_range *)extra;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 	u16 val;
@@ -1126,7 +1126,7 @@ static int rtw_wx_set_wap(struct net_device *dev,
 			 char *extra)
 {
 	uint ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct sockaddr *temp = (struct sockaddr *)awrq;
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct list_head	*phead;
@@ -1200,7 +1200,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 			    union iwreq_data *wrqu, char *extra)
 {
 
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -1227,7 +1227,7 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 {
 	int ret = 0;
 	u16 reason;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_mlme *mlme = (struct iw_mlme *)extra;
 
 
@@ -1261,7 +1261,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 {
 	u8 _status = false;
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ndis_802_11_ssid ssid[RTW_SSID_SCAN_AMOUNT];
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_set_scan\n"));
@@ -1416,7 +1416,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *extra)
 {
 	struct list_head					*plist, *phead;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct __queue				*queue	= &(pmlmepriv->scanned_queue);
 	struct	wlan_network	*pnetwork = NULL;
@@ -1494,7 +1494,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 			      struct iw_request_info *a,
 			      union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct __queue *queue = &pmlmepriv->scanned_queue;
 	struct list_head *phead;
@@ -1617,7 +1617,7 @@ static int rtw_wx_get_essid(struct net_device *dev,
 			      union iwreq_data *wrqu, char *extra)
 {
 	u32 len, ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -1646,7 +1646,7 @@ static int rtw_wx_set_rate(struct net_device *dev,
 			      union iwreq_data *wrqu, char *extra)
 {
 	int	i, ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u8 datarates[NumRates];
 	u32 target_rate = wrqu->bitrate.value;
 	u32 fixed = wrqu->bitrate.fixed;
@@ -1731,7 +1731,7 @@ static int rtw_wx_get_rate(struct net_device *dev,
 {
 	u16 max_rate = 0;
 
-	max_rate = rtw_get_cur_max_rate((struct adapter *)rtw_netdev_priv(dev));
+	max_rate = rtw_get_cur_max_rate(rtw_netdev_priv(dev));
 
 	if (max_rate == 0)
 		return -EPERM;
@@ -1746,7 +1746,7 @@ static int rtw_wx_set_rts(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	if (wrqu->rts.disabled)
 		padapter->registrypriv.rts_thresh = 2347;
@@ -1767,7 +1767,7 @@ static int rtw_wx_get_rts(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	DBG_871X("%s, rts_thresh =%d\n", __func__, padapter->registrypriv.rts_thresh);
 
@@ -1782,7 +1782,7 @@ static int rtw_wx_set_frag(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	if (wrqu->frag.disabled)
 		padapter->xmitpriv.frag_len = MAX_FRAG_THRESHOLD;
@@ -1804,7 +1804,7 @@ static int rtw_wx_get_frag(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	DBG_871X("%s, frag_len =%d\n", __func__, padapter->xmitpriv.frag_len);
 
@@ -1819,7 +1819,7 @@ static int rtw_wx_get_retry(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	/* struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev); */
+	/* struct adapter *padapter = rtw_netdev_priv(dev); */
 
 
 	wrqu->retry.value = 7;
@@ -1840,7 +1840,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	enum NDIS_802_11_AUTHENTICATION_MODE authmode;
 
 	struct iw_point *erq = &(wrqu->encoding);
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	DBG_871X("+rtw_wx_set_enc, flags = 0x%x\n", erq->flags);
 
@@ -1953,7 +1953,7 @@ static int rtw_wx_get_enc(struct net_device *dev,
 			    union iwreq_data *wrqu, char *keybuf)
 {
 	uint key, ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_point *erq = &(wrqu->encoding);
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
@@ -2023,7 +2023,7 @@ static int rtw_wx_get_power(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	/* struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev); */
+	/* struct adapter *padapter = rtw_netdev_priv(dev); */
 
 	wrqu->power.value = 0;
 	wrqu->power.fixed = 0;	/* no auto select */
@@ -2036,7 +2036,7 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	return rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
 }
@@ -2045,7 +2045,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 			   struct iw_request_info *info,
 			   union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_param *param = (struct iw_param *)&(wrqu->param);
 	int ret = 0;
 
@@ -2210,7 +2210,7 @@ static int rtw_wx_get_nick(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	/* struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev); */
+	/* struct adapter *padapter = rtw_netdev_priv(dev); */
 	 /* struct mlme_priv *pmlmepriv = &(padapter->mlmepriv); */
 	 /* struct security_priv *psecuritypriv = &padapter->securitypriv; */
 
@@ -2237,7 +2237,7 @@ static int rtw_wx_read32(struct net_device *dev,
 
 
 	ret = 0;
-	padapter = (struct adapter *)rtw_netdev_priv(dev);
+	padapter = rtw_netdev_priv(dev);
 	p = &wrqu->data;
 	len = p->length;
 	if (0 == len)
@@ -2286,7 +2286,7 @@ static int rtw_wx_write32(struct net_device *dev,
                             struct iw_request_info *info,
                             union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	u32 addr;
 	u32 data32;
@@ -2323,7 +2323,7 @@ static int rtw_wx_read_rf(struct net_device *dev,
                             struct iw_request_info *info,
                             union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 path, addr, data32;
 
 
@@ -2344,7 +2344,7 @@ static int rtw_wx_write_rf(struct net_device *dev,
                             struct iw_request_info *info,
                             union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 path, addr, data32;
 
 
@@ -2366,7 +2366,7 @@ static int rtw_wx_priv_null(struct net_device *dev, struct iw_request_info *a,
 static int dummy(struct net_device *dev, struct iw_request_info *a,
 		 union iwreq_data *wrqu, char *b)
 {
-	/* struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev); */
+	/* struct adapter *padapter = rtw_netdev_priv(dev); */
 	/* struct mlme_priv *pmlmepriv = &(padapter->mlmepriv); */
 
 	/* DBG_871X("cmd_code =%x, fwstate = 0x%x\n", a->cmd, get_fwstate(pmlmepriv)); */
@@ -2379,7 +2379,7 @@ static int rtw_wx_set_channel_plan(struct net_device *dev,
                                struct iw_request_info *info,
                                union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u8 channel_plan_req = (u8)(*((int *)wrqu));
 
 	if (_SUCCESS == rtw_set_chplan_cmd(padapter, channel_plan_req, 1, 1))
@@ -2437,7 +2437,7 @@ static int rtw_get_ap_info(struct net_device *dev,
 	u8 bssid[ETH_ALEN];
 	char data[32];
 	struct wlan_network *pnetwork = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct __queue *queue = &(pmlmepriv->scanned_queue);
 	struct iw_point *pdata = &wrqu->data;
@@ -2558,7 +2558,7 @@ static int rtw_wps_start(struct net_device *dev,
 {
 
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_point *pdata = &wrqu->data;
 	u32   u32wps_start = 0;
 
@@ -2666,7 +2666,7 @@ static int rtw_dbg_port(struct net_device *dev,
 	u16 arg;
 	u32 extra_arg, *pdata, val32;
 	struct sta_info *psta;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
@@ -3249,7 +3249,7 @@ static int rtw_dbg_port(struct net_device *dev,
 static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 {
 	uint ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	switch (name) {
 	case IEEE_PARAM_WPA_ENABLED:
@@ -3342,7 +3342,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 static int wpa_mlme(struct net_device *dev, u32 command, u32 reason)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	switch (command) {
 	case IEEE_MLME_STA_DEAUTH:
@@ -3395,7 +3395,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 
 	case IEEE_CMD_SET_WPA_IE:
 		/* ret = wpa_set_wpa_ie(dev, param, p->length); */
-		ret =  rtw_set_wpa_ie((struct adapter *)rtw_netdev_priv(dev), (char *)param->u.wpa_ie.data, (u16)param->u.wpa_ie.len);
+		ret =  rtw_set_wpa_ie(rtw_netdev_priv(dev), (char *)param->u.wpa_ie.data, (u16)param->u.wpa_ie.len);
 		break;
 
 	case IEEE_CMD_SET_ENCRYPTION:
@@ -3428,7 +3428,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	u32 wep_key_idx, wep_key_len, wep_total_len;
 	struct ndis_802_11_wep	 *pwep = NULL;
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv* psecuritypriv = &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -3695,7 +3695,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	unsigned char *pbuf = param->u.bcn_ie.buf;
@@ -3727,7 +3727,7 @@ static void rtw_hostapd_sta_flush(struct net_device *dev)
 	/* _irqL irqL; */
 	/* struct list_head	*phead, *plist; */
 	/* struct sta_info *psta = NULL; */
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	/* struct sta_priv *pstapriv = &padapter->stapriv; */
 
 	DBG_871X("%s\n", __func__);
@@ -3741,7 +3741,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -3816,7 +3816,7 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -3865,7 +3865,7 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct ieee_param_ex *param_ex = (struct ieee_param_ex *)param;
@@ -3928,7 +3928,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -3972,7 +3972,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 {
 	int ret = 0;
 	unsigned char wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	int ie_len;
@@ -4011,7 +4011,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	int ie_len;
 
@@ -4044,7 +4044,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	int ie_len;
 
@@ -4078,7 +4078,7 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *adapter = rtw_netdev_priv(dev);
 	struct mlme_priv *mlmepriv = &(adapter->mlmepriv);
 	struct mlme_ext_priv *mlmeext = &(adapter->mlmeextpriv);
 	struct mlme_ext_info *mlmeinfo = &(mlmeext->mlmext_info);
@@ -4131,7 +4131,7 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
@@ -4150,7 +4150,7 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
 
 static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
@@ -4169,7 +4169,7 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
 static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
@@ -4184,7 +4184,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 {
 	struct ieee_param *param;
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	/* DBG_871X("%s\n", __func__); */
 
@@ -4323,7 +4323,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 	int len = 0;
 	char *ext;
 
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_point *dwrq = (struct iw_point *)awrq;
 
 	/* RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_notice_, ("+rtw_wx_set_priv\n")); */
@@ -4414,7 +4414,7 @@ static int rtw_pm_set(struct net_device *dev,
 {
 	int ret = 0;
 	unsigned	mode = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	DBG_871X("[%s] extra = %s\n", __func__, extra);
 
@@ -4722,7 +4722,7 @@ static iw_handler rtw_private_handler[] = {
 
 static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_statistics *piwstats = &padapter->iwstats;
 	int tmp_level = 0;
 	int tmp_qual = 0;
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 27f990a01a23..dac466bba066 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -310,7 +310,7 @@ static void loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct sockaddr *addr = p;
 
 	if (!padapter->bup) {
@@ -326,7 +326,7 @@ static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 
 static struct net_device_stats *rtw_net_get_stats(struct net_device *pnetdev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
 	struct recv_priv *precvpriv = &(padapter->recvpriv);
 
@@ -889,7 +889,7 @@ int rtw_drv_register_netdev(struct adapter *if1)
 int _netdev_open(struct net_device *pnetdev)
 {
 	uint status;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+871x_drv - dev_open\n"));
@@ -961,7 +961,7 @@ int _netdev_open(struct net_device *pnetdev)
 int netdev_open(struct net_device *pnetdev)
 {
 	int ret;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);
 
 	if (pwrctrlpriv->bInSuspend) {
@@ -1050,7 +1050,7 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 {
 	int status = -1;
 
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 
 	if (bnormal) {
 		if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->hw_init_mutex)) == 0) {
@@ -1066,7 +1066,7 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 
 static int netdev_close(struct net_device *pnetdev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+871x_drv - drv_close\n"));
diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index fec8a8caaa46..cf7a3f4b8d8b 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -201,7 +201,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	s32 res = 0;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
