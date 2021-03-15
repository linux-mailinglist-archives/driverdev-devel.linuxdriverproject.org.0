Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFCC33B4B5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 14:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD9964E6A1;
	Mon, 15 Mar 2021 13:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIXvuQhDfiNV; Mon, 15 Mar 2021 13:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 785254E51E;
	Mon, 15 Mar 2021 13:37:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B2481BF31D
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 13:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0593C4E51E
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 13:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XkJ_hJ8IRKMb for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 13:37:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 495E44D752
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 13:37:38 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id z5so15334837plg.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 06:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fiSNz4Bld/PQvfFvdTn55/ssLR/DWX7rfzFxr95WxDc=;
 b=eOv37JZH0OP/C/ioUhVtLwq7FJAL27YlfPn6YNIrDEqXc+Q8bS7NQn40DR1fAHdvwn
 uoxTKoUA9IsT9FcrTFq34tPRCQnw0qU8lQqqELwNXk6cPZKilRGcTSDS0Msun5k2uGiC
 AXidZ8Uxu2Q1aDy06pFPX8+EJIwbmTi5KKjNG0ZSmi21AA8EbvUYmekUD47Lh579G74M
 S6bX7yK3EhxASOBOS5WCleSZ5L7kHcZdBw9yMwYeCiyA68Ggtx7noGi/c/9OASxc1kev
 YrpPupYrV4w/P9rOHhoyzsXAkoCcx6bbiP6DKA6f2CLXUL7rgTGQhXhz26B9ePMG4wKE
 yVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fiSNz4Bld/PQvfFvdTn55/ssLR/DWX7rfzFxr95WxDc=;
 b=FGU98ONcuh2fB/NLH0yckAKzIX6W1AI2oO6kHwwABJzkb/bVu7CJQ+FVEFhMqBoo9G
 LSapDzd1itUwHuFutLqNoyiVY4rcK841vuJSjkJdp3lCDFSnYzrO3hPCEEAIH+4sGGt3
 D/oDdAIJXSLapchr7bSjxNS51ZT6ZDlWClQr7v+Qhyq87UED/scwXK2vI6Ew29H6pAWJ
 8DhMrZs/E18ic5gHky/cf5xzsAUclCabPwO/+f3cltwnt8RaMoeN4jxYzNUsEhw4QZfY
 PBceuofEDB1qo8HIuLQ2FIBGIONS+fUYuDHSalwBn6MJOXao979ShlelMKgEJG7Z593+
 7cTQ==
X-Gm-Message-State: AOAM531kk/4U+0LNT44YS/DTt6VSxUXgY2rdQE6WjCBUgEITJr+0kSah
 pdsxX81JqGNwAzzxevpRSGo=
X-Google-Smtp-Source: ABdhPJwYElLS4W4P9UWY2WllTnYNoyDeMolaoAwDW5b7WyepJGoB6xBbtGk2c8sNknfglK21kPEaeA==
X-Received: by 2002:a17:90a:4104:: with SMTP id
 u4mr12639092pjf.81.1615815457605; 
 Mon, 15 Mar 2021 06:37:37 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:89b:3eb5:a73b:575c:3e6f:f296])
 by smtp.googlemail.com with ESMTPSA id z11sm13925851pgj.22.2021.03.15.06.37.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 06:37:37 -0700 (PDT)
From: Mugilraj Dhavachelvan <dmugil2000@gmail.com>
To: 
Subject: [PATCH] staging: iio: ad9832: kernel-doc fixes
Date: Mon, 15 Mar 2021 19:07:11 +0530
Message-Id: <20210315133711.26860-1-dmugil2000@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Mugilraj Dhavachelvan <dmugil2000@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes a W=1 warning.
-Added ``:`` to lock parameter in 'ad9832_state' description.
-It's a reference comment so removed /**

Signed-off-by: Mugilraj Dhavachelvan <dmugil2000@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 74308a2e72db..e31ebba47a3c 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -86,7 +86,7 @@
  * @freq_msg:		tuning word spi message
  * @phase_xfer:		tuning word spi transfer
  * @phase_msg:		tuning word spi message
- * @lock		protect sensor state
+ * @lock:		protect sensor state
  * @data:		spi transmit buffer
  * @phase_data:		tuning word spi transmit buffer
  * @freq_data:		tuning word spi transmit buffer
@@ -248,7 +248,7 @@ static ssize_t ad9832_write(struct device *dev, struct device_attribute *attr,
 	return ret ? ret : len;
 }
 
-/**
+/*
  * see dds.h for further information
  */
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
