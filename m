Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 924B94AF92
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 03:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17FDC20518;
	Wed, 19 Jun 2019 01:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwMyD4b9Ou81; Wed, 19 Jun 2019 01:42:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9596320509;
	Wed, 19 Jun 2019 01:42:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B514C1BF276
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 01:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AE5AC2038B
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 01:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HiC8ByNJZESC for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 01:42:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id DFE1F20378
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 01:42:29 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s27so8688569pgl.2
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=STB7h5+2Y7cU4MpOvwG2Z7A2iyL9rnqXUTWvSKVLNGE=;
 b=QBLv4pZB/j9bPAtUHIqRpmFZLnVtzbS8SwUjVbQAZdU8UNgyW/x2j60nPnhfI3PeXC
 JBX4DTLeonBSFqHh5FpPvto2MR1RKxaQKzB/ERZmV8qcnbN4vR1IVj71GCymoi2YCxZ2
 gZ+luNRPxZptjweuJJNqIF0d7ml7pSZM9g+ftk1YWW49oA0RFV4rEeOCE7lWmU9UshoC
 0j8/eeuzwtqTWi/KEc4jQZ8RzMuJrT5EZMDPW3lZ7Q4EBuNsLle1asxzQnAH1jFyU/QM
 m5dQujdlP5+BJQbEDGsrSUYUx49cZtMt8EP4KddwczQsJJuCQLeqyOaFQwe+1Z9dkBQT
 2Ahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=STB7h5+2Y7cU4MpOvwG2Z7A2iyL9rnqXUTWvSKVLNGE=;
 b=mcfqrah+Oog87cmX73OmJCFPuggSElCylwNeR6MaBsuAKRq0bVK1FTrYYhzMrLzXkv
 1psiZ1wc3BvzDvMdxax+is25AYRWO+EUfoiDD7o2ikZoEOxBo96wmgA9Ea9wy5RBBiVd
 DEgZ8zlJOOZSiZq7Iaav5G80JKfaw1ozwh/LCSmUvYSqOsmhW9dhGlc6km6HOKTmkeek
 t7/B5Qbm3QEowvtwRZXul05ifpMGhM7N0Y0yIzWS//4b5LWTEPNpY256iLrBGxQO7aR1
 hmaXkLu2cLl6E3jYyK8na9aBQjKTQ5VY3QHWxRjKsVBKa+sw5hgJzL6qShPIdpKgJQB9
 +T3A==
X-Gm-Message-State: APjAAAWpHVVxtGD8x0o/OkC1CCY51OfXhEbT7m0pySd6kGhRmJXlAz+j
 JPZy/W5BsWE9gvx8/o8Etjh6YRBSkCw=
X-Google-Smtp-Source: APXvYqwv0YdviDGa8ioopDbSPw8J6EpmHfrs20Dy1AsXZ9hUEHm2dLbHybwfSC+E8xHQxJVPQGidOQ==
X-Received: by 2002:a17:90a:2486:: with SMTP id
 i6mr8266681pje.125.1560908549332; 
 Tue, 18 Jun 2019 18:42:29 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id q1sm20769182pfn.178.2019.06.18.18.42.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 18:42:28 -0700 (PDT)
Date: Tue, 18 Jun 2019 18:42:26 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Fix Brace Style Issues in if/else
 statements
Message-ID: <20190619014223.GA2186@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: shobhitkukreti@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleaned Up code to fix brace style issues reported by checkpatch:

-space required before the open brace '{'
-Unbalanced braces around if/else statements

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index fd0be52..342ee26 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -112,9 +112,9 @@ void DBG_BT_INFO(u8 *dbgmsg)
 /*  */
 static u8 halbtcoutsrc_IsBtCoexistAvailable(PBTC_COEXIST pBtCoexist)
 {
-	if (!pBtCoexist->bBinded || !pBtCoexist->Adapter){
+	if (!pBtCoexist->bBinded || !pBtCoexist->Adapter)
 		return false;
-	}
+
 	return true;
 }
 
@@ -256,13 +256,11 @@ static void halbtcoutsrc_AggregationCheck(PBTC_COEXIST pBtCoexist)
 	padapter = pBtCoexist->Adapter;
 	bNeedToAct = false;
 
-	if (pBtCoexist->btInfo.bRejectAggPkt)
+	if (pBtCoexist->btInfo.bRejectAggPkt) {
 		rtw_btcoex_RejectApAggregatedPacket(padapter, true);
-	else {
-
+	} else {
 		if (pBtCoexist->btInfo.bPreBtCtrlAggBufSize !=
-			pBtCoexist->btInfo.bBtCtrlAggBufSize){
-
+			pBtCoexist->btInfo.bBtCtrlAggBufSize) {
 			bNeedToAct = true;
 			pBtCoexist->btInfo.bPreBtCtrlAggBufSize = pBtCoexist->btInfo.bBtCtrlAggBufSize;
 		}
@@ -816,11 +814,10 @@ static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 D
 	PBTC_COEXIST		pBtCoexist = (PBTC_COEXIST)pBtcContext;
 	struct adapter *Adapter = pBtCoexist->Adapter;
 
-	if (BTC_INTF_SDIO == pBtCoexist->chipInterface) {
+	if (BTC_INTF_SDIO == pBtCoexist->chipInterface)
 		rtw_write8(Adapter, SDIO_LOCAL_BASE | RegAddr, Data);
-	} else {
+	else
 		rtw_write8(Adapter, RegAddr, Data);
-	}
 }
 
 static void halbtcoutsrc_SetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask, u32 Data)
@@ -1196,13 +1193,13 @@ void EXhalbtcoutsrc_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 pktType)
 	if (pBtCoexist->bManualControl)
 		return;
 
-	if (PACKET_DHCP == pktType)
+	if (PACKET_DHCP == pktType) {
 		packetType = BTC_PACKET_DHCP;
-	else if (PACKET_EAPOL == pktType)
+	} else if (PACKET_EAPOL == pktType) {
 		packetType = BTC_PACKET_EAPOL;
-	else if (PACKET_ARP == pktType)
+	} else if (PACKET_ARP == pktType) {
 		packetType = BTC_PACKET_ARP;
-	else {
+	} else {
 		packetType = BTC_PACKET_UNKNOWN;
 		return;
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
