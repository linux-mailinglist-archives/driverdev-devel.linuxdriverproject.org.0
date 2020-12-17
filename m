Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA462DD09C
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 12:42:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E263387A50;
	Thu, 17 Dec 2020 11:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyxf0xrB2TJI; Thu, 17 Dec 2020 11:42:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC5CF87A12;
	Thu, 17 Dec 2020 11:42:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53E841BF59F
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 11:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5056A8782B
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 11:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDn1vnZOas43 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 11:42:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8063D87828
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 11:42:16 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id f9so18845088pfc.11
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 03:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iwQofkBQgw3cgjabXt5hlRwi6VP4h40UXirWvwqnPHo=;
 b=BDiS5DiTgIjGS1g3mPNIeyCNxm/HfEftIQB79tO0WJ95wfDH9LtEHbzFPk6YnWlysV
 1RIYnhTG6k4e+QEwqu2HywpkOKCxIJCcq96hslKrqx2vG8u1VwGJd56HFVNfVVgBW/dc
 QjmS5NpRc7v40TOnk9xpIDEO5bcNn1vOwKQ6YUfxAuufqjEBwqRaL9s/DtmbBVG93gRC
 jz0r/3odyFJZcmhIoUAFrDlBczenl+Qi/7Mx9F2eSu/KjxlaLMpevkwh0BdmQnhPwjnc
 WzBhYWHHQyzXgfvcuacLa03XTe/1yeGRZXf9MV2hPwhnnAE4jQ4RRvRJ6gIylnEn/Wke
 9a7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iwQofkBQgw3cgjabXt5hlRwi6VP4h40UXirWvwqnPHo=;
 b=IZ+l8WFebvS2zXtaLQBacHtvxjgts/0twC7uh40KhO4SsqvYjTEpBI7ggK7tQTiJWl
 gXmkNG34HTHE3v4g/bh9z0n7WpeoQrT2eO2FTeqnjKjoqWXeJ5en0AVMnNiQQw8aETO6
 M0HKF6fbhuFm5R4N0sq356ZAeeZoBVPe71PF2H3n+VhcMCDANP8pR0yYGnq9Xu5rHYL7
 Mhrnqn4SUJKC65RYuVoNI1c3Lbq5O4uwZ6/pq2UuHPA82YUPDJ2c1q8OTp1ATELOO3r0
 lXCQ6RDVPRn6e3wnBXZhK5FkV0mgPcjAsm4PyaU0IDq6oektOyJIjLk8aCHdMadf1XJ8
 Za/g==
X-Gm-Message-State: AOAM533hTy+WrS1Bk8Wux/WhI+5E9EzbQmiSKU2KEedlaV2z7UFpGgkB
 HdyDy6R+qoTMbiAEMkE8Wqw=
X-Google-Smtp-Source: ABdhPJy3ZyRwfTZtC3knrpc5fQngME5J9+pTs4eTHBYcLtQuGXaGmN4wxsRa4KFYbLkIbwlBOXYLXQ==
X-Received: by 2002:a63:1626:: with SMTP id w38mr6072860pgl.278.1608205335820; 
 Thu, 17 Dec 2020 03:42:15 -0800 (PST)
Received: from localhost.localdomain ([2402:3a80:403:493:5d38:be:6298:62ae])
 by smtp.googlemail.com with ESMTPSA id j12sm5208765pjd.8.2020.12.17.03.42.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 03:42:15 -0800 (PST)
From: Aditya Srivastava <yashsri421@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: fix bool comparison in expressions
Date: Thu, 17 Dec 2020 17:12:04 +0530
Message-Id: <20201217114204.12029-1-yashsri421@gmail.com>
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
Cc: devel@driverdev.osuosl.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 yashsri421@gmail.com
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
- the patch applies perfectly over next-20201204

 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 4 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c   | 4 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c     | 4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c           | 4 ++--
 drivers/staging/rtl8192e/rtllib_tx.c           | 8 ++++----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 9f869fb3eaa8..c4a3fc79fb40 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -129,9 +129,9 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 		RegRCR = rtl92e_readl(dev, RCR);
 		priv->ReceiveConfig = RegRCR;
 
-		if (Type == true)
+		if (Type)
 			RegRCR |= (RCR_CBSSID);
-		else if (Type == false)
+		else if (!Type)
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
index d31b5e1c8df4..217557ac8d80 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -924,7 +924,7 @@ static int rtllib_rx_check_duplicate(struct rtllib_device *ieee,
 	sc = le16_to_cpu(hdr->seq_ctl);
 	frag = WLAN_GET_SEQ_FRAG(sc);
 
-	if ((ieee->pHTInfo->bCurRxReorderEnable == false) ||
+	if ((!ieee->pHTInfo->bCurRxReorderEnable) ||
 		!ieee->current_network.qos_data.active ||
 		!IsDataFrame(skb->data) ||
 		IsLegacyDataFrame(skb->data)) {
@@ -1442,7 +1442,7 @@ static int rtllib_rx_InfraAdhoc(struct rtllib_device *ieee, struct sk_buff *skb,
 	}
 
 	/* Indicate packets to upper layer or Rx Reorder */
-	if (ieee->pHTInfo->bCurRxReorderEnable == false || pTS == NULL ||
+	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL ||
 	    bToOtherSTA)
 		rtllib_rx_indicate_pkt_legacy(ieee, rx_stats, rxb, dst, src);
 	else
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
