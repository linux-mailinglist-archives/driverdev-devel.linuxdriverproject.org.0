Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5577D8A38
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 09:49:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0CA0E844CC;
	Wed, 16 Oct 2019 07:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s4Txxokfi2lk; Wed, 16 Oct 2019 07:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6144B84494;
	Wed, 16 Oct 2019 07:49:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7C7C1BF386
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C51A7844CC
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sN_rRLE9XqMi for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 07:49:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ADA4584494
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:49:50 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y22so14185174pfr.3
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 00:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j+5wZZ+PjzxLbMdDOyLUeg2K+18/C67QOv7Ke0t4fjo=;
 b=ixvpOstzzh3n7mUe8J+gXJcDAZhkvWoSGd1eB3X7cV83Sq/sGKwD0BvSmgzCO4pEH1
 8xHcTnl2orrYAh9GoXEg8kXwC0swCt3zu44EVqw7VYIPzTkp1PL7whWl0RsFJ5nkNmoE
 8RjCjeBqOOd+/WoEGZqwzfZwkeI1arrPWG9Br/zmKwkk/Di/y/nOX+IQlnkcqRkOLnnz
 1faPGUdICdBjTBUi1/pgI68Mr7a7wPi3ZqzL9RLNXKi75JAPEpF3MmJ3929fFCoU9TQG
 j/EN6MeO7S19BncTqnru8P0J+ByqNpeQGowtyu0RYq/zAv72VsNiybnamdSXTgmZOEY0
 wzow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j+5wZZ+PjzxLbMdDOyLUeg2K+18/C67QOv7Ke0t4fjo=;
 b=cW0o6AMfTAjiyQhpLFkNSXWl6ZVV9SVVW8PneOegOuVYupEydbJmNd54obmGFjO4z2
 Ii/ajUTF2OeWL27wYH2vSKR9fs8by+jCljgDnXnOqV7wLJe5A91/WJjkpy+K1BV9RKr1
 vgVlqPyvLqsGoppu+g6HNMoAIq1byNYuB0ema6bX4tnRD8Zg7JedGyxFevIx7vz9PXkP
 pis7enBpGP7C7ONFOHPxaM0/srb5vE2arnJVjtncujH8d8KcZn1Ee0BFX2MzMM4XRj3D
 kR9tmg5cSVoFP6OQX8S1LmcH3Qjfz8EBq46tSYKCyyjqly4Y0AYmHbpi779tGIO/fr4H
 ppXQ==
X-Gm-Message-State: APjAAAVNLRVy3kj4eMPSZKSfg/EMYTKZ21yyuwD8EJmxkF7XufRkiZjc
 HrauXptwlnW5gJXiK2cWNSo=
X-Google-Smtp-Source: APXvYqxeiL7hsuQgKd5RdWHbcJnrSFSos2Vz9sXRLn+I2/lmCgWGAzK2cnT9hVWh1kAMGR8JeKFcrg==
X-Received: by 2002:a63:78f:: with SMTP id 137mr24973067pgh.110.1571212190178; 
 Wed, 16 Oct 2019 00:49:50 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id d1sm25185522pfc.98.2019.10.16.00.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:49:49 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (alignment)
Date: Wed, 16 Oct 2019 00:49:26 -0700
Message-Id: <20191016074927.20056-3-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016074927.20056-1-chandra627@gmail.com>
References: <20191016074927.20056-1-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: "CHECK: Alignment should match open parenthesis" from checkpatch

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
Previous versions of these patches were not split into different 
patches, did not have different patch numbers and did not have the
keyword staging.
 drivers/staging/kpc2000/kpc2000_spi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 929136cdc3e1..24de8d63f504 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -313,19 +313,19 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 		if (transfer->speed_hz > KP_SPI_CLK ||
 		    (len && !(rx_buf || tx_buf))) {
 			dev_dbg(kpspi->dev, "  transfer: %d Hz, %d %s%s, %d bpw\n",
-					transfer->speed_hz,
-					len,
-					tx_buf ? "tx" : "",
-					rx_buf ? "rx" : "",
-					transfer->bits_per_word);
+				transfer->speed_hz,
+				len,
+				tx_buf ? "tx" : "",
+				rx_buf ? "rx" : "",
+				transfer->bits_per_word);
 			dev_dbg(kpspi->dev, "  transfer -EINVAL\n");
 			return -EINVAL;
 		}
 		if (transfer->speed_hz &&
 		    transfer->speed_hz < (KP_SPI_CLK >> 15)) {
 			dev_dbg(kpspi->dev, "speed_hz %d below minimum %d Hz\n",
-					transfer->speed_hz,
-					KP_SPI_CLK >> 15);
+				transfer->speed_hz,
+				KP_SPI_CLK >> 15);
 			dev_dbg(kpspi->dev, "  speed_hz -EINVAL\n");
 			return -EINVAL;
 		}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
