Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 501DE23D963
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 12:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74F7424B6B;
	Thu,  6 Aug 2020 10:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5g-YdDZk3Tsd; Thu,  6 Aug 2020 10:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68C7C21FF6;
	Thu,  6 Aug 2020 10:47:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBAFB1BF855
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 10:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D87FE86E00
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 10:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5widwz5WwnZ2 for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 10:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D15FD86D2A
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 10:47:03 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1k3dQL-0005mp-8Q; Thu, 06 Aug 2020 10:47:01 +0000
From: Colin King <colin.king@canonical.com>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH][next][V2] staging: wfx: fix a handful of spelling mistakes
Date: Thu,  6 Aug 2020 11:47:01 +0100
Message-Id: <20200806104701.46123-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There are various spelling mistakes in comments and error messages.
Fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---

V2: add in some more fixes as spotted by Randy Dunlap

---
 drivers/staging/wfx/data_rx.c | 2 +-
 drivers/staging/wfx/data_tx.c | 2 +-
 drivers/staging/wfx/debug.c   | 6 +++---
 drivers/staging/wfx/hif_rx.c  | 2 +-
 drivers/staging/wfx/hif_tx.c  | 4 ++--
 drivers/staging/wfx/main.c    | 2 +-
 drivers/staging/wfx/main.h    | 2 +-
 drivers/staging/wfx/sta.c     | 2 +-
 8 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 6fb078880742..7fcbbfc53416 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -73,7 +73,7 @@ void wfx_rx_cb(struct wfx_vif *wvif,
 	if (arg->rx_flags.encryp)
 		hdr->flag |= RX_FLAG_DECRYPTED;
 
-	// Block ack negociation is offloaded by the firmware. However,
+	// Block ack negotiation is offloaded by the firmware. However,
 	// re-ordering must be done by the mac80211.
 	if (ieee80211_is_action(frame->frame_control) &&
 	    mgmt->u.action.category == WLAN_CATEGORY_BACK &&
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 3acf4eb0214d..41f9afd41e14 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -234,7 +234,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 	int i;
 	bool finished;
 
-	// Firmware is not able to mix rates with differents flags
+	// Firmware is not able to mix rates with different flags
 	for (i = 0; i < IEEE80211_TX_MAX_RATES; i++) {
 		if (rates[0].flags & IEEE80211_TX_RC_SHORT_GI)
 			rates[i].flags |= IEEE80211_TX_RC_SHORT_GI;
diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index 3f1712b7c919..99c53e1afece 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -267,7 +267,7 @@ static ssize_t wfx_send_hif_msg_write(struct file *file,
 	if (count < sizeof(struct hif_msg))
 		return -EINVAL;
 
-	// wfx_cmd_send() chekc that reply buffer is wide enough, but do not
+	// wfx_cmd_send() checks that reply buffer is wide enough, but does not
 	// return precise length read. User have to know how many bytes should
 	// be read. Filling reply buffer with a memory pattern may help user.
 	memset(context->reply, 0xFF, sizeof(context->reply));
@@ -299,8 +299,8 @@ static ssize_t wfx_send_hif_msg_read(struct file *file, char __user *user_buf,
 		return ret;
 	if (context->ret < 0)
 		return context->ret;
-	// Be carefull, write() is waiting for a full message while read()
-	// only return a payload
+	// Be careful, write() is waiting for a full message while read()
+	// only returns a payload
 	if (copy_to_user(user_buf, context->reply, count))
 		return -EFAULT;
 
diff --git a/drivers/staging/wfx/hif_rx.c b/drivers/staging/wfx/hif_rx.c
index cc7c0cf226ba..1d32973d8ec1 100644
--- a/drivers/staging/wfx/hif_rx.c
+++ b/drivers/staging/wfx/hif_rx.c
@@ -118,7 +118,7 @@ static int hif_keys_indication(struct wfx_dev *wdev,
 
 	// SL_PUB_KEY_EXCHANGE_STATUS_SUCCESS is used by legacy secure link
 	if (body->status && body->status != HIF_STATUS_SLK_NEGO_SUCCESS)
-		dev_warn(wdev->dev, "secure link negociation error\n");
+		dev_warn(wdev->dev, "secure link negotiation error\n");
 	memcpy(pubkey, body->ncp_pub_key, sizeof(pubkey));
 	memreverse(pubkey, sizeof(pubkey));
 	wfx_sl_check_pubkey(wdev, pubkey, body->ncp_pub_key_mac);
diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
index 5110f9b93762..3b5f4dcc469c 100644
--- a/drivers/staging/wfx/hif_tx.c
+++ b/drivers/staging/wfx/hif_tx.c
@@ -78,7 +78,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request,
 
 	wfx_bh_request_tx(wdev);
 
-	// NOTE: no timeout is catched async is enabled
+	// NOTE: no timeout is caught async is enabled
 	if (async)
 		return 0;
 
@@ -125,7 +125,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request,
 
 // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't reply to any
 // request anymore. We need to slightly hack struct wfx_hif_cmd for that job. Be
-// carefull to only call this funcion during device unregister.
+// careful to only call this function during device unregister.
 int hif_shutdown(struct wfx_dev *wdev)
 {
 	int ret;
diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
index 11dfa088fc86..4263f912760b 100644
--- a/drivers/staging/wfx/main.c
+++ b/drivers/staging/wfx/main.c
@@ -384,7 +384,7 @@ int wfx_probe(struct wfx_dev *wdev)
 	err = wfx_sl_init(wdev);
 	if (err && wdev->hw_caps.capabilities.link_mode == SEC_LINK_ENFORCED) {
 		dev_err(wdev->dev,
-			"chip require secure_link, but can't negociate it\n");
+			"chip require secure_link, but can't negotiate it\n");
 		goto err0;
 	}
 
diff --git a/drivers/staging/wfx/main.h b/drivers/staging/wfx/main.h
index c59d375dd3ad..2457cb595b0f 100644
--- a/drivers/staging/wfx/main.h
+++ b/drivers/staging/wfx/main.h
@@ -19,7 +19,7 @@ struct wfx_dev;
 struct hwbus_ops;
 
 struct wfx_platform_data {
-	/* Keyset and ".sec" extention will appended to this string */
+	/* Keyset and ".sec" extension will be appended to this string */
 	const char *file_fw;
 	const char *file_pds;
 	struct gpio_desc *gpio_wakeup;
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 4e30ab17a93d..ad63332f690c 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -214,7 +214,7 @@ static int wfx_get_ps_timeout(struct wfx_vif *wvif, bool *enable_ps)
 	if (chan0 && chan1 && chan0->hw_value != chan1->hw_value &&
 	    wvif->vif->type != NL80211_IFTYPE_AP) {
 		// It is necessary to enable powersave if channels
-		// are differents.
+		// are different.
 		if (enable_ps)
 			*enable_ps = true;
 		if (wvif->wdev->force_ps_timeout > -1)
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
