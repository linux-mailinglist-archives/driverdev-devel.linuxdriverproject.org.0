Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F93A1FC40C
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 04:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C7C189758;
	Wed, 17 Jun 2020 02:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjh0Lb1ONc6X; Wed, 17 Jun 2020 02:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8347895A1;
	Wed, 17 Jun 2020 02:20:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6625E1BF308
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3137820554
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gr2G6WqmXl1e for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 02:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 857262052D
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 02:20:21 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y17so227923plb.8
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 19:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6GXcf3wLRL4WRanPgpJHqRD9rkuU4zmnUhS9HuYjgvU=;
 b=ec5rY47LiFnF1A40ihlwiWqHCJ4QVCGRBA3rL4FWm15jfa45lCW3HgnoqTlvVjyay/
 mTe1k9ASc+V1FpGM+zOoylcnhy06bOIlJKrPCGcQvwW2EdKfABfzFam0qC5THsQkZhFT
 cXUU/Dx8JZSGEEKxoaJVCZVTVvi20PlQSgY76XV4elMp5WGo1EqrnKrAs17YFA8Lp4Zg
 TJR2MUJBkc3Pd4cwz9LfV6e0g+XmU0wPYuckgoxEgBOTmvBRNipaP2M4PPXCzLkrcqIs
 Z+67kLWzyvGj/HZdE6NHL3xMgfOrVgqX3FAD8tavx1O+K+glqIZW2xrBccFZLyiB6RmI
 xLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6GXcf3wLRL4WRanPgpJHqRD9rkuU4zmnUhS9HuYjgvU=;
 b=loR3AKG3/jTptjh6WBxZcDBrTUqiZe0lfkI/BRzosDvx5GRlxv7ti8s7SG9LnSptKO
 9GSuTy6/HrdA/K9Kjya9rv/N5xFcwOtb5pjZfggbiWG6MvitIaADDXSVJL5dvHfpaR/b
 3LeCqV8rS9SjeszEUrd0/xcRsReCV46KniRx+HBVRPP7pH+WqSk1TiTlXGfy7DPR1sAw
 8OlNjb5PF4Qx46CWl88SKPlSL3RcRQHf9mdbnkNGnk7NAeRmetnxyBMRcsid9KQ453C8
 FEjcn2EMEelXTZ/St+Ehy7NGoV4MRxPuCoWHUzKoEbO5wu+8Ua/SQhgnSBzlRcM7HYx2
 YM5Q==
X-Gm-Message-State: AOAM5307z+xNSclZU/xWD8rCVggBO+Y2DTIEtJdebGv9Ufye2+roFvtZ
 zaz7DMqRbhf0CM78+mJtNH0=
X-Google-Smtp-Source: ABdhPJyxcB55i1YWFUpC1LmI+Jj2r/ji84B7Iib/mOmV5sk0BbnugKYyln1Tgs1UAFTAGymcXvOSbg==
X-Received: by 2002:a17:902:bf46:: with SMTP id
 u6mr4565386pls.302.1592360421139; 
 Tue, 16 Jun 2020 19:20:21 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.213.184])
 by smtp.gmail.com with ESMTPSA id h9sm1203208pfe.32.2020.06.16.19.20.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 19:20:20 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, pakki001@umn.edu,
 ldufour@linux.ibm.com, harshjain32@gmail.com, simon@nikanor.nu,
 walken@google.com
Subject: [PATCH 2/4] staging: kpc2000: kpc_dma: Convert set_page_dirty() -->
 set_page_dirty_lock()
Date: Wed, 17 Jun 2020 07:57:21 +0530
Message-Id: <1592360843-3440-3-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
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
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index b136353..bcce86c 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -214,13 +214,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
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
