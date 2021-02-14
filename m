Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFF031B013
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 11:29:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EE768698C;
	Sun, 14 Feb 2021 10:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UeixGFO8v6Oi; Sun, 14 Feb 2021 10:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD82686948;
	Sun, 14 Feb 2021 10:29:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4261BF3DB
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 10:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35CD4868DA
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 10:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MtHdmQ0rCXwB
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 10:29:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 230F9868C3
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 10:29:11 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id h67so266874wmh.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 02:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=piPRYGmJscMe4DmZidcBbVydk/59uhd0GTC8oxYrasc=;
 b=ozBbvpb0cKSrE+wRzajvGM3OILJW0dRswVR3OZljw4/hkww9QR/n4dQJnHSvwwCimY
 momah/B7v4rIcR57JGzD2VsAkSo7YUNDcBVAyfJUEbl8ruCdu1EegiPtuUP9Q/xRehcC
 z5Et2YA3abB2OZqkcbv531DMAb1dJQvc+ZU9ClTMqgH/lmoANXX10OBy4hFdUXiAxmaX
 UplMnHfCrxlYOS2js6wdYunPcInap8ybNtnwdGaKiJgRZgvPCGe6GJmiRk8xoD+A4ceT
 nz1BPIG3Q4anMmX+IenOrxe8fbtI7wnfgGuQZXl0tXX5iiZu92wQYogDp3yV5qIF69lh
 DT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=piPRYGmJscMe4DmZidcBbVydk/59uhd0GTC8oxYrasc=;
 b=URfthFZx0NpfaVbfRlu2khIAKFff+8TIO9zZjg6n9JURKXvSfIFbiWTkiXzFs3SROO
 H8FMfOFJqfOpN+BO8psEpf3Ti2Tcv3cqGLtvS5/kfKuQZKRb0Vdvs9wbH4DHhGe1vTG9
 jxX1HuWxvqoVTERTHRVXGiyrd4bbNSACdMFB+9H39MZb2ELRRhxtIGNrykUa4iQJpOjZ
 yC2gpQ6B1qSy2jHNGQLuYYZ+z/pvNCWoHIJVSbVOTG8tdfWjDBmAyS2sZkKi2zkrgyla
 GGQBkgtV6vr361qjTomZiqlGOtu2uO8zPoHzKdwNABUrfKntuiV86hZ7FXivujgGp4Vk
 DE7A==
X-Gm-Message-State: AOAM533dVH4/VX21fQE3kexbcolTmVEpWoSYP1Fu/lz7KVy8CJ0PLi32
 qxWiFpimWyVg5w3rYx7HdOc=
X-Google-Smtp-Source: ABdhPJxJlqaTCPgLE8zPy1u0g5lcpD87EqxN/KkStGYEzSb4oXqTugFx41UQs9Q3yDMg+bS5X3I0UA==
X-Received: by 2002:a7b:cb8c:: with SMTP id m12mr2661619wmi.1.1613298549527;
 Sun, 14 Feb 2021 02:29:09 -0800 (PST)
Received: from localhost.localdomain ([106.51.142.63])
 by smtp.gmail.com with ESMTPSA id j17sm19923263wmc.28.2021.02.14.02.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Feb 2021 02:29:09 -0800 (PST)
From: Shreesh Adiga <16567adigashreesh@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: [PATCH] staging: rtl8712: cleanup checkpatch.pl warnings
Date: Sun, 14 Feb 2021 15:56:01 +0530
Message-Id: <20210214102601.509326-1-16567adigashreesh@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup warnings displayed by checkpatch.pl for the
file rtl8171x_mlme.c for the below warning:
WARNING: Avoid multiple line dereference

Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 112 +++++++++----------------
 1 file changed, 39 insertions(+), 73 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 6074383ec0b5..91d32c3d4866 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -433,8 +433,7 @@ static int is_desired_network(struct _adapter *adapter,
 		bselected = false;
 	if (check_fwstate(&adapter->mlmepriv, WIFI_ADHOC_STATE)) {
 		if (pnetwork->network.InfrastructureMode !=
-			adapter->mlmepriv.cur_network.network.
-			InfrastructureMode)
+		    adapter->mlmepriv.cur_network.network.InfrastructureMode)
 			bselected = false;
 	}
 	return bselected;
