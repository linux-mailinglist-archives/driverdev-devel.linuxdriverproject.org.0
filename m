Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A5CB654C
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 16:00:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F704864F4;
	Wed, 18 Sep 2019 14:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQ9eCDyNJ4rT; Wed, 18 Sep 2019 14:00:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1BD486483;
	Wed, 18 Sep 2019 14:00:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B16DE1BF30D
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 14:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC0B785EC2
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 14:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N3J_syFP4vxh for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 14:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 772B185F45
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 14:00:16 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n9so4185979pgc.1
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 07:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=jc8E/+KBTZE4VsqxlK25C8aQEeXge4zh1VW5pLpYeBk=;
 b=Ohx5YAbFHr6Z/8B3oJpjNj9EhA6q4vzRh1P4ayClfLcD1Kyp2NfU8sllOqm2MR9kme
 eEaaGtaXVHnCYY34gTrO5zueKF3WAU7VxCP7+dnJXXi8M4leaWqBDTn/CnsmBpwUZSvv
 61WrgW2V+FFNZTXrZkUDE1skMv1cDjbVi35GU4fTZ6ud4ndwua1ooWQx5QWtWfUpA1k8
 SaSbhC3orWFAhM7jiE5HVY5XV2eFesRl5TF4gT0PNvz/CjJE2frqD98IUhBAOXy8rgKh
 K4KAef00qhfBK34epYEf1P4FLHzfMPaHPw9swlmb2mHUlTPS8UCijAFYpDhqRWbNK186
 nLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=jc8E/+KBTZE4VsqxlK25C8aQEeXge4zh1VW5pLpYeBk=;
 b=Eu9WL4t4JWOsCCnWXvXtjEbb594I+7luCzBjonHWt+k/7G8kQLF2bdWovkhzxy7YCW
 kLuQQd0aHMsSifhSRBFYOOFl/Hbn5pw79pgYON6nPc6Z2gbs3MqoNyQJB2xU3OpTh+zi
 S53pMsnq8xQUyf8x+p9yObScuRjPHmkRqtJnDFac06QGBoagoo4xDQ3irM5qdzBTqArr
 gzdQnhok8LAKMMLwiOCZBWnrnyJ53ni2Xrp4gvtOIhsLjAmnvORh+cdIV0LevXi38nkH
 emS5/gInWX4XyV8jnyBiRf4j23nnPTTyTtZ2Rg+3OPxpp/Ei/XAD+ZoYjq11E6hNBen7
 Fa6A==
X-Gm-Message-State: APjAAAUIAi48plkEVepqU5vchV8zKPj4BwnS1F6b+3YKHWlKUwvBb8e+
 YBC/XBM7CT9kUe7khMvs/og=
X-Google-Smtp-Source: APXvYqwBMnvwfJrrFBnJgW6e1+5ZwdX5foM/28RHiUyIYEVMT6qstHHLFRHN3tiQz8vRm5xdSu7Ehw==
X-Received: by 2002:a17:90a:3546:: with SMTP id
 q64mr3839655pjb.13.1568815215883; 
 Wed, 18 Sep 2019 07:00:15 -0700 (PDT)
Received: from localhost.localdomain ([2409:4062:87:7bed:5d92:5243:ac2d:ef16])
 by smtp.gmail.com with ESMTPSA id
 c125sm6594769pfa.107.2019.09.18.07.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 07:00:15 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8192u: Remove unnecessary line-breaks in
 function signatures
Date: Wed, 18 Sep 2019 19:27:44 +0530
Message-Id: <ed06fc34eecd883f02bb9a037522b65c63a5eec4.1568814125.git.sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568814125.git.sylphrenadin@gmail.com>
References: <cover.1568814125.git.sylphrenadin@gmail.com>
In-Reply-To: <cover.1568814125.git.sylphrenadin@gmail.com>
References: <cover.1568814125.git.sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the function signatures for rtl8192_handle_assoc_response,
rtl8192_record_rxdesc_forlateruse, rtl819xusb_process_received_packet
and other relevant code blocks to avoid the checkpatch.pl warning:

	CHECK: Lines should not end with a '('

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 28 ++++++++++----------------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index f361cae78106..f0f755f8d8a1 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1893,10 +1893,9 @@ static int rtl8192_qos_association_resp(struct r8192_priv *priv,
 	return 0;
 }
 
-static int rtl8192_handle_assoc_response(
-		struct net_device *dev,
-		struct ieee80211_assoc_response_frame *resp,
-		struct ieee80211_network *network)
+static int rtl8192_handle_assoc_response(struct net_device *dev,
+					 struct ieee80211_assoc_response_frame *resp,
+					 struct ieee80211_network *network)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -3808,10 +3807,9 @@ static void rtl8192_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 	if (!pprevious_stats->bIsCCK &&
 	    (pprevious_stats->bPacketToSelf || pprevious_stats->bToSelfBA)) {
 		for (rfpath = RF90_PATH_A; rfpath < priv->NumTotalRFPath; rfpath++) {
-			if (!rtl8192_phy_CheckIsLegalRFPath(
-					priv->ieee80211->dev, rfpath))
+			if (!rtl8192_phy_CheckIsLegalRFPath(priv->ieee80211->dev,
+							    rfpath))
 				continue;
-
 			if (priv->stats.rx_rssi_percentage[rfpath] == 0)
 				priv->stats.rx_rssi_percentage[rfpath] =
 					pprevious_stats->RxMIMOSignalStrength[rfpath];
@@ -4139,8 +4137,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 			else
 				continue;
 
-			if (!rtl8192_phy_CheckIsLegalRFPath(
-					priv->ieee80211->dev, i))
+			if (!rtl8192_phy_CheckIsLegalRFPath(priv->ieee80211->dev, i))
 				continue;
 
 			rx_pwr[i] =
@@ -4233,9 +4230,8 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 	}
 }	/* QueryRxPhyStatus8190Pci */
 
-static void rtl8192_record_rxdesc_forlateruse(
-		struct ieee80211_rx_stats *psrc_stats,
-		struct ieee80211_rx_stats *ptarget_stats)
+static void rtl8192_record_rxdesc_forlateruse(struct ieee80211_rx_stats *psrc_stats,
+					      struct ieee80211_rx_stats *ptarget_stats)
 {
 	ptarget_stats->bIsAMPDU = psrc_stats->bIsAMPDU;
 	ptarget_stats->bFirstMPDU = psrc_stats->bFirstMPDU;
@@ -4466,8 +4462,7 @@ static void query_rxdesc_status(struct sk_buff *skb,
 	 * Driver info are written to the RxBuffer following rx desc
 	 */
 	if (stats->RxDrvInfoSize != 0) {
-		driver_info = (struct rx_drvinfo_819x_usb *)(
-				skb->data
+		driver_info = (struct rx_drvinfo_819x_usb *)(skb->data
 				+ sizeof(struct rx_desc_819x_usb)
 				+ stats->RxBufShift
 			      );
@@ -4575,9 +4570,8 @@ static void rtl8192_rx_nomal(struct sk_buff *skb)
 	}
 }
 
-static void rtl819xusb_process_received_packet(
-		struct net_device *dev,
-		struct ieee80211_rx_stats *pstats)
+static void rtl819xusb_process_received_packet(struct net_device *dev,
+					       struct ieee80211_rx_stats *pstats)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
