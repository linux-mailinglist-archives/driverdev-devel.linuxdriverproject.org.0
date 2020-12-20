Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD31E2DF6AC
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 20:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88B1786B7D;
	Sun, 20 Dec 2020 19:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7d7eevBtQSMi; Sun, 20 Dec 2020 19:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95CD486B76;
	Sun, 20 Dec 2020 19:42:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 813921BF470
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 19:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79EC4204B5
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 19:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wx2ARxfPrTGr for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 19:42:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 918D3204AA
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 19:42:39 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id lj6so4974990pjb.0
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 11:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AJ7jl3T+hNJL4GPhzM/aY/eWg7LnJZsNdVH6Xp4wt2I=;
 b=bvXcPjQKnCkHFkeendOPYUza+hPREpddf0L5uyt9fGzQVbJdmp7n10ehEE87NAye4+
 V24pqtIcL8osLg8LQv9wRvlVl3O0BHYQWQZB/H2Y/PGwjn0uuoHOt6MKaGPmWGdsT6q9
 h2gBP9SNiz4rV3e1a9A3L18Fdk+vRzZJcfcrY+jZ4GbS6e6VrFEv8R7y9cUFc7DypRJ3
 BmjKdfAaC//e3wOR+HEWYp0HU3OtPB/C0hHXm9FLbY2psh4/KPPM+9TcWs8C0Cwip6gg
 Cz6wd6nh8jP94aTw1zX+mhAzXUvtS+ocH8wAiCj4ZsEVONogJOjb0OTeTpSaWhIwRl+a
 6igA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AJ7jl3T+hNJL4GPhzM/aY/eWg7LnJZsNdVH6Xp4wt2I=;
 b=pnqQSoxl6ATW+d3wahB/J5YBTfg/0IT28BgoJ4yI3iCXULkFbN8eXmGVAZdZLlzBie
 sX2GTpdbYX83huJDjmfcs6NNHuL2GIhAVGpuC6WCVNFVbZ/22NNOarO2kggAkWme2BmC
 xGEU9jS+mjoS1OLuT9QN1xw0cfGgl1GHEk5DOdtQZirUPTk8ZR1r3x0yJwzxurlUBBww
 0EbExhUgJMwVIpCKeHWBHnC3Tgd8CWDoGz5amGcItSrQszcR7dObSVAlF5V82Y4jR4Qp
 d0rbUGCF4OIfpOKDRiDItTRiphnD0pamV1Q4xHVGE7CNlsBirjm6BRI4cInftK3qqwII
 xogA==
X-Gm-Message-State: AOAM530ItDGoC9GGkSgsbXA2lb8oEHTxjAD/0gyACBVTWqOacuT/wR81
 IxmYxxDpGjPd3PqWxYgIgf+p71bNCv/fAnfT
X-Google-Smtp-Source: ABdhPJw0V7s4MKvJwFP+yY+GDIemwyXTvnkAmeSioRQZrZh1TAUbnlpkLnyiqN/QTBhHn45/LhHQEQ==
X-Received: by 2002:a17:902:db84:b029:dc:2efb:659b with SMTP id
 m4-20020a170902db84b02900dc2efb659bmr12018864pld.83.1608493358485; 
 Sun, 20 Dec 2020 11:42:38 -0800 (PST)
Received: from localhost.localdomain ([2402:3a80:420:966f:e4a8:3fba:bee:da49])
 by smtp.googlemail.com with ESMTPSA id
 mq8sm12278750pjb.13.2020.12.20.11.42.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Dec 2020 11:42:37 -0800 (PST)
From: Aditya Srivastava <yashsri421@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: rtl8192e: fix bool comparison in expressions
Date: Mon, 21 Dec 2020 01:12:24 +0530
Message-Id: <20201220194224.12835-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201220155339.qove5haszqr7zggl@kari-VirtualBox>
References: <20201220155339.qove5haszqr7zggl@kari-VirtualBox>
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
Cc: yashsri421@gmail.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kari.argillander@gmail.com,
 lukas.bulwahn@gmail.com, linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are certain conditional expressions in rtl8192e, where a boolean
variable is compared with true/false, in forms such as (foo == true) or
(false != bar), which does not comply with checkpatch.pl (CHECK:
BOOL_COMPARISON), according to which boolean variables should be
themselves used in the condition, rather than comparing with true/false

E.g. in drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c,
"if (Type == true)" can be replaced with: "if (Type)"

Replace all such expressions with the bool variables appropriately

Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
- the changes made are compile tested
- the patch applies perfectly over next-20201218

Changes in v2:
- drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c: Replace "else if (!Type)" with "else"
- drivers/staging/rtl8192e/rtllib_rx.c: Remove bracket from "(!ieee->pHTInfo->bCurRxReorderEnable)"
- drivers/staging/rtl8192e/rtllib_rx.c: Put bToOtherSTA on previous line

 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 4 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c   | 4 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c     | 4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c           | 5 ++---
 drivers/staging/rtl8192e/rtllib_tx.c           | 8 ++++----
 5 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 9f869fb3eaa8..ff843d7ec606 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -129,9 +129,9 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 		RegRCR = rtl92e_readl(dev, RCR);
 		priv->ReceiveConfig = RegRCR;
 
