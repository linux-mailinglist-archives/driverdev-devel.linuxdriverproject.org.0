Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30741D8CF2
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 03:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3705F882CC;
	Tue, 19 May 2020 01:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRcXICLS-ylS; Tue, 19 May 2020 01:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFD27882BD;
	Tue, 19 May 2020 01:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F28471BF359
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 01:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E98EF882BD
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 01:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Br6dF3THkDKp for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 01:12:37 +0000 (UTC)
X-Greylist: delayed 00:26:47 by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 213DB882B0
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 01:12:37 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id er16so5217520qvb.0
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 18:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=leaflabs-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=SpKrU1LZHPDz7aM+ZRqKdIZt+rjg7Am2w59IOfBqqwA=;
 b=mJipiPmcY8YsiwBF7viBGc6FPfNozTL9S6e1V2gzodnopOOTOJ+uNbxF7ncPoo5r9R
 +hyfgU6U39JjKrZcg+XoLcEKYRQwnQq1GpJOCv4ZrtdzI0mGmsd+63/2DUF2MPheWuWC
 zrjjNsAHzA2M/ye9HNdKSCG3+X1q0sB2PjgdjGAID48Aj3zWJyHold9UG2QykiuUzXzK
 I13mriaXSN/c1yr4+3LIh8m3DxvZvpW8BUWI4xJs0gxWKikSSeCHPAFdoz59+aOLuarv
 vQo6eoN75WUaSFpoU7jrY0VSE3AIZGo7LdwrleAajQe5iaUJiLpeGgFzj9BcoIo7nLih
 ZWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SpKrU1LZHPDz7aM+ZRqKdIZt+rjg7Am2w59IOfBqqwA=;
 b=oJLEmVAu1XDdbkO/CkTAC43jhbJJZEtRZ5oZl7nslIx/1hmMZJ98MI+7ZFW28bEeKA
 WGBU2fa85fW4wAh+WMV0s+rG6XZpIds/A+UjnzSxaYyl3FQ4DEwjddeQVF7HMbZESHUw
 scaCTbDevnNJKnL2rfhULeVu+QYid0KqZN1qg+QP3aI3poLvolotwuiAqdDhLQlXm6zv
 xvA1+TQhwEcpkwRFyuZLweR7tnGvOvyosvqH88T3RvutzC41soLHF0ixO6e45aYqVY2m
 ykaa9vsiD6uW4Xp4hc/1ckVOvXoWgjj9fgTrwGZZ0G0VyOsjHRXB3S/rCTWmA6VSlOQ8
 4x7g==
X-Gm-Message-State: AOAM5329pBYb+r82NIHPfEdR3m+ZPCOkCJ3bfssylJwR9Fiyn+PkMPQO
 S1l3xm4+oeiR4lQ7QCsM7t3aCACQkzA=
X-Google-Smtp-Source: ABdhPJxJS7CthGaemy5vzNrIYxqUmcnmeIw1PYxtinAkRj5eHPysxhWhVtbrl4ENMVaMV5AI8t/yXg==
X-Received: by 2002:ad4:4f87:: with SMTP id em7mr9708469qvb.192.1589849149349; 
 Mon, 18 May 2020 17:45:49 -0700 (PDT)
Received: from ubuntu-virtualbox.localdomain
 (209-6-156-57.s56.c3-0.sbo-ubr1.sbo.ma.cable.rcncustomer.com. [209.6.156.57])
 by smtp.gmail.com with ESMTPSA id l22sm9312392qki.45.2020.05.18.17.45.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 17:45:48 -0700 (PDT)
From: Mitchell Tasman <tasman@leaflabs.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: [PATCH] staging: vchiq_arm: cast with __force as needed
Date: Mon, 18 May 2020 20:45:31 -0400
Message-Id: <20200519004531.33158-1-tasman@leaflabs.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Mitchell Tasman <tasman@leaflabs.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In several cases where a pointer marked as __user is
(intentionally) assigned or passed to a non-marked target,
cast to the target pointer type with a __force directive
to quiet warnings from sparse.

Signed-off-by: Mitchell Tasman <tasman@leaflabs.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c     | 7 ++++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 4 +++-
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index c18c6ca0b6c0..38a13e4618a8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -371,14 +371,15 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 	pagelistinfo->scatterlist = scatterlist;
 	pagelistinfo->scatterlist_mapped = 0;
 
-	if (is_vmalloc_addr(buf)) {
+	if (is_vmalloc_addr((void __force *)buf)) {
 		unsigned long length = count;
 		unsigned int off = offset;
 
 		for (actual_pages = 0; actual_pages < num_pages;
 		     actual_pages++) {
-			struct page *pg = vmalloc_to_page(buf + (actual_pages *
-								 PAGE_SIZE));
+			struct page *pg =
+				vmalloc_to_page((void __force *)(buf +
+						 (actual_pages * PAGE_SIZE)));
 			size_t bytes = PAGE_SIZE - off;
 
 			if (!pg) {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 2d3e114f4a66..28ea8c3a4cba 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1209,7 +1209,9 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 					/* The completion must point to the
 					** msgbuf. */
-					completion->header = msgbuf;
+					completion->header =
+						(struct vchiq_header __force *)
+						msgbuf;
 				}
 
 				if ((completion->reason ==
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
