Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646BD1ECC
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAC9986B15;
	Thu, 10 Oct 2019 03:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2O8HHLADGRT; Thu, 10 Oct 2019 03:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E30A85A58;
	Thu, 10 Oct 2019 03:11:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15FF61BF9B9
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1231085FE4
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B6zLKABVhbof for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:11:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9893B85A58
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:11:54 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d22so2068043pls.0
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=D/KNHz5BwPe8IYjqa/nxA57E4GIlBboQkvtK/MCahh0=;
 b=fKK7M6r9XMD030uB0tGC5Zm7u+1xds6ICaE53rNv9XP+LRFFf/mM1qekxlWcYwAFBC
 7/o6L3mHz+Q5AW21AL7tdt96KczaCJjPls/tB/twdyFiBeeJgyfjKMBMHE4I+XH3DVw7
 S35xJL7EuNrf9zYy1kJYghMW8R2COu2qQYq1EeI2DisV2nuiWTnxg7HpsZeJ/e89+5Cr
 TA+0/yPWcZ/ui57oygr00sIxDRFqZJs3xxKITsj+WqR424AQgTa6dbKCi6u4BNTWULgQ
 LMvLKVNRv7LuhCOEdTiB8iUgtGKVbDBE2/v+Hpw5Bj47UKc6fqGqmVhoJ4J7j0z2xfic
 vYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=D/KNHz5BwPe8IYjqa/nxA57E4GIlBboQkvtK/MCahh0=;
 b=lHFD4vRoJjG5WIhsygmWUBjMR6Q2jl+51NyqWj5wX/2y678ag63W0r0byQ87IxPkyC
 dWvQDIr51ieJn0KucOWYFJv6PSAxdTmgIko6K0i7XBP68TE7lhhQ6Nc0EsyOfCCLEp4q
 MzNb8iTAYEjJ7CTTHM96aS7d3zx01p4tNyZR5YM9+DK7bBUUx6xpKJpnqqHNNMtxjtK4
 BLjJe7xaBri+7due/zfVNyg8fSIC6aK1ISCDLnOsaeiX9nkS/WepYj8NeesSXya+vhfo
 vCfAaP5Wu2v3FDuhh4+28Nim41hBNYyWURixIEo82+7UH1VBmgWabFB86iSIJG4Rfz+6
 9Jjw==
X-Gm-Message-State: APjAAAURybwRRbLwtinu1ELta6WZNlZ4kjN0qsEcKFCEUt8XiqJkB7nm
 kQPihWHHsXnRgF+1fFh8KM8=
X-Google-Smtp-Source: APXvYqzCw7q+QR6Sb72KBCYSpYvYD5cC8rr/pEpNA+HHhXTr9aH++Si0CSkNaSI6dP4NRceJ+X6fNQ==
X-Received: by 2002:a17:902:848e:: with SMTP id
 c14mr6732262plo.217.1570677114247; 
 Wed, 09 Oct 2019 20:11:54 -0700 (PDT)
Received: from panther.hsd1.or.comcast.net ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id b4sm2810934pju.16.2019.10.09.20.11.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 09 Oct 2019 20:11:53 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] KPC2000: kpc2000_spi.c: Fix style issues (alignment)
Date: Wed,  9 Oct 2019 20:11:45 -0700
Message-Id: <1570677105-4151-1-git-send-email-chandra627@gmail.com>
X-Mailer: git-send-email 2.7.4
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
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: "CHECK: Alignment should match open parenthesis" from checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 0d510f0..ccf88b8 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -316,19 +316,19 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
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
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
