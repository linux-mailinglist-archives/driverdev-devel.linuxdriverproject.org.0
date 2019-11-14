Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D67DFC318
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 10:54:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81D268A01F;
	Thu, 14 Nov 2019 09:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PSg+zF5BcEvj; Thu, 14 Nov 2019 09:54:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBFA489EEC;
	Thu, 14 Nov 2019 09:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E14FD1BF5A4
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 09:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBE0A88F9A
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 09:54:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GEQEqNcOtgvi for <devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 09:54:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F55888F99
 for <devel@driverdev.osuosl.org>; Thu, 14 Nov 2019 09:54:33 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iVBpf-0003KI-3E; Thu, 14 Nov 2019 09:54:31 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192u: fix indentation issue
Date: Thu, 14 Nov 2019 09:54:30 +0000
Message-Id: <20191114095430.132120-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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

There is a block of statements that are indented
too deeply, remove the extraneous tabs.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 25 ++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index e064f43fd8b6..bc98cdaf61ec 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -169,19 +169,20 @@ static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u16 tx_rate;
-		/* 87B have to S/W beacon for DTM encryption_cmn. */
-		if (priv->ieee80211->current_network.mode == IEEE_A ||
-		    priv->ieee80211->current_network.mode == IEEE_N_5G ||
-		    (priv->ieee80211->current_network.mode == IEEE_N_24G &&
-		     (!priv->ieee80211->pHTInfo->bCurSuppCCK))) {
-			tx_rate = 60;
-			DMESG("send beacon frame  tx rate is 6Mbpm\n");
-		} else {
-			tx_rate = 10;
-			DMESG("send beacon frame  tx rate is 1Mbpm\n");
-		}
 
-		rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */
+	/* 87B have to S/W beacon for DTM encryption_cmn. */
+	if (priv->ieee80211->current_network.mode == IEEE_A ||
+	    priv->ieee80211->current_network.mode == IEEE_N_5G ||
+	    (priv->ieee80211->current_network.mode == IEEE_N_24G &&
+	     (!priv->ieee80211->pHTInfo->bCurSuppCCK))) {
+		tx_rate = 60;
+		DMESG("send beacon frame  tx rate is 6Mbpm\n");
+	} else {
+		tx_rate = 10;
+		DMESG("send beacon frame  tx rate is 1Mbpm\n");
+	}
+
+	rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */
 }
 
 /*-----------------------------------------------------------------------------
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
