Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EFC323C0
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 17:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97BFD85C92;
	Sun,  2 Jun 2019 15:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcw4GlUOHq7P; Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29D5285C52;
	Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 119791BF282
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C34720798
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-h7AFnbADxp for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 15:59:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 62AAB20340
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 15:59:17 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id a15so6809826qtn.7
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 08:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cwSi5MhwwNuPtX+N4n2xqn5nIAMMQTMMy9Sqt0rjx2Y=;
 b=MpH4OVk3AUkP/GBsRXlZx67QY3EGSa0W78a99p8pZOpnpfxkJ/YU/KnR5rHablTERN
 ZfJmd7nj8YPKmjv5tW8gFCbjgMrlWoNQ0MTiRqCygyu/+xP1Z0yx3KAyFVhk3hiwEj8p
 jzaaJOYXzMWKOgzHjBBUmZDdtzDY1UQL7bWozRrUi3q6nvaPUmkKoFRtrzJVm5+MnqY8
 495ecp82BeJVbMgq6UK20O5BV96kr3UnGWg47eF+DihHGvjMzmL8XbH2wMX5T4W99AVT
 9E3YgiekXuX4Qnl//SpOwrPdZdBTxrwoiug8FJ0IJjPH12ZI5+KNalBIcIdKgZ0Mcyfv
 U/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cwSi5MhwwNuPtX+N4n2xqn5nIAMMQTMMy9Sqt0rjx2Y=;
 b=dUcwTJ0SW7jf5PKEX1swditmteCVtnpXM5go+l+a2aLe/6awh3Ckqm67LNz9I3RxWo
 JfhnLXwvs9dacDN4nD8KGtE6MtzIgQI2RiDSV4pG0pFv9pOKv6BDiJe4ra27jQksYy4K
 7nIM4OGrBhN3gfP71/RdbXgrlV2vZLljJELZjFtUdhY3oyZ2IznaJFlHF26Au6/XhYa2
 So3aRbIIusp17NCRZz7FjGDgBVsqLaafzeyNoGU+JRUoxkjdm8uUbcsD3BYYEnWaK76N
 gkzn0DJmO1owgQVYYSjSRKAfGDJF3q/cLp9ndmKfPf8vv7PIhkIT/gELRRf3NxkiJmeF
 ahxg==
X-Gm-Message-State: APjAAAWkXxgwTM8fCdiTqYn14EC3S0nNS1Bi+JbE6PS6a9D/yOMbE/rh
 YdcXLDVfPIibbfq31KV/MtQ=
X-Google-Smtp-Source: APXvYqxacy95ztVh2aIoXGuNQecgk7mcerQLv1cPC8o9FeQnvGyIWfIQFt+QNRMJH/HGzuMlf3PjbQ==
X-Received: by 2002:ac8:38a4:: with SMTP id f33mr19437642qtc.163.1559491156619; 
 Sun, 02 Jun 2019 08:59:16 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n7sm7378589qkd.53.2019.06.02.08.59.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 08:59:16 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/5] staging: kpc2000: kpc_spi: Remove unnecessary consecutive
 newlines
Date: Sun,  2 Jun 2019 15:58:33 +0000
Message-Id: <bc19f98c3b5468abfc66839569d72016d03c79af.1559488571.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559488571.git.gneukum1@gmail.com>
References: <cover.1559488571.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Mao Wenan <maowenan@huawei.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc2000_spi.c file contains instances of unnecessary consecutive
newlines which negatively impact the readability of the file. Remove
all unnecessary consecutive newlines.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 9a23808ffaa1..ef7e062bf52c 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -97,8 +97,6 @@ static struct spi_board_info p2kr0_board_info[] = {
 #define KP_SPI_REG_STATUS_RXFFE 0x40
 #define KP_SPI_REG_STATUS_RXFFF 0x80
 
-
-
 /******************
  * SPI Structures *
  ******************/
@@ -111,7 +109,6 @@ struct kp_spi {
 	unsigned int        pin_dir:1;
 };
 
-
 struct kp_spi_controller_state {
 	void __iomem   *base;
 	unsigned long   phys;
@@ -120,7 +117,6 @@ struct kp_spi_controller_state {
 	s64             conf_cache;
 };
 
-
 union kp_spi_config {
 	/* use this to access individual elements */
 	struct __attribute__((packed)) spi_config_bitfield {
@@ -141,8 +137,6 @@ union kp_spi_config {
 	u32 reg;
 };
 
-
-
 union kp_spi_status {
 	struct __attribute__((packed)) spi_status_bitfield {
 		unsigned int rx    :  1; /* Rx Status       */
@@ -158,8 +152,6 @@ union kp_spi_status {
 	u32 reg;
 };
 
-
-
 union kp_spi_ffctrl {
 	struct __attribute__((packed)) spi_ffctrl_bitfield {
 		unsigned int ffstart :  1; /* FIFO Start */
@@ -168,8 +160,6 @@ union kp_spi_ffctrl {
 	u32 reg;
 };
 
-
-
 /***************
  * SPI Helpers *
  ***************/
@@ -445,8 +435,6 @@ kp_spi_cleanup(struct spi_device *spidev)
 	}
 }
 
-
-
 /******************
  * Probe / Remove *
  ******************/
@@ -538,7 +526,6 @@ kp_spi_remove(struct platform_device *pldev)
 	return 0;
 }
 
-
 static struct platform_driver kp_spi_driver = {
 	.driver = {
 		.name =     KP_DRIVER_NAME_SPI,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
