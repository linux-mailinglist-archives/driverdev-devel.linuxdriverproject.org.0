Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0F2FEB1C
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Nov 2019 08:28:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 587A386502;
	Sat, 16 Nov 2019 07:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y_KuuaGVQAmm; Sat, 16 Nov 2019 07:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1571C857CB;
	Sat, 16 Nov 2019 07:28:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3BAC1BF578
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 07:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E168D86A4D
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 07:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 340L-TRGsBfc for <devel@linuxdriverproject.org>;
 Sat, 16 Nov 2019 07:28:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0201.hostedemail.com
 [216.40.44.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA81186A3C
 for <devel@driverdev.osuosl.org>; Sat, 16 Nov 2019 07:28:23 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 4D12918030087
 for <devel@driverdev.osuosl.org>; Sat, 16 Nov 2019 06:52:15 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 96FCD837F24D;
 Sat, 16 Nov 2019 06:52:12 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:69:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:2892:2904:2914:3138:3139:3140:3141:3142:3354:3622:3867:3870:3871:3872:4250:4321:4605:5007:6119:7903:8957:9592:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12683:12740:12760:12895:13439:14659:14721:21080:21099:21627:21740:30046:30054:30075:30083:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: waste86_1326b823dc90e
X-Filterd-Recvd-Size: 4109
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Sat, 16 Nov 2019 06:52:11 +0000 (UTC)
Message-ID: <1b188286647007055e90565da47f562d303aa8e2.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8192u: fix indentation issue
From: Joe Perches <joe@perches.com>
To: Colin King <colin.king@canonical.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Date: Fri, 15 Nov 2019 22:51:52 -0800
In-Reply-To: <3fd995ebb9ec87b202942fa1f000755c2d3cc4cb.camel@perches.com>
References: <20191114095430.132120-1-colin.king@canonical.com>
 <3fd995ebb9ec87b202942fa1f000755c2d3cc4cb.camel@perches.com>
User-Agent: Evolution 3.34.1-2 
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

On Fri, 2019-11-15 at 22:45 -0800, Joe Perches wrote:
> This function might as well be deleted instead as
> rtl819xusb_beacon_tx is a noop function in
> drivers/staging/rtl8192u/r8192U_core.c

Perhaps:
---
 drivers/staging/rtl8192u/r8192U.h        |  1 -
 drivers/staging/rtl8192u/r8192U_core.c   |  7 -------
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 22 ----------------------
 3 files changed, 30 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index ec33fb9..0891db 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -1111,7 +1111,6 @@ int rtl8192_up(struct net_device *dev);
 void rtl8192_commit(struct net_device *dev);
 void rtl8192_set_chan(struct net_device *dev, short ch);
 void rtl8192_set_rxconf(struct net_device *dev);
-void rtl819xusb_beacon_tx(struct net_device *dev, u16 tx_rate);
 
 void EnableHWSecurityConfig8192(struct net_device *dev);
 void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType, u8 *MacAddr, u8 DefaultKey, u32 *KeyContent);
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 48f1591e..98705e 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1163,13 +1163,6 @@ static void rtl8192_net_update(struct net_device *dev)
 	}
 }
 
-/* temporary hw beacon is not used any more.
- * open it when necessary
- */
-void rtl819xusb_beacon_tx(struct net_device *dev, u16  tx_rate)
-{
-}
-
 short rtl819xU_tx_cmd(struct net_device *dev, struct sk_buff *skb)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index e064f4..83d1fc7 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -165,25 +165,6 @@ static void cmpk_handle_tx_feedback(struct net_device *dev, u8 *pmsg)
 	 */
 }
 
-static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
-{
-	struct r8192_priv *priv = ieee80211_priv(dev);
-	u16 tx_rate;
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
-
-		rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */
-}
-
 /*-----------------------------------------------------------------------------
  * Function:    cmpk_handle_interrupt_status()
  *
@@ -238,9 +219,6 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 			priv->ieee80211->bibsscoordinator = false;
 			priv->stats.txbeaconerr++;
 		}
-
-		if (rx_intr_status.interrupt_status & ISR_BCN_TIMER_INTR)
-			cmdpkt_beacontimerinterrupt_819xusb(dev);
 	}
 
 	/* Other information in interrupt status we need? */


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
