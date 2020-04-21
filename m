Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAC51B2E1B
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Apr 2020 19:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D982D87F9F;
	Tue, 21 Apr 2020 17:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oem0PM9mPT5B; Tue, 21 Apr 2020 17:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEA2087E07;
	Tue, 21 Apr 2020 17:18:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA9591BF35D
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 17:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D079D86D91
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 17:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iWM6aaKSuxN9 for <devel@linuxdriverproject.org>;
 Tue, 21 Apr 2020 17:18:09 +0000 (UTC)
X-Greylist: delayed 00:09:56 by SQLgrey-1.7.6
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.45])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01976863DE
 for <devel@driverdev.osuosl.org>; Tue, 21 Apr 2020 17:18:08 +0000 (UTC)
Received: from localhost.localdomain (unknown [188.123.230.157])
 by mail.ispras.ru (Postfix) with ESMTPSA id C2F80CD468;
 Tue, 21 Apr 2020 20:08:10 +0300 (MSK)
From: Denis Straghkov <d.straghkov@ispras.ru>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: rtw_wlan_util: Add size check of SSID IE
Date: Tue, 21 Apr 2020 20:08:06 +0300
Message-Id: <20200421170806.18783-1-d.straghkov@ispras.ru>
X-Mailer: git-send-email 2.17.1
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
 Denis Straghkov <d.straghkov@ispras.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add size check of SSID information element in incoming 802.11
frames, to prevent memcpy() of IE in array bssid->Ssid.Ssid, with
size more than 32 bytes.

Signed-off-by: Denis Straghkov <d.straghkov@ispras.ru>
---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 110338dbe372..08eb09e29015 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1271,13 +1271,13 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	unsigned char *pbuf;
 	u32 wpa_ielen = 0;
 	u8 *pbssid = GetAddr3Ptr(pframe);
-	u32 hidden_ssid = 0;
 	struct HT_info_element *pht_info = NULL;
 	struct rtw_ieee80211_ht_cap *pht_cap = NULL;
 	u32 bcn_channel;
 	unsigned short	ht_cap_info;
 	unsigned char ht_info_infos_0;
 	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
+	int ssid_len;
 
 	if (is_client_associated_to_ap(Adapter) == false)
 		return true;
@@ -1370,21 +1370,15 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	}
 
 	/* checking SSID */
+	ssid_len = 0;
 	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _SSID_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
-	if (!p) {
-		DBG_871X("%s marc: cannot find SSID for survey event\n", __func__);
-		hidden_ssid = true;
-	} else {
-		hidden_ssid = false;
-	}
-
-	if ((NULL != p) && (false == hidden_ssid && (*(p + 1)))) {
-		memcpy(bssid->Ssid.Ssid, (p + 2), *(p + 1));
-		bssid->Ssid.SsidLength = *(p + 1);
-	} else {
-		bssid->Ssid.SsidLength = 0;
-		bssid->Ssid.Ssid[0] = '\0';
-	}
+        if (p) {
+                ssid_len = *(p + 1);
+                if (ssid_len > NDIS_802_11_LENGTH_SSID)
+                        ssid_len = 0;
+        }
+        memcpy(bssid->Ssid.Ssid, (p + 2), ssid_len);
+        bssid->Ssid.SsidLength = ssid_len;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s bssid.Ssid.Ssid:%s bssid.Ssid.SsidLength:%d "
 				"cur_network->network.Ssid.Ssid:%s len:%d\n", __func__, bssid->Ssid.Ssid,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
