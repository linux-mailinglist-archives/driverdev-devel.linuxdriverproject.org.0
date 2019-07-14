Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E4B6807D
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BEFA87766;
	Sun, 14 Jul 2019 17:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIWBtF-bz+eB; Sun, 14 Jul 2019 17:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B727F86C66;
	Sun, 14 Jul 2019 17:27:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 697371BF20F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 665FD85137
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7I2iFh-nC7da for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 44A1084D11
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:27:15 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id h18so13335164qtm.9
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 10:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XZMU82wNnKmKEZ0XxgcXJZsoyOLcOo4xlcTKRS8FhBc=;
 b=Dr3arrr2Pf8i39snL2FYw0NKg65N4FJTIH5KT3NN75mEX4YXnkGXkCcbuIjDeLWrY7
 zuoOV0EEo8NSoJ0Taxfz1V73Cx+L+So7W45uXMBgnhRBEKx3AAkfSbFth7OavjQ6QKWT
 3cxOATI3H8gqfwZ0V6nyH1SN13v/6JCnpyCsuuMwdslkF/h6fmVZW30TAl8nWgpWDsob
 UA2houJ565w726xZqph76sIPRMrbf9ITfznB1rg/Nkj8aq52LPvOQopNpqg9FWY5WYUZ
 XDlEDmjOfE4t4KcGDByWAvnKvktgsDM4/scz7qA3KijtT3ikFZkaeETMHuqDJyFlnVn7
 2R3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XZMU82wNnKmKEZ0XxgcXJZsoyOLcOo4xlcTKRS8FhBc=;
 b=lPabXOiTqsNNDyWuWANSGuEEtHKRooygl899Sg1Hg65ONxhQFszooIQw7mBikRJrTO
 2YJZ2OmJ6ayfPVerPpqUwG5qbTpgCmJXLB3QJkPI9g/AcneuZ/10Vu7fzHYs09PwNH3L
 3UHMsZQQ/+TW9TGxMBe0H8eOcS27+3lG7EzQ+ZKTQZM24ccSTr7ld2GPJk966ZW30Evo
 nx9kqMo1o/4jEZNThwexhRxVXJMuiOwsjlVgJ6O/+nwBXmR5e6tdvsIoAe7aOVdNPY/K
 Y9ph/dJ6vd1vpPr72sxyq6wf6RS7/2jINTEQpeUK7sDK3cCWl0LT5RQrjFI1bUog2uBv
 vE3g==
X-Gm-Message-State: APjAAAX2zDw5rmmLOoEWroSqY9etphkIrB94m3FOQsb8DBAz+Xfhnqsp
 pPQhMeHY2Fidjy/sNWdPVg==
X-Google-Smtp-Source: APXvYqxWIYI5kvypURV1il95tMRAkixqH5KL20pUR/4A1XY/9aDFQeiVy4dPTEVaqXGp7NWBGAaKVQ==
X-Received: by 2002:ac8:341d:: with SMTP id u29mr14117813qtb.320.1563125234391; 
 Sun, 14 Jul 2019 10:27:14 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id z19sm7266767qtu.43.2019.07.14.10.27.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 10:27:13 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH v5] staging: most: Delete an error message for a failed memory
 allocation
Date: Sun, 14 Jul 2019 13:27:06 -0400
Message-Id: <20190714172708.5067-1-iamkeyur96@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190714164126.3159-1-iamkeyur96@gmail.com>
References: <20190714164126.3159-1-iamkeyur96@gmail.com>
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
 linux-kernel@vger.kernel.org, markus.elfring@web.de,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, Keyur Patel <iamkeyur96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kfifo_alloc() failure generates enough information and doesn't need 
to be accompanied by another error statement.

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
---
Changes in v5:
- change subject line
- simplify commit description
- fix checkpatch warning
- removed braces around if

 drivers/staging/most/cdev/cdev.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index d0cc0b746107..724d098aeef0 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -463,10 +463,8 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	spin_lock_init(&c->unlink);
 	INIT_KFIFO(c->fifo);
 	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
-	if (retval) {
-		pr_info("failed to alloc channel kfifo");
+	if (retval)
 		goto err_del_cdev_and_free_channel;
-	}
 	init_waitqueue_head(&c->wq);
 	mutex_init(&c->io_mutex);
 	spin_lock_irqsave(&ch_list_lock, cl_flags);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
