Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AF11BB899
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 10:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98B5086BB9;
	Tue, 28 Apr 2020 08:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IsiS49KXp1gU; Tue, 28 Apr 2020 08:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 339E486566;
	Tue, 28 Apr 2020 08:14:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D23D1BF312
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 079A8854B3
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QPHCoHubkezF for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 08:14:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF0CA86406
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 08:14:15 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jTLNd-000xL6-5n; Tue, 28 Apr 2020 10:14:13 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 2/2] staging: wilc1000: adjust for management frame register
 API changes
Date: Tue, 28 Apr 2020 10:14:03 +0200
Message-Id: <20200428101400.bac7e94c2bf8.I6a2287b9f68f35aff5f6de409c5ffa388de760e2@changeid>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
References: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
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
Cc: devel@driverdev.osuosl.org, Johannes Berg <johannes.berg@intel.com>,
 Sergey Matyukevich <geomatsi@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Johannes Berg <johannes.berg@intel.com>

Adjust to the API changes in cfg80211 for management frame registration.

Fixes: 6cd536fe62ef ("cfg80211: change internal management frame registration API")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 drivers/staging/wilc1000/cfg80211.c | 36 ++++++++++++++---------------
 drivers/staging/wilc1000/cfg80211.h |  5 ++--
 drivers/staging/wilc1000/netdev.c   | 21 ++++++++---------
 drivers/staging/wilc1000/netdev.h   |  9 +-------
 4 files changed, 30 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/wilc1000/cfg80211.c b/drivers/staging/wilc1000/cfg80211.c
index 4bdcbc5fd2fd..b6065a0d660f 100644
--- a/drivers/staging/wilc1000/cfg80211.c
+++ b/drivers/staging/wilc1000/cfg80211.c
@@ -1217,33 +1217,31 @@ static int mgmt_tx_cancel_wait(struct wiphy *wiphy,
 	return 0;
 }
 
-void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
-			      u16 frame_type, bool reg)
+void wilc_update_mgmt_frame_registrations(struct wiphy *wiphy,
+					  struct wireless_dev *wdev,
+					  struct mgmt_frame_regs *upd)
 {
 	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(wdev->netdev);
+	u32 presp_bit = BIT(IEEE80211_STYPE_PROBE_REQ >> 4);
+	u32 action_bit = BIT(IEEE80211_STYPE_ACTION >> 4);
 
-	if (!frame_type)
-		return;
+	if (wl->initialized) {
+		bool prev = vif->mgmt_reg_stypes & presp_bit;
+		bool now = upd->interface_stypes & presp_bit;
 
-	switch (frame_type) {
-	case IEEE80211_STYPE_PROBE_REQ:
-		vif->frame_reg[0].type = frame_type;
-		vif->frame_reg[0].reg = reg;
-		break;
+		if (now != prev)
+			wilc_frame_register(vif, IEEE80211_STYPE_PROBE_REQ, now);
 
-	case IEEE80211_STYPE_ACTION:
-		vif->frame_reg[1].type = frame_type;
-		vif->frame_reg[1].reg = reg;
-		break;
+		prev = vif->mgmt_reg_stypes & action_bit;
+		now = upd->interface_stypes & action_bit;
 
-	default:
-		break;
+		if (now != prev)
+			wilc_frame_register(vif, IEEE80211_STYPE_ACTION, now);
 	}
 
-	if (!wl->initialized)
-		return;
-	wilc_frame_register(vif, frame_type, reg);
+	vif->mgmt_reg_stypes =
+		upd->interface_stypes & (presp_bit | action_bit);
 }
 
 static int set_cqm_rssi_config(struct wiphy *wiphy, struct net_device *dev,
@@ -1665,7 +1663,7 @@ static const struct cfg80211_ops wilc_cfg80211_ops = {
 	.cancel_remain_on_channel = cancel_remain_on_channel,
 	.mgmt_tx_cancel_wait = mgmt_tx_cancel_wait,
 	.mgmt_tx = mgmt_tx,
-	.mgmt_frame_register = wilc_mgmt_frame_register,
+	.update_mgmt_frame_registrations = wilc_update_mgmt_frame_registrations,
 	.set_power_mgmt = set_power_mgmt,
 	.set_cqm_rssi_config = set_cqm_rssi_config,
 
diff --git a/drivers/staging/wilc1000/cfg80211.h b/drivers/staging/wilc1000/cfg80211.h
index 5e5d63f70df2..37b294cb3b37 100644
--- a/drivers/staging/wilc1000/cfg80211.h
+++ b/drivers/staging/wilc1000/cfg80211.h
@@ -21,8 +21,9 @@ void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked);
 struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
 					       const char *name,
 					       struct net_device *real_dev);
-void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
-			      u16 frame_type, bool reg);
+void wilc_update_mgmt_frame_registrations(struct wiphy *wiphy,
+					  struct wireless_dev *wdev,
+					  struct mgmt_frame_regs *upd);
 struct wilc_vif *wilc_get_interface(struct wilc *wl);
 struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl);
 void wlan_deinit_locks(struct wilc *wilc);
diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
index f94a17babd12..fda0ab97b02c 100644
--- a/drivers/staging/wilc1000/netdev.c
+++ b/drivers/staging/wilc1000/netdev.c
@@ -571,6 +571,7 @@ static int wilc_mac_open(struct net_device *ndev)
 	struct wilc *wl = vif->wilc;
 	unsigned char mac_add[ETH_ALEN] = {0};
 	int ret = 0;
+	struct mgmt_frame_regs mgmt_regs = {};
 
 	if (!wl || !wl->dev) {
 		netdev_err(ndev, "device not ready\n");
@@ -602,14 +603,12 @@ static int wilc_mac_open(struct net_device *ndev)
 		return -EINVAL;
 	}
 
-	wilc_mgmt_frame_register(vif->ndev->ieee80211_ptr->wiphy,
-				 vif->ndev->ieee80211_ptr,
-				 vif->frame_reg[0].type,
-				 vif->frame_reg[0].reg);
-	wilc_mgmt_frame_register(vif->ndev->ieee80211_ptr->wiphy,
-				 vif->ndev->ieee80211_ptr,
-				 vif->frame_reg[1].type,
-				 vif->frame_reg[1].reg);
+	mgmt_regs.interface_stypes = vif->mgmt_reg_stypes;
+	/* so we detect a change */
+	vif->mgmt_reg_stypes = 0;
+	wilc_update_mgmt_frame_registrations(vif->ndev->ieee80211_ptr->wiphy,
+					     vif->ndev->ieee80211_ptr,
+					     &mgmt_regs);
 	netif_wake_queue(ndev);
 	wl->open_ifcs++;
 	vif->mac_opened = 1;
@@ -792,12 +791,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
 	srcu_idx = srcu_read_lock(&wilc->srcu);
 	list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
 		u16 type = le16_to_cpup((__le16 *)buff);
+		u32 type_bit = BIT(type >> 4);
 
 		if (vif->priv.p2p_listen_state &&
-		    ((type == vif->frame_reg[0].type &&
-		      vif->frame_reg[0].reg) ||
-		     (type == vif->frame_reg[1].type &&
-		      vif->frame_reg[1].reg)))
+		    vif->mgmt_reg_stypes & type_bit)
 			wilc_wfi_p2p_rx(vif, buff, size);
 
 		if (vif->monitor_flag)
diff --git a/drivers/staging/wilc1000/netdev.h b/drivers/staging/wilc1000/netdev.h
index 61cbec674a62..d0a006b68d08 100644
--- a/drivers/staging/wilc1000/netdev.h
+++ b/drivers/staging/wilc1000/netdev.h
@@ -24,8 +24,6 @@
 #define PMKID_FOUND				1
 #define NUM_STA_ASSOCIATED			8
 
-#define NUM_REG_FRAME				2
-
 #define TCP_ACK_FILTER_LINK_SPEED_THRESH	54
 #define DEFAULT_LINK_SPEED			72
 
@@ -151,11 +149,6 @@ struct wilc_priv {
 	u64 inc_roc_cookie;
 };
 
-struct frame_reg {
-	u16 type;
-	bool reg;
-};
-
 #define MAX_TCP_SESSION                25
 #define MAX_PENDING_ACKS               256
 
@@ -187,7 +180,7 @@ struct wilc_vif {
 	u8 iftype;
 	int monitor_flag;
 	int mac_opened;
-	struct frame_reg frame_reg[NUM_REG_FRAME];
+	u32 mgmt_reg_stypes;
 	struct net_device_stats netstats;
 	struct wilc *wilc;
 	u8 bssid[ETH_ALEN];
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
