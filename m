Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE50376449
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 13:22:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B11D088513;
	Fri, 26 Jul 2019 11:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4vyYTouERDED; Fri, 26 Jul 2019 11:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 579DB884FE;
	Fri, 26 Jul 2019 11:22:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2291BF3EC
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 11:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87FE889E6C
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 11:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJLnTRJv41hb for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 11:22:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFB9689E0A
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:22:19 +0000 (UTC)
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hqyIh-0000gP-7L; Fri, 26 Jul 2019 13:22:15 +0200
Date: Fri, 26 Jul 2019 13:22:14 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: most: Use DEFINE_SPINLOCK() instead of struct
 spinlock
In-Reply-To: <20190715191933.GA10934@kroah.com>
Message-ID: <alpine.DEB.2.21.1907261319100.1791@nanos.tec.linutronix.de>
References: <20190704153803.12739-1-bigeasy@linutronix.de>
 <20190704153803.12739-5-bigeasy@linutronix.de>
 <20190715191933.GA10934@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
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
Cc: devel@driverdev.osuosl.org, Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

For spinlocks the type spinlock_t should be used instead of "struct
spinlock".

Use DEFINE_SPINLOCK() and spare the run time initialization

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/20190704153803.12739-5-bigeasy@linutronix.de
---
V2: Rebase on 5.3-rc1. Massaged change log
---
 drivers/staging/most/net/net.c     |    3 +--
 drivers/staging/most/video/video.c |    3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -69,7 +69,7 @@ struct net_dev_context {
 
 static struct list_head net_devices = LIST_HEAD_INIT(net_devices);
 static struct mutex probe_disc_mt; /* ch->linked = true, most_nd_open */
-static struct spinlock list_lock; /* list_head, ch->linked = false, dev_hold */
+static DEFINE_SPINLOCK(list_lock); /* list_head, ch->linked = false, dev_hold */
 static struct core_component comp;
 
 static int skb_to_mamac(const struct sk_buff *skb, struct mbo *mbo)
@@ -509,7 +509,6 @@ static int __init most_net_init(void)
 {
 	int err;
 
-	spin_lock_init(&list_lock);
 	mutex_init(&probe_disc_mt);
 	err = most_register_component(&comp);
 	if (err)
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -54,7 +54,7 @@ struct comp_fh {
 };
 
 static struct list_head video_devices = LIST_HEAD_INIT(video_devices);
-static struct spinlock list_lock;
+static DEFINE_SPINLOCK(list_lock);
 
 static inline bool data_ready(struct most_video_dev *mdev)
 {
@@ -538,7 +538,6 @@ static int __init comp_init(void)
 {
 	int err;
 
-	spin_lock_init(&list_lock);
 	err = most_register_component(&comp);
 	if (err)
 		return err;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
