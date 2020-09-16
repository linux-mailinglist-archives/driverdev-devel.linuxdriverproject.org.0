Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C91126BC68
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC4E927233;
	Wed, 16 Sep 2020 06:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGqIYf0IW9R8; Wed, 16 Sep 2020 06:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA78A23730;
	Wed, 16 Sep 2020 06:15:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BABD91BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B68A786DE4
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zDlW8Qxwe0V for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0267786DD7
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:15:29 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 34so3269390pgo.13
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YoxBZQfB0N9gZZ3J4PK0XA8zL2fe5eEnrVbCiFi5PGQ=;
 b=AqK32Gvc3g6BMahVPpTdTdHUoa/SRlut/9y/kKmlokwRbl+wuvaLonuWtgmzeLmMEB
 V681ZURzDEvNSOBa2K3s+8zDlBeoI+Zjup+/xwTUI3ZT4qhIYk3VrbZnzU070v6lX85p
 V8ycV7HkYE9Qc05txttxrEoQ6HEId4gFuC1ob2jFS5nHVAX4Bg518d8qbJuignNShuF/
 3v8MFKgjTWLdJeHicDhC2eMbMbFlhukq4TyfU2u4ufnY+WuGvoVH+tNzdQSFta7dMbkb
 J1hoLfaiU5wSZ6Hra9YcXSNLz3sqxtQeiOzA97qayq/yocXPAh+TLGsj3+G/wcQuRtWN
 Ef7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YoxBZQfB0N9gZZ3J4PK0XA8zL2fe5eEnrVbCiFi5PGQ=;
 b=fVPOnmxnC9fe0D+6Z+S6I1kMfpY10NKxewlhCwxe5J1XigQNAEBHqHpqTA995LEybu
 FlEvw/NTozsXmQ9MyI8OibSpZvXwQxHOPDA9VUGeZVCDCTx63QbrJJ3EY7kT03vT7NvV
 /gmO1+Svfuw/V9xxQjXO/hGBTbQbLHnCmO16DP4jjRC8tNy/yPndwwBZ7qPs46sdYCpl
 ZJyu0PIo7blGvC17H9hQBZcI5h2b+Dtk1Nwsktjm4XfJ/vSPPz2P6d4Tw0ZSOW6XLmTY
 /Z2DJbvM0BK7DgOG4ALH2kNM2mUnJUOUtS9tW1cPatLwHEEE548I4egpU2Ll1LqlieEU
 CFhg==
X-Gm-Message-State: AOAM530YShg1w6eGgyXZ9TzjCgX/qsUV/ityEhvHJKUgQxaDKMKEqOlu
 /s2cbTFCEKG1W8G3xUNRFzE=
X-Google-Smtp-Source: ABdhPJz7ZOUelCSX+F0oV3U5ItEBPMaAiwr+9EL+Y+q7f7K8/NaLpdUqY/WQ0USW+nHNVeunBaZMAw==
X-Received: by 2002:a63:342:: with SMTP id 63mr17927242pgd.134.1600236928587; 
 Tue, 15 Sep 2020 23:15:28 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id t15sm2347171pjq.3.2020.09.15.23.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:15:28 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: convert tasklets to use new tasklet_setup()
 API
Date: Wed, 16 Sep 2020 11:45:19 +0530
Message-Id: <20200916061519.57602-1-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>,
 Allen Pais <apais@linux.microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c  | 18 ++++++++----------
 drivers/staging/wlan-ng/p80211netdev.c |  9 ++++-----
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 2720f7319a3d..f2a0e16b0318 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -191,9 +191,9 @@ static void hfa384x_usbctlx_resptimerfn(struct timer_list *t);
 
 static void hfa384x_usb_throttlefn(struct timer_list *t);
 
-static void hfa384x_usbctlx_completion_task(unsigned long data);
+static void hfa384x_usbctlx_completion_task(struct tasklet_struct *t);
 
-static void hfa384x_usbctlx_reaper_task(unsigned long data);
+static void hfa384x_usbctlx_reaper_task(struct tasklet_struct *t);
 
 static int hfa384x_usbctlx_submit(struct hfa384x *hw,
 				  struct hfa384x_usbctlx *ctlx);
@@ -539,10 +539,8 @@ void hfa384x_create(struct hfa384x *hw, struct usb_device *usb)
 	/* Initialize the authentication queue */
 	skb_queue_head_init(&hw->authq);
 
-	tasklet_init(&hw->reaper_bh,
-		     hfa384x_usbctlx_reaper_task, (unsigned long)hw);
-	tasklet_init(&hw->completion_bh,
-		     hfa384x_usbctlx_completion_task, (unsigned long)hw);
+	tasklet_setup(&hw->reaper_bh, hfa384x_usbctlx_reaper_task);
+	tasklet_setup(&hw->completion_bh, hfa384x_usbctlx_completion_task);
 	INIT_WORK(&hw->link_bh, prism2sta_processing_defer);
 	INIT_WORK(&hw->usb_work, hfa384x_usb_defer);
 
@@ -2599,9 +2597,9 @@ void hfa384x_tx_timeout(struct wlandevice *wlandev)
  *	Interrupt
  *----------------------------------------------------------------
  */
-static void hfa384x_usbctlx_reaper_task(unsigned long data)
+static void hfa384x_usbctlx_reaper_task(struct tasklet_struct *t)
 {
-	struct hfa384x *hw = (struct hfa384x *)data;
+	struct hfa384x *hw = from_tasklet(hw, t, reaper_bh);
 	struct hfa384x_usbctlx *ctlx, *temp;
 	unsigned long flags;
 
@@ -2633,9 +2631,9 @@ static void hfa384x_usbctlx_reaper_task(unsigned long data)
  *	Interrupt
  *----------------------------------------------------------------
  */
-static void hfa384x_usbctlx_completion_task(unsigned long data)
+static void hfa384x_usbctlx_completion_task(struct tasklet_struct *t)
 {
-	struct hfa384x *hw = (struct hfa384x *)data;
+	struct hfa384x *hw = from_tasklet(hw, t, completion_bh);
 	struct hfa384x_usbctlx *ctlx, *temp;
 	unsigned long flags;
 
diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 7b091c5a2984..b86f14673590 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -266,11 +266,11 @@ static int p80211_convert_to_ether(struct wlandevice *wlandev,
 /**
  * p80211netdev_rx_bh - deferred processing of all received frames
  *
- * @arg: pointer to WLAN network device structure (cast to unsigned long)
+ * @t: pointer to the tasklet associated with this handler
  */
-static void p80211netdev_rx_bh(unsigned long arg)
+static void p80211netdev_rx_bh(struct tasklet_struct *t)
 {
-	struct wlandevice *wlandev = (struct wlandevice *)arg;
+	struct wlandevice *wlandev = from_tasklet(wlandev, t, rx_bh);
 	struct sk_buff *skb = NULL;
 	struct net_device *dev = wlandev->netdev;
 
@@ -728,8 +728,7 @@ int wlan_setup(struct wlandevice *wlandev, struct device *physdev)
 
 	/* Set up the rx queue */
 	skb_queue_head_init(&wlandev->nsd_rxq);
-	tasklet_init(&wlandev->rx_bh,
-		     p80211netdev_rx_bh, (unsigned long)wlandev);
+	tasklet_setup(&wlandev->rx_bh, p80211netdev_rx_bh);
 
 	/* Allocate and initialize the wiphy struct */
 	wiphy = wlan_create_wiphy(physdev, wlandev);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
