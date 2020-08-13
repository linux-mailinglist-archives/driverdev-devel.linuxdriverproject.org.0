Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B62243E62
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Aug 2020 19:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DFED88859;
	Thu, 13 Aug 2020 17:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuKkS1Lnp2em; Thu, 13 Aug 2020 17:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8B05887E0;
	Thu, 13 Aug 2020 17:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8761BF3EA
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 17:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9ACCF86FAF
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 17:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TKrY5Eov6dCk for <devel@linuxdriverproject.org>;
 Thu, 13 Aug 2020 17:35:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp03.smtpout.orange.fr
 [80.12.242.125])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE3E986FA5
 for <devel@driverdev.osuosl.org>; Thu, 13 Aug 2020 17:35:06 +0000 (UTC)
Received: from localhost.localdomain ([93.22.150.113]) by mwinf5d58 with ME
 id F5b1230022T2WRZ035b16U; Thu, 13 Aug 2020 19:35:04 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 13 Aug 2020 19:35:04 +0200
X-ME-IP: 93.22.150.113
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: gregkh@linuxfoundation.org, stephen@brennan.io, rohitsarkar5398@gmail.com,
 pterjan@google.com, paulo.miguel.almeida.rodenas@gmail.com,
 okash.khawaja@gmail.com
Subject: [PATCH] staging: rtl8192u: Do not use GFP_KERNEL in atomic context
Date: Thu, 13 Aug 2020 19:34:58 +0200
Message-Id: <20200813173458.758284-1-christophe.jaillet@wanadoo.fr>
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
Cc: devel@driverdev.osuosl.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

'rtl8192_irq_rx_tasklet()' is a tasklet initialized in
'rtl8192_init_priv_task()'.
From this function it is possible to allocate some memory with the
GFP_KERNEL flag, which is not allowed in the atomic context of a tasklet.

Use GFP_ATOMIC instead.

The call chain is:
  rtl8192_irq_rx_tasklet            (in r8192U_core.c)
    --> rtl8192_rx_nomal            (in r8192U_core.c)
      --> ieee80211_rx              (in ieee80211/ieee80211_rx.c)
        --> RxReorderIndicatePacket (in ieee80211/ieee80211_rx.c)

Fixes: 79a5ccd97209 ("staging: rtl8192u: fix large frame size compiler warning")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 195d963c4fbb..b6fee7230ce0 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -597,7 +597,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	prxbIndicateArray = kmalloc_array(REORDER_WIN_SIZE,
 					  sizeof(struct ieee80211_rxb *),
-					  GFP_KERNEL);
+					  GFP_ATOMIC);
 	if (!prxbIndicateArray)
 		return;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
