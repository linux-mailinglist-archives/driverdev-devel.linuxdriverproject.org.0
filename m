Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E60C333938
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 10:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4B7D84385;
	Wed, 10 Mar 2021 09:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRPuRT7VhLoE; Wed, 10 Mar 2021 09:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E60D084222;
	Wed, 10 Mar 2021 09:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B8321BF97C
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 09:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77AD2431A2
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 09:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qImrd2bRN2On for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 09:51:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A58394319A
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 09:51:47 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id p1so27130673edy.2
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 01:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zBIxLdWqLnaTc/HNSK6FC9gib04yK5F64uC+VAu1FBc=;
 b=MSo18LFoB3yv54bsMl2QvxGIX+lA2zh3asnEdxzGM5LfyCL6fsQ0E0pcyK2NWxPMEM
 Kvo/olQLRlSTCgzO/34AYq1Cw9x1u0JGL7sR+2cURgpk4zfljK/7VXp1wTCgaoAoDM4B
 kJUba0MspCUKqRNov/dSW+DYR6uaB+zDQ/hDvLAWcXjHxYWqVQ296j1ld/D8Px+LhJ8Y
 3PQXu40MaR5keFXFs0cflmaL8Wl01y4HNB0ypLbx2PdE/nSbtw/c+5C4bnvNfQ5XZHMG
 sw+DLP11U4LMaqbV06dJY2hYzS0wJMKc89i5W09HEqUh5dytPuHH/w3rBns5W/zfUGmI
 Aqng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zBIxLdWqLnaTc/HNSK6FC9gib04yK5F64uC+VAu1FBc=;
 b=UalNcVg6ljrTqZr8GXHCa0nNgymCinkbc+/APLwxriVn6VJ5boGEOO1mbJ8FVfTUVQ
 BUSvqagMYHMKsmNapk7N13bNO9ziAZykT2ITruN9sAojkaRtdV/xBzMSiqvVDVrYv1H1
 y5lMJdm1kOHUO0LBmldNhCZIkhTDFUwSPfRLVeGLzLDoPC15pRlz+3EWFFfCEb8pC+0a
 NsTIg9vPjNcB+9Jc4XgUkXvd2k4pj2fNJmGEiNmhTADY6h4gZ+jNuPWxpBWFeXxPKsCj
 aqXaK/Gu2MXUXJJRUPaq3hL6CGYDJH68FkJDmEIhuY5WYJBZoewGrTZLFgf/vpqdgK6m
 JDjw==
X-Gm-Message-State: AOAM531W28f2vRnUO0O4Fv34jyFyFla8Pf+ShRtGHRvA7F/0tSK6A7uq
 k0dFDPC2hRa5YvsaEl7KREnqag==
X-Google-Smtp-Source: ABdhPJwDNyIPf4nWh3MzECZMM0ZIqB4OEA7e3uSknGcoFvDB4e9weZbbP/OighJ/kFTBiV/nun3hIg==
X-Received: by 2002:aa7:d74b:: with SMTP id a11mr2301036eds.92.1615369905860; 
 Wed, 10 Mar 2021 01:51:45 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id s20sm8921807ejj.38.2021.03.10.01.51.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 01:51:45 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: iio: ad9834: convert to device-managed functions in
 probe
Date: Wed, 10 Mar 2021 11:51:31 +0200
Message-Id: <20210310095131.47476-1-aardelean@deviqon.com>
X-Mailer: git-send-email 2.29.2
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
Cc: gregkh@linuxfoundation.org, linux@deviqon.com, Michael.Hennerich@analog.com,
 Alexandru Ardelean <aardelean@deviqon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change converts the driver to use device-managed functions in the
probe function. For the clock and regulator disable, some
devm_add_action_or_reset() calls are required, and then
devm_iio_device_register() function can be used register the IIO device.

