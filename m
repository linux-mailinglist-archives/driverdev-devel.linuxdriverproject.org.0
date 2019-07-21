Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4791B6F447
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 19:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C63B85008;
	Sun, 21 Jul 2019 17:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 285-cw7-UTmW; Sun, 21 Jul 2019 17:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 450AA849BE;
	Sun, 21 Jul 2019 17:09:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A05E01BF588
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 17:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 992A8876F2
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 17:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8yolgxgv7zev for <devel@linuxdriverproject.org>;
 Sun, 21 Jul 2019 17:08:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp01.smtpout.orange.fr
 [80.12.242.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DFDCB875B2
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 17:08:57 +0000 (UTC)
Received: from localhost.localdomain ([92.140.204.221]) by mwinf5d01 with ME
 id fV8q2000Q4n7eLC03V8rGm; Sun, 21 Jul 2019 19:08:55 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 21 Jul 2019 19:08:55 +0200
X-ME-IP: 92.140.204.221
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: david.kershner@unisys.com, gregkh@linuxfoundation.org,
 hariprasad.kelam@gmail.com, petrm@mellanox.com, davem@davemloft.net,
 jannh@google.com
Subject: [PATCH] staging: unisys: visornic: Update the description of
 'poll_for_irq()'
Date: Sun, 21 Jul 2019 19:08:24 +0200
Message-Id: <20190721170824.3412-1-christophe.jaillet@wanadoo.fr>
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
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, sparmaintainer@unisys.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit e99e88a9d2b06 ("treewide: setup_timer() -> timer_setup()") has
updated the parameters of 'poll_for_irq()' but not the comment above the
function.

Update the comment and fix a typo.
s/visronic/visornic/

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/staging/unisys/visornic/visornic_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index 9d4f1dab0968..40dd573e73c3 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -1750,7 +1750,8 @@ static int visornic_poll(struct napi_struct *napi, int budget)
 }
 
 /* poll_for_irq	- checks the status of the response queue
- * @v: Void pointer to the visronic devdata struct.
+ * @t: pointer to the 'struct timer_list' from which we can retrieve the
+ *     the visornic devdata struct.
  *
  * Main function of the vnic_incoming thread. Periodically check the response
  * queue and drain it if needed.
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
