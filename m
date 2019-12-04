Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915FE113847
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 00:34:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7656A88461;
	Wed,  4 Dec 2019 23:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayBuc-q99NrP; Wed,  4 Dec 2019 23:34:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 172BE88455;
	Wed,  4 Dec 2019 23:34:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6591BF36F
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 23:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E2A488456
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 23:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZeEOvzusSIr for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 23:34:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A86088455
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 23:34:36 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id h23so1276812ljc.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Dec 2019 15:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gxeCqonFj2e3ybgD2LvSWZrZzpHP0tVbGUcNe3MMgJw=;
 b=NuDEfc2bl1jJ8z9f2AWuhS7GN34ZN2VwN91arwYD6DdxEBTbNV7eqA1kO/vhS0ZLHT
 D2vwoh1c7HXvsqGcq0jpjcb+LLF6+xTRA0HJQyxvQ+hnW5TDzuCygiDkJzvz/Sl7v0JR
 vuGwQglEsl3M4RDGaY2A1jxdvfMflQZfnCZvg7iT8x8/FlA1c/ifchB8p6uJQAKsu20d
 T/Zv62RlUsq9/1iq5JguKNz8aQPNpbIum9A8pq2jKb5VXH7uqRX1D7MfXzzVK3H7HSQz
 fTIBkGGllA5JvQPYlOKJps0+kyBIJR2Z+oVSMfa0WErzE//4IE4rDUml0dVxlQvZGK6G
 79fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gxeCqonFj2e3ybgD2LvSWZrZzpHP0tVbGUcNe3MMgJw=;
 b=tk2NW48RSMKgsXgOrJwvj1piSXIRKLrqNvVkbAoTDErafUeqWjbvI7Qwt0dhUVV7g0
 PLBHT2cAi0hHQ9wsrMew69nONu0PEmg7PE+WRCsj3EGy5kIuQJhfxGUCw4QIrbmWo0Ai
 Wph+QKFcuO4gD5n24Ks0kLf5PTpTULhw7QuhTFNtpqvxAP8EEJiZTaIFHP7DOdfH9IUh
 4FMFcyUCiMbYBceSP1VxQi4SjkFV3Yr+ZEZujmVopWobVVIhRY+yx5fwjfTQIRhrrTnG
 AYXQ/DKVyb/ycj0eFBRqaSDekVlWHxKpsN0LuwFYPjKmziyQOcRAwWGSxER8bgJ9c693
 rvaQ==
X-Gm-Message-State: APjAAAWLFKfrdQKeXQd8Y0cQx+sKemOeKXry+UzRH0rK9j/JQW+1R/+2
 TBED83lKP69wbnzqfvFVLr+9lw==
X-Google-Smtp-Source: APXvYqz3aDI20APC52U0BiJvhpVHW0EwH4gTg2p20P6fu+D5yXlC7G9e6SWLiWSOUh7Xi4L7krIVkQ==
X-Received: by 2002:a2e:580c:: with SMTP id m12mr3678296ljb.252.1575502474013; 
 Wed, 04 Dec 2019 15:34:34 -0800 (PST)
Received: from localhost.localdomain
 (c-21cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.33])
 by smtp.gmail.com with ESMTPSA id e8sm4609240ljb.45.2019.12.04.15.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:34:32 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: fbtft: Do not hardcode SPI CS polarity inversion
Date: Thu,  5 Dec 2019 00:32:30 +0100
Message-Id: <20191204233230.22309-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The current use of the mode flag SPI_CS_HIGH is fragile: it
overwrites anything already assigned by the SPI core.

Assign ^= SPI_CS_HIGH since we might be active high
already, and that is usually the case with GPIOs used
for chip select, even if they are in practice active low.

Add a comment clarifying why ^= SPI_CS_HIGH is the right
choice here.

Reported-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/staging/fbtft/fb_uc1611.c    | 12 +++++++++---
 drivers/staging/fbtft/fb_watterott.c | 13 ++++++++++---
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index e763205e9e4f..f61e373c75e9 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -63,11 +63,17 @@ static int init_display(struct fbtft_par *par)
 {
 	int ret;
 
-	/* Set CS active high */
-	par->spi->mode |= SPI_CS_HIGH;
+	/*
+	 * Set CS active inverse polarity: just setting SPI_CS_HIGH does not
+	 * work with GPIO based chip selects that are logically active high
+	 * but inverted inside the GPIO library, so enforce inverted
+	 * semantics.
+	 */
+	par->spi->mode ^= SPI_CS_HIGH;
 	ret = spi_setup(par->spi);
 	if (ret) {
-		dev_err(par->info->device, "Could not set SPI_CS_HIGH\n");
+		dev_err(par->info->device,
+			"Could not set inverse CS polarity\n");
 		return ret;
 	}
 
diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 27cc8eabcbe9..76b25df376b8 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -150,10 +150,17 @@ static int init_display(struct fbtft_par *par)
 
 	/* enable SPI interface by having CS and MOSI low during reset */
 	save_mode = par->spi->mode;
-	par->spi->mode |= SPI_CS_HIGH;
-	ret = spi_setup(par->spi); /* set CS inactive low */
+	/*
+	 * Set CS active inverse polarity: just setting SPI_CS_HIGH does not
+	 * work with GPIO based chip selects that are logically active high
+	 * but inverted inside the GPIO library, so enforce inverted
+	 * semantics.
+	 */
+	par->spi->mode ^= SPI_CS_HIGH;
+	ret = spi_setup(par->spi);
 	if (ret) {
-		dev_err(par->info->device, "Could not set SPI_CS_HIGH\n");
+		dev_err(par->info->device,
+			"Could not set inverse CS polarity\n");
 		return ret;
 	}
 	write_reg(par, 0x00); /* make sure mode is set */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
