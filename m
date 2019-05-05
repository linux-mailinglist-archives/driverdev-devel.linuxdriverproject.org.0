Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0265141DC
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 20:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 013D685CB8;
	Sun,  5 May 2019 18:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V81YxVVFUPwT; Sun,  5 May 2019 18:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE10E859D2;
	Sun,  5 May 2019 18:32:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D77C61BF48C
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 18:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D1CB784BA5
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 18:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aa1nhXKfPwHH for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 18:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E8E884BF1
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 18:32:38 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id l17so69949otq.1
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 11:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ilroapXDZkcgk5LucRhth9os/NqqUQEKzo0yx1KZYRo=;
 b=RfJNYorhTyUqNvcB2b+P3AIoGlP6lRmXUAHZ/CiZ869NeU+SlkD5290+FQTO/nyu5p
 bGHEKeQc11KCQ3rocBVuUrZxWHaTD2KZdj7t3tzUqJgcbATTm7/stJdnLfyo7vY3MIFL
 wjan400FVTh7y42DzJCuoFx/FCn6aNgXGP3ZpZa97ADiRw7NQEe/6j6oFm7h7PPIsxkT
 PVl/X8F8xgFWhAstmGfad4YWEhYeLF8eHPgqv4nn3yr2Cw2y9Ydm9Ne3xDb4hinpt5nY
 JQ7KMM/DrrXSOHdl/ojgYH7YpwQntQcYL3ifw7PD+GrAm0AE1ZmtPO4a/kBfx2FI32K8
 hDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ilroapXDZkcgk5LucRhth9os/NqqUQEKzo0yx1KZYRo=;
 b=DaDmNCwMZ1gCbRhGmTQMkENhDhuMK6khlTOLwVthp+xwVVJeYRc3mSkNvZFQK2Bmn9
 QLwD0g4jMuHLqeEmlAvVWyxe1ISQJth6ypX2BemcJm9TwIRfn0CzyebJdElB9PXkLkgR
 AXt5v2LN/g+/n3JL+KqH+nYwLaeHKLQQFXpSg4ZOuHjsRN76b5pZ1kAMZOL+VLck4zLw
 g+F7HwK9ZQCvBpV6o8EfBugbAEpws744y7ywsYfWY7yoB9St6nThelM188ewhUWsoUMv
 Bt9XfDjAxtPtOhjaP+lMPpVtJN0A5B1MIbMISDpSupIVqB0ig/SGOgz0P+IluY5yGXMV
 DlhA==
X-Gm-Message-State: APjAAAVo81vfuWCXSCBECqZgT5t9nQCQglR0BMvQ5mZOYZ0woFf6E+gE
 BPEi95LDe44DAqeDjU0cwFA=
X-Google-Smtp-Source: APXvYqzUwAaGV2anjaIH0cjG/BmFIT9iKjLTsohmrgbffWRrshQbNhsG8W/KaReY7S3ntgA9POplAg==
X-Received: by 2002:a9d:4d03:: with SMTP id n3mr10942297otf.121.1557081157299; 
 Sun, 05 May 2019 11:32:37 -0700 (PDT)
Received: from madhuleo ([2605:6000:1023:606d:2897:6cea:c841:53a2])
 by smtp.gmail.com with ESMTPSA id e9sm4093787otf.48.2019.05.05.11.32.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 11:32:36 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: kpc2000: Cleanup in kpc_dma_transfer()
Date: Sun,  5 May 2019 13:32:30 -0500
Message-Id: <20190505183230.24505-1-madhumithabiw@gmail.com>
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
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary typecast in kzalloc function. In addition to that
replace kzalloc(sizeof(*acd)) over kzalloc(sizeof(struct aio_cb_data))
to maintain Linux kernel style.

Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5741d2b49a7d..c24329affd3a 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -57,7 +57,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", priv, kcb, (void*)iov_base, iov_len, ldev);
 	
-	acd = (struct aio_cb_data *) kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
+	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
 	if (!acd){
 		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
 		return -ENOMEM;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
