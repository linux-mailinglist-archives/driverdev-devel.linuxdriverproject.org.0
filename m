Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE4B2103A3
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 08:09:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D6EA8B540;
	Wed,  1 Jul 2020 06:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHfjDCrniABa; Wed,  1 Jul 2020 06:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 786DE8B271;
	Wed,  1 Jul 2020 06:09:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFAB01BF83C
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC8AE8ABB5
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mW5cQczTtr2R for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 06:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBA1C8ABB3
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 06:09:44 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id z5so11168387pgb.6
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 23:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oOqmjhvuPBAEiyHp7TL6kqUg9v7jBR3QwTJJwMLLxHI=;
 b=fh5p+IYS+GyBqIiPYiQP24tODpgeKqroVm6a2zrENVblNOD8iBrV8BN+RCPNGHy68C
 Lt8w4b0LTxLZw0rPUQTpTVnZdmRpeYi5imXEbl8pJ7Rq4tU6sbQZa/QAWS4CM3UTo4rm
 ZmIKjKSar68blxT+9dP7OWlIHEuF6ZOLoCDA3sdXa1yPIG+o0DQcP1IBir+XsHDyasvp
 qtzKAVSbOVltdJVBfcb3zcA7vlWNV6a0JcwE+NpTQyuEO0OZMghtjd8V0+y8vsvW0K55
 yZ0sVgpAUwhvemWivxqdmXA09LMYrU20n5tgRX3Wxed8biyPXp/EjFATiHx1dtcFICUt
 JzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oOqmjhvuPBAEiyHp7TL6kqUg9v7jBR3QwTJJwMLLxHI=;
 b=IZgg1i5zCPU3uCUf95AUrgE52zfuxjW+bp38+jEUayV9M/Cr8/KvbvBJVssHrV04Fv
 P/deZIEBMPif1gkLNVOhCH0rIeylX+wOXfyfTGxrAVm0nuilE/tRy6MAkBKal3pJD1td
 WRo20L4C7PQ9DTeOBtDmJ15ZJzRQXRDs2Hg/eefgq2Gq2QvuDmrZ6FXDaixllxSu5kay
 Szqcg3Vmsz0iMvfoLZol29N5snscto0TlSJrRQiL77JlEr6IlmqYQQNQE8eg/ixq3G3g
 UGgIbj7xsA6MQuJ1ajO/R0h6G/vlvfd1z+apu+ybzr3BJAzGnuiN87qetdQKEolwDyM6
 Dp/g==
X-Gm-Message-State: AOAM531GW2Q+56fKFy+suHYGXON20VXgsDfF+epPMW/YlVCVlVoTJtH+
 obfXaV3vWkUWZBVOO5tM/Fw=
X-Google-Smtp-Source: ABdhPJzueLqkfiCNtpCLQlwKNIabeqN8iu4TFi2dAorZGc5LHYRftUrU9e3dZI4fpq25onFK7iplnA==
X-Received: by 2002:a63:eb54:: with SMTP id b20mr18415447pgk.380.1593583784355; 
 Tue, 30 Jun 2020 23:09:44 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.42.200])
 by smtp.gmail.com with ESMTPSA id 127sm4694073pgf.5.2020.06.30.23.09.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 23:09:43 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com,
 daniel.m.jordan@oracle.com, simon@nikanor.nu, harshjain32@gmail.com,
 pakki001@umn.edu
Subject: [PATCH v3 1/4] staging: kpc2000: kpc_dma: Unpin partial pinned pages
Date: Wed,  1 Jul 2020 11:47:41 +0530
Message-Id: <1593584264-16982-2-git-send-email-jrdr.linux@gmail.com>
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

There is a bug, when get_user_pages() failed but partially pinned
pages are not unpinned and positive numbers are returned instead of
-ERRNO. Fixed it.

Also, int is more appropriate type for rv. Changed it.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8975346..becdb41 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			    unsigned long iov_base, size_t iov_len)
 {
 	unsigned int i = 0;
-	long rv = 0;
+	int rv = 0;
 	struct kpc_dma_device *ldev;
 	struct aio_cb_data *acd;
 	DECLARE_COMPLETION_ONSTACK(done);
@@ -79,14 +79,14 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%d)\n", rv);
 		goto err_get_user_pages;
 	}
 
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
 		goto err_alloc_sg_table;
 	}
 
@@ -193,10 +193,15 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 		put_page(acd->user_pages[i]);
 
  err_get_user_pages:
+	if (rv > 0) {
+		for (i = 0; i < rv; i++)
+			put_pages(acd->user_pages[i]);
+		rv = -EFAULT;
+	}
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
-	dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %ld\n", __func__, rv);
+	dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %d\n", __func__, rv);
 	return rv;
 }
 
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
