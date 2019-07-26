Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD28076421
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 13:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B56792649E;
	Fri, 26 Jul 2019 11:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2OPPB-xfwI4q; Fri, 26 Jul 2019 11:07:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D61E2632A;
	Fri, 26 Jul 2019 11:07:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B01D1BF3EC
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 11:07:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27397884E0
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 11:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnSJDDCjQlwZ for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 11:07:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 104D1884D6
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:07:49 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id k189so5586046pgk.13
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 04:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/u86tfhQcNUSlYnznWNfROL83FOU2PZDyMsPMgWpdt4=;
 b=Sw1m99dQ1GzjlHLbGqnzu70FxBtzRaQHol/jb6+KaF+HcEpBDJtve25ugTJ+NEPXEi
 kDtTX+WunvJPbELt9OHJZYnNPFKioaIJ2VH4CH6Xk5+UHzDrzAk8Y3cu7e6ekUSKVYqH
 XX09pZfTGhIw6goKE/C0fdiY8CNGHoH9ceO1frZzsKCyPbHm2ukUF28a2bs+plEUM/k1
 RfAF7znQA4+TG8ojLSDg2U5rfd3dFMj3FMnaEfgZun7b99eHlCsO6rK6GgxLU7uh2Ta1
 TbqnfJJeElbqSU73yAnuycdOZKbyGs34VG08povgQtOXmDsT9xYhMddcwW7IFIJR74tR
 Wjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/u86tfhQcNUSlYnznWNfROL83FOU2PZDyMsPMgWpdt4=;
 b=mviBm9u+NUAI4Vmoc3HiqH+4n+6Y1MZoZGwGLcoSqs1gR4XSVeO+3LlLptHs6BpDBb
 QlZdjbodzDewa1HvwKb2Qbkkw3wcFQbHNeAc7FJPharbFNwYeC6nAX+lFSlLi4vFj4zv
 9pQmEh+2+kXKgY4wxKv0ZPHPUWYu8TkvHciu8SvCWjI1HPExQpzNg1RsRrrKTjV8J7dm
 MYxmgD3ONQVf88DMXuf9pgaZxRs2Y/ivKu4xDUnf+XRiheAdS3YSh1a8BG8z0uZwBgKq
 N9bD8CheviYHgAk1SmLqJqOZjS94KzjBVM1s/sMd8JRO/FetYgTxYo0YVAg56zXgaiMB
 iYDQ==
X-Gm-Message-State: APjAAAUZEGjCdrbio3txP7mQtbV0MXyDkj0BvBQSNLJ6MA3J21PzJRi8
 d/vDNuktTRet9YXmiEizJLw=
X-Google-Smtp-Source: APXvYqzTteDe4J3AZvvA/tFoePe0pGzSlEDOJwQ5IIZ4F3KPosMf8GMZPllfopvHebNMUwWthNnTcw==
X-Received: by 2002:a63:5860:: with SMTP id i32mr62745268pgm.124.1564139268690; 
 Fri, 26 Jul 2019 04:07:48 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id x13sm55647182pfn.6.2019.07.26.04.07.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:07:47 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: iio: ad2s1210: Use device-managed API
Date: Fri, 26 Jul 2019 19:07:42 +0800
Message-Id: <20190726110742.20445-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use device-managed API to simplify the code.
The remove function is redundant now and can
be deleted.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 0c1bd108c386..4b25a3a314ed 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -671,7 +671,7 @@ static int ad2s1210_probe(struct spi_device *spi)
 	indio_dev->num_channels = ARRAY_SIZE(ad2s1210_channels);
 	indio_dev->name = spi_get_device_id(spi)->name;
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(&spi->dev, indio_dev);
 	if (ret)
 		return ret;
 
@@ -683,15 +683,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 	return 0;
 }
 
-static int ad2s1210_remove(struct spi_device *spi)
-{
-	struct iio_dev *indio_dev = spi_get_drvdata(spi);
-
-	iio_device_unregister(indio_dev);
-
-	return 0;
-}
-
 static const struct of_device_id ad2s1210_of_match[] = {
 	{ .compatible = "adi,ad2s1210", },
 	{ }
@@ -710,7 +701,6 @@ static struct spi_driver ad2s1210_driver = {
 		.of_match_table = of_match_ptr(ad2s1210_of_match),
 	},
 	.probe = ad2s1210_probe,
-	.remove = ad2s1210_remove,
 	.id_table = ad2s1210_id,
 };
 module_spi_driver(ad2s1210_driver);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
