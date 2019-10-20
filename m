Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E391DDFD7
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Oct 2019 19:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AB3387CD6;
	Sun, 20 Oct 2019 17:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RIWkAHYutYS1; Sun, 20 Oct 2019 17:54:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81299878A4;
	Sun, 20 Oct 2019 17:54:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F25DC1BF3ED
 for <devel@linuxdriverproject.org>; Sun, 20 Oct 2019 17:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEB912042B
 for <devel@linuxdriverproject.org>; Sun, 20 Oct 2019 17:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XQ4LA-8sRD3 for <devel@linuxdriverproject.org>;
 Sun, 20 Oct 2019 17:54:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id CEA0820400
 for <devel@driverdev.osuosl.org>; Sun, 20 Oct 2019 17:54:51 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id u16so8243716lfq.3
 for <devel@driverdev.osuosl.org>; Sun, 20 Oct 2019 10:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lezLxz9ZEViSL/s9KgaBFqX70JcczDlWKnb8jAuYGeM=;
 b=ec90vniSXCHPRmxIeHIqnueQnWjuhD3TybVWYWc6oT+Haw6EaikAdw1YE2H7lgwY+B
 og64CZgDCHslF/HfAe3JTYzOkt4NZ9X0COOzBhf/2O8Jrwdr7Nx60P85FNhcjtKlgWPi
 MuCI02s/xEJeojnVtv8xom0HPV83/TRAoaZeFIieaGTxrN+v7NXTqvPbPMpFrb6o7Sig
 ORrS1gFaL7WiR92dXKoc//0/gpo2tRO4P5ypJNwuxXWPnvlfIrKy8IxAHI3u22KndR4G
 rpFW6Kx6EKtvdnOHpuHtogHfFEdHUg6uWQ2XIHvYLZLPJmzGYimfk4NxBwpy8tnQ81ZD
 mnKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lezLxz9ZEViSL/s9KgaBFqX70JcczDlWKnb8jAuYGeM=;
 b=Nx0O6NGoyWbWcSzewDcoemhIXpxl781CIYtj+mEpLTQ7wl73yr1t1e204K7pCQHxAx
 9JQUV+e736TVg5br+dVJqU6VAHY/xwRLtbVlxfyt0frcKirn6Ork1LRqBg7b2IYBu89R
 lyDQrJrb36IrGDvYPxJc1Z4XK5YCmy/QWKQJzW11IgGmSunXgAdCUKIjKLGSxz7NSMzV
 4dgp2rRDrz0WqqAGP8NMIUJcDWTJ4NK0T8v7YDsCAL4GEzPTFttRC3h5PVx2f79FnGly
 AjxfRNr4MsRbvl+DztKDO63mPyhbVHzf7F0kwuD7GOXqctH47kppelAdn3LVI4f46Qxu
 ptvA==
X-Gm-Message-State: APjAAAXhYKApxi4B3lkyhb3+PBN8yn/KuxYUvLmLZgN2GMPvI15FmRkQ
 bcM0qazpFc1xYEZ7aNlSchI=
X-Google-Smtp-Source: APXvYqymdpC+Rp5WhOYkAbJ6JCs/CGvWEYhZfI+Je7Qev+wAQ3esy20KnJdueQRiQTynmMWfp4k10A==
X-Received: by 2002:a19:855:: with SMTP id 82mr11965142lfi.44.1571594089814;
 Sun, 20 Oct 2019 10:54:49 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id t6sm5806085ljd.102.2019.10.20.10.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 10:54:49 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: gasket: apex_driver: fixed a line over 80 characters
 coding style issue
Date: Sun, 20 Oct 2019 20:50:01 +0300
Message-Id: <20191020175001.22105-1-samuil.ivanovbg@gmail.com>
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
 Samuil Ivanov <samuil.ivanovbg@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed four lines of code that were over 80 characters long.

Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 46199c8ca441..f729ecd6363b 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -263,8 +263,8 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
 	 *    - Enable GCB idle
 	 */
 	gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
-				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
-				    0x0, 1, 32);
+			APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
+			0x0, 1, 32);
 
 	/*    - Initiate DMA pause */
 	gasket_dev_write_64(gasket_dev, 1, APEX_BAR_INDEX,
@@ -399,7 +399,7 @@ static int apex_device_cleanup(struct gasket_dev *gasket_dev)
 	hib_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
 				       APEX_BAR2_REG_USER_HIB_ERROR_STATUS);
 	scalar_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					  APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
+					APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
 
 	dev_dbg(gasket_dev->dev,
 		"%s 0x%p hib_error 0x%llx scalar_error 0x%llx\n",
@@ -606,10 +606,10 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
 	while (retries < APEX_RESET_RETRY) {
 		page_table_ready =
 			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					   APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
+				APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
 		msix_table_ready =
 			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					   APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
+				APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
 		if (page_table_ready && msix_table_ready)
 			break;
 		schedule_timeout(msecs_to_jiffies(APEX_RESET_DELAY));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
