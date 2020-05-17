Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861521D6CD0
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 22:22:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E67B788512;
	Sun, 17 May 2020 20:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFl2qm09chXk; Sun, 17 May 2020 20:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 621AE882F3;
	Sun, 17 May 2020 20:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73F1A1BF3F7
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 20:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 705F5863DB
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 20:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i2q0_l-H0Q7I for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 20:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E1838639F
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 20:22:35 +0000 (UTC)
IronPort-SDR: HpMPLNksoXJO/E2UJJ7ZlPxFxsyWFaR1ZmJ5B/Pn5biTMsRLGaSTQi4s6u+gUAJfUx3NRu4zXY
 kPBKo+OW30QQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 13:22:35 -0700
IronPort-SDR: 9aek+GDFWBwb8l4OXELI/9r9yhBrUbn4+pYxpO1CvikuvJ8L8nFuQZ67TNsbg/51Udj6JLkdFI
 /OV/yg8zHqag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,404,1583222400"; d="scan'208";a="263753551"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 17 May 2020 13:22:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jaPns-00063p-Or; Mon, 18 May 2020 04:22:32 +0800
Date: Mon, 18 May 2020 04:22:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Pascal Terjan <pterjan@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH] staging: rtl8192u: indicate_packets() can be static
Message-ID: <20200517202216.GA24634@8c544063f25c>
References: <20200517165819.136715-1-pterjan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517165819.136715-1-pterjan@google.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Pascal Terjan <pterjan@google.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Signed-off-by: kbuild test robot <lkp@intel.com>
---
 ieee80211_rx.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 3309f64be4c94..bceff1ba3d7d4 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -520,7 +520,7 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	return true;
 }
 
-void indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb *rxb)
+static void indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb *rxb)
 {
 	struct net_device_stats *stats = &ieee->stats;
 	struct net_device *dev = ieee->dev;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
