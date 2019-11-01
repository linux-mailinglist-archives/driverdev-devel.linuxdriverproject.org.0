Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EF7EC78A
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 18:29:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF85787E01;
	Fri,  1 Nov 2019 17:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rvsh9hGYMvY5; Fri,  1 Nov 2019 17:29:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D01A587846;
	Fri,  1 Nov 2019 17:29:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C10061BF5AA
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 17:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD6F187622
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 17:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y40j1G8yI7k0 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 17:29:43 +0000 (UTC)
X-Greylist: delayed 00:07:39 by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp05.smtpout.orange.fr
 [80.12.242.127])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0B498761E
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 17:29:42 +0000 (UTC)
Received: from localhost.localdomain ([93.22.132.57]) by mwinf5d40 with ME
 id LhMz210031ETPpp03hMzam; Fri, 01 Nov 2019 18:22:00 +0100
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 01 Nov 2019 18:22:00 +0100
X-ME-IP: 93.22.132.57
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: Fix a memory leak in 'wfx_upload_beacon'
Date: Fri,  1 Nov 2019 18:21:51 +0100
Message-Id: <20191101172151.14295-1-christophe.jaillet@wanadoo.fr>
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
Cc: devel@driverdev.osuosl.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The current code is a no-op, because all it can do is 'dev_kfree_skb(NULL)'
Revert the test to free skb, if not NULL.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This patch is purely speculative.

The 'if  (...)' could also be removed completely if we refactor the code
and return directly at the beginning of the function.
Or the 'return -ENOMEM' should be 'err = -ENOMEM; goto done;' in order to
avoid a mixup of goto and direct return.
---
 drivers/staging/wfx/sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..e14da8dce388 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -906,7 +906,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
 	wfx_fwd_probe_req(wvif, false);
 
 done:
-	if (!skb)
+	if (skb)
 		dev_kfree_skb(skb);
 	return ret;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
