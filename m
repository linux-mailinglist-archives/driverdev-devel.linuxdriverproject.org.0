Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C0DEC885
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 19:31:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3268A87E1F;
	Fri,  1 Nov 2019 18:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7P63UDTZEnvX; Fri,  1 Nov 2019 18:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9D3187E01;
	Fri,  1 Nov 2019 18:31:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D6F21BF33C
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 18:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A82286B66
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 18:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLurBjE459LQ for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 18:31:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B29386B54
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 18:31:40 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 41AABB309;
 Fri,  1 Nov 2019 18:31:37 +0000 (UTC)
From: Davidlohr Bueso <dave@stgolabs.net>
To: eric@anholt.net,
	wahrenst@gmx.net
Subject: [PATCH resend] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Date: Fri,  1 Nov 2019 11:29:49 -0700
Message-Id: <20191101182949.21225-1-dave@stgolabs.net>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191028165909.GA469472@kroah.com>
References: <20191028165909.GA469472@kroah.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, dave@stgolabs.net,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is no need to be using a semaphore, or a sleeping lock
in the first place: critical region is extremely short, does not
call into any blocking calls and furthermore lock and unlocking
operations occur in the same context.

Get rid of another semaphore user by replacing it with a spinlock.

Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
---
This is in an effort to further reduce semaphore users in the kernel.

This is a resend, which just seems simpler given the confusions.

 .../staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 8dc730cfe7a6..710d21654128 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -63,7 +63,7 @@ static char *g_free_fragments;
 static struct semaphore g_free_fragments_sema;
 static struct device *g_dev;
 
-static DEFINE_SEMAPHORE(g_free_fragments_mutex);
+static DEFINE_SPINLOCK(g_free_fragments_lock);
 
 static irqreturn_t
 vchiq_doorbell_irq(int irq, void *dev_id);
@@ -528,11 +528,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 
 		WARN_ON(g_free_fragments == NULL);
 
-		down(&g_free_fragments_mutex);
+		spin_lock(&g_free_fragments_lock);
 		fragments = g_free_fragments;
 		WARN_ON(fragments == NULL);
 		g_free_fragments = *(char **) g_free_fragments;
-		up(&g_free_fragments_mutex);
+		spin_unlock(&g_free_fragments_lock);
 		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
 			(fragments - g_fragments_base) / g_fragments_size;
 	}
@@ -591,10 +591,10 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
 			kunmap(pages[num_pages - 1]);
 		}
 
-		down(&g_free_fragments_mutex);
+		spin_lock(&g_free_fragments_lock);
 		*(char **)fragments = g_free_fragments;
 		g_free_fragments = fragments;
-		up(&g_free_fragments_mutex);
+		spin_unlock(&g_free_fragments_lock);
 		up(&g_free_fragments_sema);
 	}
 
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
