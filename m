Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 974C32103A5
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 08:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAE25894F6;
	Wed,  1 Jul 2020 06:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zMNXCHx0uJ2K; Wed,  1 Jul 2020 06:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60984894EC;
	Wed,  1 Jul 2020 06:09:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0CC11BF83C
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9CECD894EB
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93S3Yf2CTK1l for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 06:09:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 14B43894E5
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 06:09:50 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o13so8210124pgf.0
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 23:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xo4kx1NAZFSrQlqrR4fKrSHkld4dOPpLGIHAf+LkV2I=;
 b=tHVAS6YA5XDLIVdffU924/kQYhbNx0e+NPD1VKUWOt2+bCxjYGRlTrt2H3OFxUmTZu
 ek3swGqtZUoFwUO4HjMxAIzdoXwYhCOv+EG+NCGO7Xy/QuposvsMJ176j3WwIu6G/LzF
 ysDs6e8FQkDo0Hvji4QAnJDDQdfyvmIRqJzVg1AEt63gnQW157fpJrPNWn0D9SNQMP7K
 eBNk6uwhIWn+4KaClmwSNyKcF0wDF1X/j7ibvThLoyjcLfHPPtFyvIf0bg6vpZuf78qL
 HBvwGs3TK43oyHSXDa/n4kla1vPE6a2kFx3wwY8bE1yTJJKaQjXIeYzgkGWUIgeOc9cN
 xttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xo4kx1NAZFSrQlqrR4fKrSHkld4dOPpLGIHAf+LkV2I=;
 b=bGk643sluQR1RRiU70XJ7e4b3D5i2CbbxBQzf93e5u2puSEpPhUsWQfTOeKZglzQK3
 0egvMR8Af8c2b41Kl4b4rto3+S2FqzSCyoaR/Je1t5y8rdytXcVveDGafufvZ7B1OLXL
 zUZbPM7LzCcS5YwWnCFNHHY4CWHTxMptOUrPSatvZP0ePlw0GjAi6M38o7Jh0Rrt9CP8
 ixYDtVVBbfa4DpN1TKzhmYkvm8Nstvbp8TWavpTAm8vyQB6Nt3uvlmsU3i61I9iw0TqP
 B7RMr1wPgFzuKHMDuvjr1kJZN3acwDzqFktzoCy6Zw+5uGRYhYbSJRG4DVMRGk3cP9mH
 RVcQ==
X-Gm-Message-State: AOAM532wJ0aGP8/eW4U1pq/FQNr03MZoXSg11A250f77uczbRPT1sqW+
 JnlUSLivQdt0qhT9MeFcZn4=
X-Google-Smtp-Source: ABdhPJzkKFMl5l3MTjtmmjB/I87a8WxbDI0qFkgqt2jrF81H3n99Hikz+/xQ+XVI8San/xdxbliuTw==
X-Received: by 2002:a63:34c3:: with SMTP id
 b186mr18323931pga.173.1593583789643; 
 Tue, 30 Jun 2020 23:09:49 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.42.200])
 by smtp.gmail.com with ESMTPSA id 127sm4694073pgf.5.2020.06.30.23.09.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 23:09:48 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com,
 daniel.m.jordan@oracle.com, simon@nikanor.nu, harshjain32@gmail.com,
 pakki001@umn.edu
Subject: [PATCH v3 2/4] staging: kpc2000: kpc_dma: Convert set_page_dirty()
 --> set_page_dirty_lock()
Date: Wed,  1 Jul 2020 11:47:42 +0530
Message-Id: <1593584264-16982-3-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1593584264-16982-1-git-send-email-jrdr.linux@gmail.com>
References: <1593584264-16982-1-git-send-email-jrdr.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

First, convert set_page_dirty() to set_page_dirty_lock()

Second, there is an interval in there after set_page_dirty() and
before put_page(), in which the device could be running and setting
pages dirty. Moving set_page_dirty_lock() after dma_unmap_sg().

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Suggested-by: John Hubbard <jhubbard@nvidia.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index becdb41..08d90a6 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -215,13 +215,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 	BUG_ON(!acd->ldev);
 	BUG_ON(!acd->ldev->pldev);
 
+	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
+
 	for (i = 0 ; i < acd->page_count ; i++) {
 		if (!PageReserved(acd->user_pages[i]))
-			set_page_dirty(acd->user_pages[i]);
+			set_page_dirty_lock(acd->user_pages[i]);
 	}
 
-	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
-
 	for (i = 0 ; i < acd->page_count ; i++)
 		put_page(acd->user_pages[i]);
 
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