The final aim here would be for IIO to export only the device-managed
functions of it's API. That's a long way to go and this a small step in
that direction.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/staging/iio/frequency/ad9834.c | 64 +++++++++++++-------------
 1 file changed, 31 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 262c3590e64e..b063cfd0e0e1 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -390,6 +390,20 @@ static const struct iio_info ad9833_info = {
 	.attrs = &ad9833_attribute_group,
 };
 
+static void ad9834_disable_reg(void *data)
+{
+	struct regulator *reg = data;
+
+	regulator_disable(reg);
+}
+
+static void ad9834_disable_clk(void *data)
+{
+	struct clk *clk = data;
+
+	clk_disable_unprepare(clk);
+}
+
 static int ad9834_probe(struct spi_device *spi)
 {
 	struct ad9834_state *st;
@@ -407,26 +421,33 @@ static int ad9834_probe(struct spi_device *spi)
 		return ret;
 	}
 
+	ret = devm_add_action_or_reset(&spi->dev, ad9834_disable_reg, reg);
+	if (ret)
+		return ret;
+
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 	if (!indio_dev) {
 		ret = -ENOMEM;
-		goto error_disable_reg;
+		return ret;
 	}
-	spi_set_drvdata(spi, indio_dev);
 	st = iio_priv(indio_dev);
 	mutex_init(&st->lock);
 	st->mclk = devm_clk_get(&spi->dev, NULL);
 	if (IS_ERR(st->mclk)) {
 		ret = PTR_ERR(st->mclk);
-		goto error_disable_reg;
+		return ret;
 	}
 
 	ret = clk_prepare_enable(st->mclk);
 	if (ret) {
 		dev_err(&spi->dev, "Failed to enable master clock\n");
-		goto error_disable_reg;
+		return ret;
 	}
 
+	ret = devm_add_action_or_reset(&spi->dev, ad9834_disable_clk, st->mclk);
+	if (ret)
+		return ret;
+
 	st->spi = spi;
 	st->devid = spi_get_device_id(spi)->driver_data;
 	st->reg = reg;
@@ -470,48 +491,26 @@ static int ad9834_probe(struct spi_device *spi)
 	ret = spi_sync(st->spi, &st->msg);
 	if (ret) {
 		dev_err(&spi->dev, "device init failed\n");
-		goto error_clock_unprepare;
+		return ret;
 	}
 
 	ret = ad9834_write_frequency(st, AD9834_REG_FREQ0, 1000000);
 	if (ret)
-		goto error_clock_unprepare;
+		return ret;
 
 	ret = ad9834_write_frequency(st, AD9834_REG_FREQ1, 5000000);
 	if (ret)
-		goto error_clock_unprepare;
+		return ret;
 
 	ret = ad9834_write_phase(st, AD9834_REG_PHASE0, 512);
 	if (ret)
-		goto error_clock_unprepare;
+		return ret;
 
 	ret = ad9834_write_phase(st, AD9834_REG_PHASE1, 1024);
 	if (ret)
-		goto error_clock_unprepare;
-
-	ret = iio_device_register(indio_dev);
-	if (ret)
-		goto error_clock_unprepare;
-
-	return 0;
-error_clock_unprepare:
-	clk_disable_unprepare(st->mclk);
-error_disable_reg:
-	regulator_disable(reg);
-
-	return ret;
-}
-
-static int ad9834_remove(struct spi_device *spi)
-{
-	struct iio_dev *indio_dev = spi_get_drvdata(spi);
-	struct ad9834_state *st = iio_priv(indio_dev);
-
-	iio_device_unregister(indio_dev);
-	clk_disable_unprepare(st->mclk);
-	regulator_disable(st->reg);
+		return ret;
 
-	return 0;
+	return devm_iio_device_register(&spi->dev, indio_dev);
 }
 
 static const struct spi_device_id ad9834_id[] = {
@@ -539,7 +538,6 @@ static struct spi_driver ad9834_driver = {
 		.of_match_table = ad9834_of_match
 	},
 	.probe		= ad9834_probe,
-	.remove		= ad9834_remove,
 	.id_table	= ad9834_id,
 };
 module_spi_driver(ad9834_driver);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
