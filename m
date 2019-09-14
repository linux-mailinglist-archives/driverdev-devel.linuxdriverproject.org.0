Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45498B2D17
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 23:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF14F20519;
	Sat, 14 Sep 2019 21:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id inRNi+S3XSZs; Sat, 14 Sep 2019 21:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C5BB620510;
	Sat, 14 Sep 2019 21:06:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 609D11BF300
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51DD3204E3
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDOc3EWN4c9r for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 21:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E482E20517
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 21:06:32 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n9so17115919pgc.1
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 14:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=jc8E/+KBTZE4VsqxlK25C8aQEeXge4zh1VW5pLpYeBk=;
 b=Mk14/m7PduY6ea8HO9lwzBKo6+vpB+gqU472fpu4RJTft39t71wR3+4WXUEwzOQPK+
 ucOWQtyXsWMmX/IbPewAcor//6FQc/l7DAAscug87/Vv0P9JbY6wCKvaItDviEj9jVnI
 BGy9RfCFusao9m9eAYXgs0tzizZ6t3rtVEez+jY1+rP3lIsL3LchJz0uQ1PeFy2A3HbW
 kOC1FbHQHuSGH2+C1d4kb1F+cmTBVcl3O/El/qUP3EwBJ/teEIRLVzjFmfqFiVw7Ce4r
 mGywOd7Ksn1Sp/HI1RI+L+aynMT8VTaz12i1b2qc3DnBAsyuj1oZiBF6eqVgp9IppEyd
 Vt1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=jc8E/+KBTZE4VsqxlK25C8aQEeXge4zh1VW5pLpYeBk=;
 b=s27+HdDni3WR5Q5xDDwhCJa5FEjB2oxPOOtVwhvrlKdxqQ7rL3CV/sJhojcf+Wkig2
 Z/hwPVSv38Ot+00Djcv79ek0CSvD6aulEf6SW7UWJdxh+U6X5WXITof8BFh8WF5jd9sa
 JvB1G3VDaReRT+f4/wgfrvUdoRvHHdV7zDOHskgx5U7bsgIUWsHhAKcYxgbCU7QFPtgh
 AT0K6+CGXq5kgqC7HdK6O/AExDejK0jy603PlfVnnA1tLNZtTDkfZGO1Wzh1yN0lUSxF
 7EMC3IBR7QUdqtticzPTeuuXoKJZS6K1wQjMX/mVYJweIoDcWlW1vtpqairzLmNgdJaW
 iTqA==
X-Gm-Message-State: APjAAAWCoAcW/zVipS1SqA55F6GlDYGOajImJDU2G4RQSq88B7nxYU9u
 Toe1xMntv/3zL+2Hmv9f96U=
X-Google-Smtp-Source: APXvYqynTGa7VjAy8dC61Jhjr+kCqJ3Puo9YwexUNnSDexvgxRuqI/nDdJXlEYeoSC/EVXadYh5eog==
X-Received: by 2002:a65:60d3:: with SMTP id r19mr5841867pgv.91.1568495192406; 
 Sat, 14 Sep 2019 14:06:32 -0700 (PDT)
Received: from localhost.localdomain ([117.248.166.236])
 by smtp.gmail.com with ESMTPSA id 62sm30895275pfg.164.2019.09.14.14.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 14:06:32 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8192u: Remove unnecessary line-breaks in
 function signatures
Date: Sun, 15 Sep 2019 02:35:49 +0530
Message-Id: <ed06fc34eecd883f02bb9a037522b65c63a5eec4.1568494288.git.sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568494288.git.sylphrenadin@gmail.com>
References: <cover.1568494288.git.sylphrenadin@gmail.com>
In-Reply-To: <cover.1568494288.git.sylphrenadin@gmail.com>
References: <cover.1568494288.git.sylphrenadin@gmail.com>
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