-		if (Type == true)
+		if (Type)
 			RegRCR |= (RCR_CBSSID);
-		else if (Type == false)
+		else
 			RegRCR &= (~RCR_CBSSID);
 
 		rtl92e_writel(dev, RCR, RegRCR);
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 663675efcfe4..9078fadd65f9 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1389,7 +1389,7 @@ static void _rtl92e_watchdog_wq_cb(void *data)
 
 	rtl92e_dm_watchdog(dev);
 
-	if (rtllib_act_scanning(priv->rtllib, false) == false) {
+	if (!rtllib_act_scanning(priv->rtllib, false)) {
 		if ((ieee->iw_mode == IW_MODE_INFRA) && (ieee->state ==
 		     RTLLIB_NOLINK) &&
 		     (ieee->eRFPowerState == eRfOn) && !ieee->is_set_key &&
@@ -2471,7 +2471,7 @@ static int _rtl92e_pci_probe(struct pci_dev *pdev,
 
 	priv->ops = ops;
 
-	if (rtl92e_check_adapter(pdev, dev) == false)
+	if (!rtl92e_check_adapter(pdev, dev))
 		goto err_unmap;
 
 	dev->irq = pdev->irq;
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 462835684e8b..e340be3ebb97 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -1765,7 +1765,7 @@ static void _rtl92e_dm_cts_to_self(struct net_device *dev)
 	unsigned long curTxOkCnt = 0;
 	unsigned long curRxOkCnt = 0;
 
-	if (priv->rtllib->bCTSToSelfEnable != true) {
+	if (!priv->rtllib->bCTSToSelfEnable) {
 		pHTInfo->IOTAction &= ~HT_IOT_ACT_FORCED_CTS2SELF;
 		return;
 	}
@@ -2447,7 +2447,7 @@ static void _rtl92e_dm_dynamic_tx_power(struct net_device *dev)
 	unsigned int txhipower_threshold = 0;
 	unsigned int txlowpower_threshold = 0;
 
-	if (priv->rtllib->bdynamic_txpower_enable != true) {
+	if (!priv->rtllib->bdynamic_txpower_enable) {
 		priv->bDynamicTxHighPower = false;
 		priv->bDynamicTxLowPower = false;
 		return;
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index d31b5e1c8df4..66c135321da4 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -924,7 +924,7 @@ static int rtllib_rx_check_duplicate(struct rtllib_device *ieee,
 	sc = le16_to_cpu(hdr->seq_ctl);
 	frag = WLAN_GET_SEQ_FRAG(sc);
 
-	if ((ieee->pHTInfo->bCurRxReorderEnable == false) ||
+	if (!ieee->pHTInfo->bCurRxReorderEnable ||
 		!ieee->current_network.qos_data.active ||
 		!IsDataFrame(skb->data) ||
 		IsLegacyDataFrame(skb->data)) {
@@ -1442,8 +1442,7 @@ static int rtllib_rx_InfraAdhoc(struct rtllib_device *ieee, struct sk_buff *skb,
 	}
 
 	/* Indicate packets to upper layer or Rx Reorder */
-	if (ieee->pHTInfo->bCurRxReorderEnable == false || pTS == NULL ||
-	    bToOtherSTA)
+	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL || bToOtherSTA)
 		rtllib_rx_indicate_pkt_legacy(ieee, rx_stats, rxb, dst, src);
 	else
 		RxReorderIndicatePacket(ieee, rxb, pTS, SeqNum);
diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index e0d79daca24a..8add17752eed 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -297,7 +297,7 @@ static void rtllib_tx_query_agg_cap(struct rtllib_device *ieee,
 			netdev_info(ieee->dev, "%s: can't get TS\n", __func__);
 			return;
 		}
-		if (pTxTs->TxAdmittedBARecord.bValid == false) {
+		if (!pTxTs->TxAdmittedBARecord.bValid) {
 			if (ieee->wpa_ie_len && (ieee->pairwise_key_type ==
 			    KEY_TYPE_NA)) {
 				;
@@ -307,7 +307,7 @@ static void rtllib_tx_query_agg_cap(struct rtllib_device *ieee,
 				TsStartAddBaProcess(ieee, pTxTs);
 			}
 			goto FORCED_AGG_SETTING;
-		} else if (pTxTs->bUsingBa == false) {
+		} else if (!pTxTs->bUsingBa) {
 			if (SN_LESS(pTxTs->TxAdmittedBARecord.BaStartSeqCtrl.field.SeqNum,
 			   (pTxTs->TxCurSeq+1)%4096))
 				pTxTs->bUsingBa = true;
@@ -365,9 +365,9 @@ static void rtllib_query_HTCapShortGI(struct rtllib_device *ieee,
 		return;
 	}
 
-	if ((pHTInfo->bCurBW40MHz == true) && pHTInfo->bCurShortGI40MHz)
+	if (pHTInfo->bCurBW40MHz && pHTInfo->bCurShortGI40MHz)
 		tcb_desc->bUseShortGI = true;
-	else if ((pHTInfo->bCurBW40MHz == false) && pHTInfo->bCurShortGI20MHz)
+	else if (!pHTInfo->bCurBW40MHz && pHTInfo->bCurShortGI20MHz)
 		tcb_desc->bUseShortGI = true;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
