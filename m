Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8423D39F0
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 09:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A98F87D97;
	Fri, 11 Oct 2019 07:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n1guVJE5bNVM; Fri, 11 Oct 2019 07:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BC1087EBD;
	Fri, 11 Oct 2019 07:21:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 895501BF3F7
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 07:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8501E20399
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 07:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONgPdtP050bK for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 07:21:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 956BB20370
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 07:21:03 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id q24so4028320plr.13
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 00:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZEe+doT9RkH0Sc3++Qlx3Z67qWPEyfcCZdqfrOnL/uU=;
 b=M5bg+vUFq7KUP5I736VPJC9Xc3g0O3vNA2PuVRZyC6JfxYuarQxjrgin6pccPPweZr
 d9C5bLFcgxo5iGWEIW7Hj5fM9IjSlMumoeq0u+ZluO1FlSQ1u+Vqk6UHD1K5jHGVwCYv
 uBo12VZe5Pp+Z9FHAEwlR1aRwGrt/Dr/z9hkRS4PpZ2dm5cuAgp42WmG7y8GYEVO8r2w
 pxJrWixePtbialIzXsNAOLQksBymPngWaCEHMZL6ayrshZInguLi5SHKHgiRPzHoAxZv
 o7E/YihhTxsFQcUPYpDDnFMbAB5qWOth/Yxtt5L2pwq870tgfD05BlTmxajRz5IMcrOL
 bq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZEe+doT9RkH0Sc3++Qlx3Z67qWPEyfcCZdqfrOnL/uU=;
 b=JQajLpiL/oijPn5BLFRphX+WPEGzYbYjVamxenNIBEPzT5k+FupPQ7zZYBSfejkXTb
 9BLb2dhJfWo9sJ3n8+mJZcGtTx3MHNoilgR5h0SEK+KLl9b0EP90WUG3fETGeFwMFdUT
 8bsBMQX3HD6cP2B9maZ6+8PD6PBy0RdBY1va9ePvX2WinavIjf2gmB7lL1E9GnCIDOCQ
 lxY8MP0Q+fXgV2FvsxFMxDrowhG/nl1mB0NFTmZt9KB4bu2m9YEIl/NIHMK5jGID74oG
 RgTs4bcRL0+HDoM13vIUuWabbdeD6Q4IBSQl2IFY1Ej8+zESWE7qIaM6oKs7e++TIRlN
 f5NQ==
X-Gm-Message-State: APjAAAUuWpHVOKmJ+zwlOcBMoSgU1NouAkygXvHhloXTMQz+QeDKteA4
 PhWToO+1I9wS0uepzGG/fPvO/uLtyIBxaA==
X-Google-Smtp-Source: APXvYqxzNWoid5FdHTj5xn8IMd+0zxKDaORdqb981siIbDQkALU0PRx+A3uZO0b3g0WrcZH1kdbx6Q==
X-Received: by 2002:a17:902:bb92:: with SMTP id
 m18mr13060501pls.297.1570778462901; 
 Fri, 11 Oct 2019 00:21:02 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 20sm8359126pfp.153.2019.10.11.00.20.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 00:21:02 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: isdn: remove assignment in if conditionals
Date: Fri, 11 Oct 2019 10:20:44 +0300
Message-Id: <20191011072044.7022-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, isdn@linux-pingi.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variable assignment in if statements in
drivers/staging/isdn/avm/b1.c.
Issues reported by checkpatch.pl as:
ERROR: do not use assignment in if condition

