Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 443FB23FDC8
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Aug 2020 13:19:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 445798847A;
	Sun,  9 Aug 2020 11:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxVOcxWnY0k4; Sun,  9 Aug 2020 11:18:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90D6288485;
	Sun,  9 Aug 2020 11:18:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 890421BF366
 for <devel@linuxdriverproject.org>; Sun,  9 Aug 2020 11:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 85AF588281
 for <devel@linuxdriverproject.org>; Sun,  9 Aug 2020 11:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id znHE7tnaSP73 for <devel@linuxdriverproject.org>;
 Sun,  9 Aug 2020 11:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp05.smtpout.orange.fr
 [80.12.242.127])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB49788256
 for <devel@driverdev.osuosl.org>; Sun,  9 Aug 2020 11:18:54 +0000 (UTC)
Received: from localhost.localdomain ([93.22.150.139]) by mwinf5d61 with ME
 id DPJn2300A30hzCV03PJo69; Sun, 09 Aug 2020 13:18:52 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 09 Aug 2020 13:18:52 +0200
X-ME-IP: 93.22.150.139
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: gregkh@linuxfoundation.org, sfr@canb.auug.org.au, longman@redhat.com,
 akpm@linux-foundation.org, mhocko@suse.com, hannes@cmpxchg.org
Subject: [PATCH] staging: ks7010: Do not use GFP_KERNEL in atomic context
Date: Sun,  9 Aug 2020 13:18:46 +0200
Message-Id: <20200809111846.745826-1-christophe.jaillet@wanadoo.fr>
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

A possible call chain is as follow:
  ks_wlan_start_xmit                    (ks_wlan_net.c)
    --> hostif_data_request             (ks_hostif.c)
      --> michael_mic                   (ks_hostif.c)

'ks_wlan_start_xmit()' is a '.ndo_start_xmit()' function (see
net_device_ops structure). Such calls are guarded by the __netif_tx_lock
spinlock. So memory allocation must be atomic.

So, use GFP_ATOMIC instead of GFP_KERNEL 'in michael_mic()'

Fixes: ???
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This is completely speculative. I don't know if the call chain given above
if possible in RL application.
So review carefully :)

If the fix is correct, it is also more the starting point of a bigger
change, because in 'michael_mic()' there is a call to
'crypto_alloc_shash()' and this function uses GFP_KERNEL internally (in
'crypto_create_tfm()')
Should this need to be changed, I don't know how 'ks_hostif.c' should be
fixed. Changing allocation in 'crypto/api.c' looks like an overkill.

In other word, I think that my patch is wrong, but don't know what else to
propose :).
---
 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index d70b671b06aa..c66f50e4a158 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -212,7 +212,7 @@ michael_mic(u8 *key, u8 *data, unsigned int len, u8 priority, u8 *result)
 	if (ret < 0)
 		goto err_free_tfm;
 
-	desc = kmalloc(sizeof(*desc) + crypto_shash_descsize(tfm), GFP_KERNEL);
+	desc = kmalloc(sizeof(*desc) + crypto_shash_descsize(tfm), GFP_ATOMIC);
 	if (!desc) {
 		ret = -ENOMEM;
 		goto err_free_tfm;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
