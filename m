Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301EC5FB5A
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 18:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E97E87EBA;
	Thu,  4 Jul 2019 16:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xhUl3VEtKhrZ; Thu,  4 Jul 2019 16:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 926D987E81;
	Thu,  4 Jul 2019 16:01:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2206D1BF3D5
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 16:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F6E787E8A
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 16:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8pqiFcfc9Cwn for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 16:00:55 +0000 (UTC)
X-Greylist: delayed 00:22:39 by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 297CD87E7B
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 16:00:55 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1hj3oG-0004wg-Aa; Thu, 04 Jul 2019 17:38:08 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] staging: most: Use spinlock_t instead of struct spinlock
Date: Thu,  4 Jul 2019 17:38:00 +0200
Message-Id: <20190704153803.12739-5-bigeasy@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704153803.12739-1-bigeasy@linutronix.de>
References: <20190704153803.12739-1-bigeasy@linutronix.de>
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
Cc: devel@driverdev.osuosl.org, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christian Gromm <christian.gromm@microchip.com>, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

For spinlocks the type spinlock_t should be used instead of "struct
spinlock".

Use spinlock_t for spinlock's definition.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Christian Gromm <christian.gromm@microchip.com>
Cc: devel@driverdev.osuosl.org
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/staging/most/net/net.c     | 3 +--
 drivers/staging/most/video/video.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index c8a64e2090273..09b604df45e63 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -69,7 +69,7 @@ struct net_dev_context {
 
 static struct list_head net_devices = LIST_HEAD_INIT(net_devices);
 static struct mutex probe_disc_mt; /* ch->linked = true, most_nd_open */
-static struct spinlock list_lock; /* list_head, ch->linked = false, dev_hold */
+static DEFINE_SPINLOCK(list_lock); /* list_head, ch->linked = false, dev_hold */
 static struct core_component comp;
 
 static int skb_to_mamac(const struct sk_buff *skb, struct mbo *mbo)
@@ -507,7 +507,6 @@ static struct core_component comp = {
 
 static int __init most_net_init(void)
 {
-	spin_lock_init(&list_lock);
 	mutex_init(&probe_disc_mt);
 	return most_register_component(&comp);
 }
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index adca250062e1b..fcd9e111e8bd0 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -54,7 +54,7 @@ struct comp_fh {
 };
 
 static struct list_head video_devices = LIST_HEAD_INIT(video_devices);
-static struct spinlock list_lock;
+static DEFINE_SPINLOCK(list_lock);
 
 static inline bool data_ready(struct most_video_dev *mdev)
 {
@@ -540,7 +540,6 @@ static struct core_component comp = {
 
 static int __init comp_init(void)
 {
-	spin_lock_init(&list_lock);
 	return most_register_component(&comp);
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
