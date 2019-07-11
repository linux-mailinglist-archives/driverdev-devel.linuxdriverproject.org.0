Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD8C65A07
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 17:08:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BAE186C59;
	Thu, 11 Jul 2019 15:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nKOpY8O5b2Ry; Thu, 11 Jul 2019 15:08:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D95586DDC;
	Thu, 11 Jul 2019 15:08:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1ECEB1BF40D
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 15:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1747288058
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 15:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlEn5rKmrs5M for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 15:08:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com
 [209.85.221.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83FD687FCC
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 15:08:20 +0000 (UTC)
Received: by mail-vk1-f195.google.com with SMTP id o19so1402403vkb.6
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 08:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9wODXZFfpHcCOK1sBgHRLZLuNp2LmEM/dZSDNkYBNA=;
 b=BmVPdU1yYp3zyIgEU5yo3jBbFK2/YY8LLayzz4rqbGQeB0vU7n+HNl59IdmfGhYdSm
 TYMCLEXoA3G6CEIeNo16zOsJ84wsX6hLU2wVn4h97UJdZ36jDRT4UuPwX5tl4Ek383iC
 Iyiv3Z07CGT9JeHspYs7o8MbR+3kOzrejqTSX3dap0pRSP94ljFAduJVUW6mAqSestlI
 kn2wWgZHkUuzmXGMAPyVpuqRMTGPPZFUC3XbClIq7SWOHvDIJf1izk0XKbGAjZ35xtzA
 Bs1njlGjBVV+l8lsBakYX5WhmnPZN+LkprQ5J9Aky9xy+7KrVTNNknwSQBJ//pZhTwwh
 CV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9wODXZFfpHcCOK1sBgHRLZLuNp2LmEM/dZSDNkYBNA=;
 b=AmEktixObxkXFDkfetEYfvqAqoQQY4+NQ5il0yYaIozMDLgQUNeDcVhq1+sODKbUCx
 M8XUnzIEUJ86eqpdsmAk6hI3CBzjRGtTMFOJuVJsDk/Scf6FzueWkxO9YvMC30zuk2h+
 HDGbCgBZtqmwN+0D5ViHJUfTsNIBi9To2FpJ8lfvSstMa12z0jwrS/ZEGtkG0Bx4X1ZZ
 DyZaW1E9iabnkEdfb2T6by0vEoTggMo8Ro0XLMNYE0O87emMuLZfEchRWgbmN/jq/fML
 zXSKGmaeZ86Sd2lBKcdWLinkUVdKp32rTEGBpL6AqhF8cUL7tZ2IOktFtM/1w06Seyca
 Bocw==
X-Gm-Message-State: APjAAAX9Dy12KRugNh035z4vdp9OqEwqpDsgjXW9tEB+ElwCdeRkxl/W
 egVlBRT+QAhgQngdzYM3Iw==
X-Google-Smtp-Source: APXvYqxkDprvU74sG7TYm7KLqOv1ibtwNSnSHMA6wu2BKuI8pJnQXBerx9KU9y6oxXxqQUCBcw4p6Q==
X-Received: by 2002:a1f:1b0a:: with SMTP id b10mr3636733vkb.19.1562857699433; 
 Thu, 11 Jul 2019 08:08:19 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id v5sm6660357vsi.24.2019.07.11.08.08.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:08:18 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH 2/2] staging: most: remove redundant print statement when
 kfifo_alloc fails
Date: Thu, 11 Jul 2019 07:08:02 -0400
Message-Id: <20190711110809.17089-1-iamkeyur96@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Suresh Udipi <sudipi@jp.adit-jv.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Colin Ian King <colin.king@canonical.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, iamkeyur96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This print statement is redundant as kfifo_alloc just calls kmalloc_array
and without the __GFP_NOWARN flag, already does a dump_stack().

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
---
 drivers/staging/most/cdev/cdev.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index d0cc0b746107..bc0219ceac50 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -463,10 +463,9 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	spin_lock_init(&c->unlink);
 	INIT_KFIFO(c->fifo);
 	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
-	if (retval) {
-		pr_info("failed to alloc channel kfifo");
+	if (retval)
 		goto err_del_cdev_and_free_channel;
-	}
+
 	init_waitqueue_head(&c->wq);
 	mutex_init(&c->io_mutex);
 	spin_lock_irqsave(&ch_list_lock, cl_flags);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