@@ -540,19 +539,15 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 				} else {
 					struct wlan_bssid_ex *pdev_network =
 					  &(adapter->registrypriv.dev_network);
-					u8 *pibss =
-						 adapter->registrypriv.
-							dev_network.MacAddress;
+					u8 *pibss = adapter->registrypriv.dev_network.MacAddress;
+
 					pmlmepriv->fw_state ^= _FW_UNDER_SURVEY;
 					memcpy(&pdev_network->Ssid,
-						&pmlmepriv->assoc_ssid,
-						sizeof(struct
-							 ndis_802_11_ssid));
-					r8712_update_registrypriv_dev_network
-						(adapter);
+					       &pmlmepriv->assoc_ssid,
+					       sizeof(struct ndis_802_11_ssid));
+					r8712_update_registrypriv_dev_network(adapter);
 					r8712_generate_random_ibss(pibss);
-					pmlmepriv->fw_state =
-						 WIFI_ADHOC_MASTER_STATE;
+					pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;
 					pmlmepriv->to_join = false;
 				}
 			}
@@ -691,11 +686,9 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 	pnetwork->network.Configuration.DSConfig =
 		 le32_to_cpu(pnetwork->network.Configuration.DSConfig);
 	pnetwork->network.Configuration.FHConfig.DwellTime =
-		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.
-			     DwellTime);
+		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.DwellTime);
 	pnetwork->network.Configuration.FHConfig.HopPattern =
-		 le32_to_cpu(pnetwork->network.Configuration.
-			     FHConfig.HopPattern);
+		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.HopPattern);
 	pnetwork->network.Configuration.FHConfig.HopSet =
 		 le32_to_cpu(pnetwork->network.Configuration.FHConfig.HopSet);
 	pnetwork->network.Configuration.FHConfig.Length =
@@ -720,36 +713,29 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 			if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 				if (the_same_macaddr) {
 					ptarget_wlan =
-					    r8712_find_network(&pmlmepriv->
-					    scanned_queue,
-					    cur_network->network.MacAddress);
+					    r8712_find_network(&pmlmepriv->scanned_queue,
+							       cur_network->network.MacAddress);
 				} else {
 					pcur_wlan =
-					     r8712_find_network(&pmlmepriv->
-					     scanned_queue,
-					     cur_network->network.MacAddress);
+					     r8712_find_network(&pmlmepriv->scanned_queue,
+								cur_network->network.MacAddress);
 					pcur_wlan->fixed = false;
 
 					pcur_sta = r8712_get_stainfo(pstapriv,
 					     cur_network->network.MacAddress);
-					spin_lock_irqsave(&pstapriv->
-						sta_hash_lock, irqL2);
+					spin_lock_irqsave(&pstapriv->sta_hash_lock, irqL2);
 					r8712_free_stainfo(adapter, pcur_sta);
-					spin_unlock_irqrestore(&(pstapriv->
-						sta_hash_lock), irqL2);
+					spin_unlock_irqrestore(&(pstapriv->sta_hash_lock), irqL2);
 
 					ptarget_wlan =
-						 r8712_find_network(&pmlmepriv->
-						 scanned_queue,
-						 pnetwork->network.
-						 MacAddress);
+						 r8712_find_network(&pmlmepriv->scanned_queue,
+								    pnetwork->network.MacAddress);
 					if (ptarget_wlan)
 						ptarget_wlan->fixed = true;
 				}
 			} else {
-				ptarget_wlan = r8712_find_network(&pmlmepriv->
-						scanned_queue,
-						pnetwork->network.MacAddress);
+				ptarget_wlan = r8712_find_network(&pmlmepriv->scanned_queue,
+								  pnetwork->network.MacAddress);
 				if (ptarget_wlan)
 					ptarget_wlan->fixed = true;
 			}