Also refactor code around some if statements to remove comparisons
to NULL and unnecessary braces in single statement blocks.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/isdn/avm/b1.c | 41 ++++++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/isdn/avm/b1.c b/drivers/staging/isdn/avm/b1.c
index 40ca1e8fa09f..32ec8cf31fd0 100644
--- a/drivers/staging/isdn/avm/b1.c
+++ b/drivers/staging/isdn/avm/b1.c
@@ -261,9 +261,10 @@ int b1_loaded(avmcard *card)
 	b1_put_byte(base, SEND_POLL);
 	for (stop = jiffies + tout * HZ; time_before(jiffies, stop);) {
 		if (b1_rx_full(base)) {
-			if ((ans = b1_get_byte(base)) == RECEIVE_POLL) {
+			ans = b1_get_byte(base);
+			if (ans == RECEIVE_POLL)
 				return 1;
-			}
+
 			printk(KERN_ERR "%s: b1_loaded: got 0x%x, firmware not running\n",
 			       card->name, ans);
 			return 0;
@@ -284,8 +285,9 @@ int b1_load_firmware(struct capi_ctr *ctrl, capiloaddata *data)
 	int retval;
 
 	b1_reset(port);
+	retval = b1_load_t4file(card, &data->firmware);
 
-	if ((retval = b1_load_t4file(card, &data->firmware))) {
+	if (retval) {
 		b1_reset(port);
 		printk(KERN_ERR "%s: failed to load t4file!!\n",
 		       card->name);
@@ -295,7 +297,8 @@ int b1_load_firmware(struct capi_ctr *ctrl, capiloaddata *data)
 	b1_disable_irq(port);
 
 	if (data->configuration.len > 0 && data->configuration.data) {
-		if ((retval = b1_load_config(card, &data->configuration))) {
+		retval = b1_load_config(card, &data->configuration);
+		if (retval) {
 			b1_reset(port);
 			printk(KERN_ERR "%s: failed to load config!!\n",
 			       card->name);
@@ -525,7 +528,9 @@ irqreturn_t b1_interrupt(int interrupt, void *devptr)
 			MsgLen = 30;
 			CAPIMSG_SETLEN(card->msgbuf, 30);
 		}
-		if (!(skb = alloc_skb(DataB3Len + MsgLen, GFP_ATOMIC))) {
+
+		skb = alloc_skb(DataB3Len + MsgLen, GFP_ATOMIC);
+		if (!skb) {
 			printk(KERN_ERR "%s: incoming packet dropped\n",
 			       card->name);
 		} else {
@@ -539,7 +544,9 @@ irqreturn_t b1_interrupt(int interrupt, void *devptr)
 
 		ApplId = (unsigned) b1_get_word(card->port);
 		MsgLen = b1_get_slice(card->port, card->msgbuf);
-		if (!(skb = alloc_skb(MsgLen, GFP_ATOMIC))) {
+		skb = alloc_skb(MsgLen, GFP_ATOMIC);
+
+		if (!skb) {
 			printk(KERN_ERR "%s: incoming packet dropped\n",
 			       card->name);
 			spin_unlock_irqrestore(&card->lock, flags);
@@ -663,11 +670,17 @@ int b1_proc_show(struct seq_file *m, void *v)
 	seq_printf(m, "%-16s %s\n", "type", s);
 	if (card->cardtype == avm_t1isa)
 		seq_printf(m, "%-16s %d\n", "cardnr", card->cardnr);
-	if ((s = cinfo->version[VER_DRIVER]) != NULL)
+
+	s = cinfo->version[VER_DRIVER];
+	if (s)
 		seq_printf(m, "%-16s %s\n", "ver_driver", s);
-	if ((s = cinfo->version[VER_CARDTYPE]) != NULL)
+
+	s = cinfo->version[VER_CARDTYPE];
+	if (s)
 		seq_printf(m, "%-16s %s\n", "ver_cardtype", s);
-	if ((s = cinfo->version[VER_SERIAL]) != NULL)
+
+	s = cinfo->version[VER_SERIAL];
+	if (s)
 		seq_printf(m, "%-16s %s\n", "ver_serial", s);
 
 	if (card->cardtype != avm_m1) {
@@ -784,13 +797,15 @@ static int __init b1_init(void)
 	char *p;
 	char rev[32];
 
-	if ((p = strchr(revision, ':')) != NULL && p[1]) {
+	p = strchr(revision, ':');
+	if (p && p[1]) {
 		strlcpy(rev, p + 2, 32);
-		if ((p = strchr(rev, '$')) != NULL && p > rev)
+		p = strchr(rev, '$');
+		if (p && p > rev)
 			*(p - 1) = 0;
-	} else
+	} else {
 		strcpy(rev, "1.0");
-
+	}
 	printk(KERN_INFO "b1: revision %s\n", rev);
 
 	return 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
