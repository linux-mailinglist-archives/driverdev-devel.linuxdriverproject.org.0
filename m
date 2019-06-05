Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A00354E2
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 653D987D39;
	Wed,  5 Jun 2019 01:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bvgC+WZgXaY6; Wed,  5 Jun 2019 01:10:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D830587C2C;
	Wed,  5 Jun 2019 01:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41F2E1BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23FA686C37
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qrbbOTz7xWTB for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6710A86C1A
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:08 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id d15so4148275qkl.4
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zQKkpwtYkmsAlAHS1/A4fUvJkej14tNEkYhCxUI7UmE=;
 b=mML4dgqZiU8wAr0d5ViMsn+/5YALz6+FqkNUxcR95xosVUMIBi6CodrS3m6LUmE7yq
 N0F3JXgJcb1GrLlzx5hFiCb0Vy7BGKqS09iQ8rxnyjB1ogbN/tXJBEs0BTvdZhyFodrE
 vlN2ULSryR+pLbKQ2+otlPq6cGq3E4yw8AW59O6bwCneCoXbyoTguYBOdEgou7Q1hXJe
 ZH9flwTsYEX4uhJPyhF/UI9IT1KYIBswMCgdS2x0kGXn3NFKogznM2Q9kJwEuE6dhDjY
 rVjphXLFxgl7LTBv3lmLRWsggp/UsoU8fcYAwJVXddBeunRLMW6wfZNdqtXo8GFUc8a/
 FwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zQKkpwtYkmsAlAHS1/A4fUvJkej14tNEkYhCxUI7UmE=;
 b=gVdNADXXDlz3H2bIYdc4rA+0DsgU4oElbY8kblCUheOTl4JJGRz/+NpyDOP8qlgDBp
 bTpyS0WnqE7WbKEUPSerrSIVRyDV0mJS/mXaozuOsgXefRodufWvZuzLjpV2hi7Ovg/x
 mSBvuOHa7pyeB3nzXUy+lh+yGFhWr53k4CFKvGwhAZh5I2l2/gT5uYKtBZLJ2BHgjHI1
 LgE1pN5lQ5HJygyo43XrIlcprBYfO4uElKKW0ZrNd5+pkfWrAxtJno/6GPAewcs+mRJ7
 Lnr03hSXHvTwoiD5SkGU04RwMNtILhrThsD36jeCBHRfX9quWmo1VhhAL4i3fjEiDvuC
 DVdg==
X-Gm-Message-State: APjAAAUwmCj43EUEkMlpqNyxNNa6bCdSzMCkoupElcHa+Ao8aod0Q/8d
 99+/PKf7BYr9xbHe0PByDxQ=
X-Google-Smtp-Source: APXvYqzPJdWBc2QIMT3Y6iL4ReXMlGY1hQuJNW76I+wcdqm0YiOxcQSdaP6E9QroOX3kgbi3s4xLBQ==
X-Received: by 2002:a37:6086:: with SMTP id
 u128mr10837297qkb.270.1559697007568; 
 Tue, 04 Jun 2019 18:10:07 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:07 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/6] staging: kpc2000: kpc_spi: remove unnecessary struct
 member word_len
Date: Wed,  5 Jun 2019 01:09:10 +0000
Message-Id: <16f6ea93695137a9347203f66aff36874730cc26.1559696611.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559696611.git.gneukum1@gmail.com>
References: <cover.1559696611.git.gneukum1@gmail.com>
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
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The structure kp_spi_controller_state, defined in the kpc2000_spi
driver, contains a member named word_len which is never used after
initialization. Therefore, it should be removed for simplicity's sake.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 1d89cb3b861f..61296335313b 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -110,7 +110,6 @@ struct kp_spi {
 struct kp_spi_controller_state {
 	void __iomem   *base;
 	unsigned char   chip_select;
-	int             word_len;
 	s64             conf_cache;
 };
 
@@ -269,7 +268,6 @@ kp_spi_setup(struct spi_device *spidev)
 		}
 		cs->base = kpspi->base;
 		cs->chip_select = spidev->chip_select;
-		cs->word_len = spidev->bits_per_word;
 		cs->conf_cache = -1;
 		spidev->controller_state = cs;
 	}
@@ -369,7 +367,6 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 			if (transfer->bits_per_word) {
 				word_len = transfer->bits_per_word;
 			}
-			cs->word_len = word_len;
 			sc.bitfield.wl = word_len-1;
 
 			/* ...chip select */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
