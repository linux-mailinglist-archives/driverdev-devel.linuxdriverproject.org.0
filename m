Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A5B31699B
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 16:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C035587350;
	Wed, 10 Feb 2021 15:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVgdkyC8ZoFH; Wed, 10 Feb 2021 15:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16B4687339;
	Wed, 10 Feb 2021 15:00:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1ED51BF3FD
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E16486F5F6
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-496vPTdiEc for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 15:00:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 1EA196F65E; Wed, 10 Feb 2021 15:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 026806F5F6
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 15:00:12 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id h12so2937603wrw.6
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 07:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+TsCv5JLxVLTrn5tdQZ7PWqPRydG1WyX4P4IhWeL27c=;
 b=MODky0j7fors6ZNV0gwEQgKiBbKnnpTDfbRNatUg9oMH/sGKT7HBtewWnKbNtnYdiV
 1JRNFRfbzuV3KkudeBLiEJZ2psl3ubPQDoM1GyscuTeN99JF9yebF2892EFN+vdH0pfL
 soAJKsGAasrF7pGg0WITy8JQCEB40mnPe6/rLUTSaHFMpBwq/jSX+TGuSGr94UmimDai
 Ti5NqCg2eYWuBbZfIC33Vaeluefo7tFEY5HECvOdHYfL2HPb70jqgoZoSeMPtmR1UrPs
 MnBQeSxb6OazoTywXlGZ8jioQMZDIMTdUW/5dWUo3vmsaXgL42l6q3IgjnmvjyISKmhG
 Rd9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+TsCv5JLxVLTrn5tdQZ7PWqPRydG1WyX4P4IhWeL27c=;
 b=OGzOoCLyhej7u77rJjQ8BcKrmqE/PZWyIFeQv4fidFwCBpMo6feNRxa8sfr2TGY2H8
 8N24FPDwnRoFmIozvDc2XL6JYEdnzVJt50Q/vf3rVksmwOJm3EWW2boVrLN+baQneHAA
 kwf1Y8PV1VkHXZ/DrIM4HASVvQ/7AX0LUcy2A4nQx2zmi5oOGhxyHPx/NDzmkRNskIYy
 25Sdj1wMsgW+wj8pPWwZ/8hvBMSVAm9dPAUoWHo74AktxwN/3Wfc4i5O4vXrOxX3wfKZ
 Rf3BXSfn02+wWQP1FN3phHvSZy5uiOb418BUsh8hVjZ1/yXJYpCEqjiX2iC7xEtIgZbD
 4Qvw==
X-Gm-Message-State: AOAM5302X7Oe6OFNXe8Vs6n3sgn5WihQS21FHhvNl6Lc+7br1JR22JMG
 fAFdUgO/G8A5ggWfTWPuGJA=
X-Google-Smtp-Source: ABdhPJxHf5Qn5nbWHtZcmniPlrCRYdBXitlIOetfhvRh3asq13R8PBtTa5Mg2zQTB1DhGN9RYeRxzQ==
X-Received: by 2002:adf:a50c:: with SMTP id i12mr2542756wrb.299.1612969211124; 
 Wed, 10 Feb 2021 07:00:11 -0800 (PST)
Received: from localhost.localdomain ([154.72.150.126])
 by smtp.gmail.com with ESMTPSA id j7sm3615744wrp.72.2021.02.10.07.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 07:00:10 -0800 (PST)
From: Mairo Paul Rufus <akoudanilo@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Fix comments typos
Date: Wed, 10 Feb 2021 15:59:52 +0100
Message-Id: <20210210145952.722586-1-akoudanilo@gmail.com>
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
Cc: devel@driverdev.osuosl.org, trivial@kernel.org,
 linux-kernel@vger.kernel.org, Mairo Paul Rufus <akoudanilo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Mairo Paul Rufus <akoudanilo@gmail.com>
---
 drivers/staging/wlan-ng/p80211netdev.c | 2 +-
 drivers/staging/wlan-ng/prism2mib.c    | 2 +-
 drivers/staging/wlan-ng/prism2sta.c    | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 7b091c5a2984..4a6813e89916 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -274,7 +274,7 @@ static void p80211netdev_rx_bh(unsigned long arg)
 	struct sk_buff *skb = NULL;
 	struct net_device *dev = wlandev->netdev;
 
-	/* Let's empty our our queue */
+	/* Let's empty our queue */
 	while ((skb = skb_dequeue(&wlandev->nsd_rxq))) {
 		if (wlandev->state == WLAN_DEVICE_OPEN) {
 			if (dev->type != ARPHRD_ETHER) {
diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 7d7d77b04255..875812a391c9 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -292,7 +292,7 @@ int prism2mgmt_mibset_mibget(struct wlandevice *wlandev, void *msgp)
 	/*
 	 ** Determine if this is a "mibget" or a "mibset".  If this is a
 	 ** "mibget", then make sure that the MIB may be read.  Otherwise,
-	 ** this is a "mibset" so make make sure that the MIB may be written.
+	 ** this is a "mibset" so make sure that the MIB may be written.
 	 */
 
 	isget = (msg->msgcode == DIDMSG_DOT11REQ_MIBGET);
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 8f25496188aa..e6dcb687e7a1 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -461,7 +461,7 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 		case WLAN_MSD_FWLOAD:
 			wlandev->msdstate = WLAN_MSD_RUNNING_PENDING;
 			/* Initialize the device+driver for full
-			 * operation. Note that this might me an FWLOAD to
+			 * operation. Note that this might me an FWLOAD
 			 * to RUNNING transition so we must not do a chip
 			 * or board level reset.  Note that on failure,
 			 * the MSD state is set to HWPRESENT because we
@@ -1352,7 +1352,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		 * we get back in range.  We should block transmits and
 		 * receives in this state.  Do we need an indication here?
 		 * Probably not since a polling user-mode element would
-		 * get this status from from p2PortStatus(FD40). What about
+		 * get this status from p2PortStatus(FD40). What about
 		 * p80211?
 		 * Response:
 		 * Block Transmits, Ignore receives of data frames
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
