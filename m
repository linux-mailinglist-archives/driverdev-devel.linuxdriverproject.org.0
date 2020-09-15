Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B58269A51
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 02:18:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4AB5C20459;
	Tue, 15 Sep 2020 00:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBmg6caE+auQ; Tue, 15 Sep 2020 00:18:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 139D520430;
	Tue, 15 Sep 2020 00:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1AE01BF968
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B92A885D21
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otKM3uEDyZ+x for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 00:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 065C385C56
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 00:18:34 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id r9so2178792ioa.2
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 17:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MzGmDzzjMGRgvfVFgDwfx6ad7ejBUYi+ZapK1NYg/6M=;
 b=PXonXvA1hrw4+waEQbI3TBhVYqBei3TzTYxRwdjmoZL2oyVs7WG2X+gV921cUIEjua
 42FI7EcU6EA59xKC+ioqJbD6szSBomN1mYXh0lnZ8StF99qOg9JTwuCWz8tEtruwibTH
 wwvBNFbI8LloKxFmtm8yZ2fijZBEQObWveRBUIs3XrK5W3Y1P0Id/DBSthmz1S8Inr6Y
 gfF3XJUPImvctdJhhzzg1FrPhETOLthgTzT5CpmXKmOMckw+KmPIiK7KK0Nqjrg/2aV6
 R0KkKLEDPIuUrVkzMS2oRAPdWa9Mc3R0/wUsTL8tIALRecsoq/qOtMMD7UBGmrQlLL0r
 Hd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MzGmDzzjMGRgvfVFgDwfx6ad7ejBUYi+ZapK1NYg/6M=;
 b=hYmkiE2limzus4YiC0EvXmmHMZORyWRsKrQBrTidkXGM4OPsubnAdK+bnp64rW8C5G
 vZ/p1iA675E9fF0DZAscD+8dt9ysQHYtqDNoOsTfvyvmvKYs5NNq06lXgvt4Vo7nete3
 NPwd1FqCvQODRHxFcVxXF3Wh0gxTuG+MKpRVk6rLo/YVK7IHHfkbbvGVY2C1j+U2uFF5
 s3gOlAp5aqbVOQQmJuZh1qMXJYXj8nkzae4rb7fmcYyYz2LohHmL8Ltkn5TxffhmXB3G
 K+L4QpdY5hyUURGhx/5itXjGKoUC0lMXERNmhvQqn9/KMo2UXemHQcxnJt+QHi7zKJ9j
 ZIsg==
X-Gm-Message-State: AOAM531m0PCE2Jv/TEEiK1/+LZzWr0ohcMbYeOYC3T3X5wgMssdnBue8
 CvEK3+6XTPJazSW99xYrG5c=
X-Google-Smtp-Source: ABdhPJxzykrgWjLUZOVn7PzAbwA/sVS46SDOici23G0yyIjXt9iq4zZv1iAeWlcKmjUL/mnbW4umEg==
X-Received: by 2002:a5d:9355:: with SMTP id i21mr5781062ioo.199.1600129113386; 
 Mon, 14 Sep 2020 17:18:33 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id l131sm6728975ioa.31.2020.09.14.17.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 17:18:33 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8723bs: os_dep: fixed trailing statements
Date: Mon, 14 Sep 2020 19:17:29 -0500
Message-Id: <20200915001731.28986-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue by moving trailing statements to new lines in
sdio_ops_linux.c to fix checkpatch errors.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
index 50b89340465b..bc8cef5589b8 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
@@ -264,9 +264,11 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 
 		*err = 0;
 		for (i = 0; i < SD_IO_TRY_CNT; i++) {
-			if (claim_needed) sdio_claim_host(func);
+			if (claim_needed)
+				sdio_claim_host(func);
 			v = sdio_readl(func, addr, err);
-			if (claim_needed) sdio_release_host(func);
+			if (claim_needed)
+				sdio_release_host(func);
 
 			if (*err == 0) {
 				rtw_reset_continual_io_error(psdiodev);
@@ -355,9 +357,11 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
 
 		*err = 0;
 		for (i = 0; i < SD_IO_TRY_CNT; i++) {
-			if (claim_needed) sdio_claim_host(func);
+			if (claim_needed)
+				sdio_claim_host(func);
 			sdio_writel(func, v, addr, err);
-			if (claim_needed) sdio_release_host(func);
+			if (claim_needed)
+				sdio_release_host(func);
 			if (*err == 0) {
 				rtw_reset_continual_io_error(psdiodev);
 				break;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
