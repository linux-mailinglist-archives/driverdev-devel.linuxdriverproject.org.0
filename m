Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFCE20EFC6
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 09:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 914292155D;
	Tue, 30 Jun 2020 07:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k8z4C59qnABB; Tue, 30 Jun 2020 07:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D686C21526;
	Tue, 30 Jun 2020 07:44:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EEDF1BF29A
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B6738843F
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id De24W+tJxXM9 for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 07:44:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB63A8843A
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 07:44:25 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id d6so9128856pjs.3
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 00:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xo4kx1NAZFSrQlqrR4fKrSHkld4dOPpLGIHAf+LkV2I=;
 b=RV+DgcBqr6NVg6INhpMugvXHSNa/F0TzYbxypTH+e/Wc6xDl/PwgNhNdLoR0O/qZS7
 BgK6r63y8zZUT5G74TK0Hhk6uRyY2ADRGEJaScbGc/86mescYkB/c3eko8t7ijVDEiJT
 yn948PWA9bJZVWaBQtQ6ouY9W6qg+BR4CryAx19ck0fHqQ6mby9XijoYnTjbOMCAOkTR
 ZuEa8eO5YMaG9hlJNnLFC3tgbHzjFwoI0iU5GWfU5dhE/x5UdZENNNdfXavL2EnZOcqK
 AXiEq18Nx0pBfW2gHEgKzAiK48tq7NBoCNYwCC/Kl2AkWROpksejdG2LOoXGGUq4CpqX
 0bgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xo4kx1NAZFSrQlqrR4fKrSHkld4dOPpLGIHAf+LkV2I=;
 b=mXA284C1he7X5u2L834FSgwljr4M4OlXxxbY/ws3Lk+MZ6P7aVF9HHFSmpBEvLMXuU
 TX5QNWGrBiV/Wj+rJVyXQgBUg0DMzLT3vk/DujE+cOm0vKdc4u8ucxvyaWqFuqcXYbRo
 yLcPQXIqvxWUDYY+MaItPbYKEly95I3SCvlr8AVsV5GII74BhTtqZyZ1T2FAmjKYnzmt
 EkgDq4XhfNh6mjUPDwHjEGUnVpcdaTa6SSa/ECgdzGXJrsapPFqG9P+7IAn3EHw4oYK9
 yxVTOoVih6cFvqed5J2UqUffpKjCYapED+WZ5px/fFi7Um0wDq9qaIynlpmxBBKHdzLg
 eU5A==
X-Gm-Message-State: AOAM532k9SRkGroWUYflvAGhwjOtcY4IkfADCYziWGs7+i7Ukc6R6APN
 5bTCD1H3ar1FMPXbAVcaMOw=
X-Google-Smtp-Source: ABdhPJw7HZSUnx6MKXT5rvXvK+lEevsPWg351OVhFaa39QaOaPj5dW1s/EldxvCQwMpAAGrAF2sD/w==
X-Received: by 2002:a17:90b:1004:: with SMTP id
 gm4mr21509603pjb.92.1593503065427; 
 Tue, 30 Jun 2020 00:44:25 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.182.225.143])
 by smtp.gmail.com with ESMTPSA id w1sm1754276pfq.53.2020.06.30.00.44.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 00:44:24 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: jane.pnx9@gmail.com, ldufour@linux.ibm.com, gregkh@linuxfoundation.org,
 harshjain32@gmail.com, pakki001@umn.edu
Subject: [PATCH v2 2/4] staging: kpc2000: kpc_dma: Convert set_page_dirty()
 --> set_page_dirty_lock()
Date: Tue, 30 Jun 2020 13:22:17 +0530
Message-Id: <1593503539-18649-3-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1593503539-18649-1-git-send-email-jrdr.linux@gmail.com>
References: <1593503539-18649-1-git-send-email-jrdr.linux@gmail.com>
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