@@ -781,40 +767,23 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 					ptarget_sta->aid = pnetwork->join_res;
 					ptarget_sta->qos_option = 1;
 					ptarget_sta->mac_id = 5;
-					if (adapter->securitypriv.
-					    AuthAlgrthm == 2) {
-						adapter->securitypriv.
-							binstallGrpkey =
-							 false;
-						adapter->securitypriv.
-							busetkipkey =
-							 false;
-						adapter->securitypriv.
-							bgrpkey_handshake =
-							 false;
-						ptarget_sta->ieee8021x_blocked
-							 = true;
+					if (adapter->securitypriv.AuthAlgrthm == 2) {
+						adapter->securitypriv.binstallGrpkey = false;
+						adapter->securitypriv.busetkipkey = false;
+						adapter->securitypriv.bgrpkey_handshake = false;
+						ptarget_sta->ieee8021x_blocked = true;
 						ptarget_sta->XPrivacy =
-							 adapter->securitypriv.
-							 PrivacyAlgrthm;
-						memset((u8 *)&ptarget_sta->
-							 x_UncstKey,
-							 0,
-							 sizeof(union Keytype));
-						memset((u8 *)&ptarget_sta->
-							 tkiprxmickey,
-							 0,
-							 sizeof(union Keytype));
-						memset((u8 *)&ptarget_sta->
-							 tkiptxmickey,
-							 0,
-							 sizeof(union Keytype));
-						memset((u8 *)&ptarget_sta->
-							 txpn, 0,
-							 sizeof(union pn48));
-						memset((u8 *)&ptarget_sta->
-							 rxpn, 0,
-							 sizeof(union pn48));
+							 adapter->securitypriv.PrivacyAlgrthm;
+						memset((u8 *)&ptarget_sta->x_UncstKey, 0,
+						       sizeof(union Keytype));
+						memset((u8 *)&ptarget_sta->tkiprxmickey, 0,
+						       sizeof(union Keytype));
+						memset((u8 *)&ptarget_sta->tkiptxmickey, 0,
+						       sizeof(union Keytype));
+						memset((u8 *)&ptarget_sta->txpn, 0,
+						       sizeof(union pn48));
+						memset((u8 *)&ptarget_sta->rxpn, 0,
+						       sizeof(union pn48));
 					}
 				} else {
 					if (check_fwstate(pmlmepriv,
@@ -944,11 +913,9 @@ void r8712_stadel_event_callback(struct _adapter *adapter, u8 *pbuf)
 			pdev_network = &(adapter->registrypriv.dev_network);
 			pibss = adapter->registrypriv.dev_network.MacAddress;
 			memcpy(pdev_network, &tgt_network->network,
-				r8712_get_wlan_bssid_ex_sz(&tgt_network->
-							network));
-			memcpy(&pdev_network->Ssid,
-				&pmlmepriv->assoc_ssid,
-				sizeof(struct ndis_802_11_ssid));
+			       r8712_get_wlan_bssid_ex_sz(&tgt_network->network));
+			memcpy(&pdev_network->Ssid, &pmlmepriv->assoc_ssid,
+			       sizeof(struct ndis_802_11_ssid));
 			r8712_update_registrypriv_dev_network(adapter);
 			r8712_generate_random_ibss(pibss);
 			if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
@@ -1094,8 +1061,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			src_ssid = pmlmepriv->assoc_bssid;
 			if (!memcmp(dst_ssid, src_ssid, ETH_ALEN)) {
 				if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-					if (is_same_network(&pmlmepriv->
-					    cur_network.network,
+					if (is_same_network(&pmlmepriv->cur_network.network,
 					    &pnetwork->network)) {
 						_clr_fwstate_(pmlmepriv,
 							_FW_UNDER_LINKING);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
