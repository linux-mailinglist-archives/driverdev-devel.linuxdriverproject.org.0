Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A706E10810D
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Nov 2019 00:35:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 631D787E17;
	Sat, 23 Nov 2019 23:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buPSNqD-T7sY; Sat, 23 Nov 2019 23:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 529FF87DB2;
	Sat, 23 Nov 2019 23:35:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD7011BF568
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 23:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA21985F18
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 23:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uEOWOVXBQHE1 for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 23:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 47F5C85F10
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 23:35:46 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id n4so4319587qvq.9
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 15:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/KpiDb9LR0UFpghJdn3NvgOOMBws5emrYI70pah9SfY=;
 b=f3ggcmI44cx3NLECHundIyvAQ0XLc08hmfpoX7Au0CpO56N6MVVkVa97Y4FcHNqEXD
 //b/7NxTpdf+1clYwHoPAklouhwB3sa5DFP/YR6CXp/Ukq1fKFO4Y5/c1FSTWCJ4/wei
 8PrhjAm32y0Js15GcWjJw5h04+4+lgeRBTiepaX2vbjpDrRrC8AB8UtESWP2+o/CcT8f
 gNnQkZK/C7IpBedcwkU+GdINcB6dzg36d7QS2mM1O1isCOqwrAsux4ZstIueFvuYBUAn
 DC/wMBKmtEt0VCthf58yQV0Ua0Ao9l4WDhcGdE2pXke9ifjzrhmylE30Tr3X50F0jfKL
 ESKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/KpiDb9LR0UFpghJdn3NvgOOMBws5emrYI70pah9SfY=;
 b=ZtC6pBROb3oU2wIyHndIkrmauRJGSaWeezR2RvRIac/kI+6QX4HLTaCdCleKyZwEWn
 vIJfWqQiU5eduDOsWwlSNZ+3eo43n917kUT/ggqZTyvfZ7bPehkgr6NsgmmEolcHtTdt
 zrRbI/9VHfJ05k8pQqybCNyazxb+gMCmNgNol+VI0gJFVm4qOXgmAm7bhbaJC8tyNLuc
 MRI4MIOl0hT6xh6Kt7l8RLAvP0Z+sm8CXGGrHZDU3CEG6+nuuG62I9ZYGHTa7AhSNY5d
 ETjATY+rSOGVJkfD7G218zSDiVyNi9DtazoI5veu1y6SQZb5WC3BXjRb0T9vNFr6udRy
 Ez4Q==
X-Gm-Message-State: APjAAAVDuipIWvrDSJiAdZwVBRWhZuEdK5DtUerf2RaDImynTjWNHD67
 HxeWuBzQRawvR9d3AJKcvZY=
X-Google-Smtp-Source: APXvYqw9TpLPbz1zzVNV8wmdFnaYLtygT/vtf9cwyg/y9otvK/BsCF5EpMbEOrlyS3x2gJqdHA4RNA==
X-Received: by 2002:a0c:cdc3:: with SMTP id a3mr4014117qvn.216.1574552145134; 
 Sat, 23 Nov 2019 15:35:45 -0800 (PST)
Received: from localhost.localdomain ([177.76.215.166])
 by smtp.gmail.com with ESMTPSA id f22sm1357518qtc.43.2019.11.23.15.35.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 15:35:44 -0800 (PST)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 alexandru.ardelean@analog.com
Subject: [PATCH v5 1/2] staging: iio: accel: adis16240: enforce SPI mode on
 probe function
Date: Sat, 23 Nov 2019 20:35:09 -0300
Message-Id: <20191123233510.4890-1-rodrigorsdc@gmail.com>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rodrigo Carvalho <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to the datasheet, this driver supports only SPI mode 3,
so we should enforce it and call spi_setup() on probe function.

Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
---
V5:
  - Add this patch to the patchset

 drivers/staging/iio/accel/adis16240.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 82099db4bf0c..77b6b81767b9 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -400,6 +400,13 @@ static int adis16240_probe(struct spi_device *spi)
 	indio_dev->num_channels = ARRAY_SIZE(adis16240_channels);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
+	spi->mode = SPI_MODE_3;
+	ret = spi_setup(spi);
+	if (ret) {
+		dev_err(&spi->dev, "spi_setup failed!\n");
+		return ret;
+	}
+
 	ret = adis_init(st, indio_dev, spi, &adis16240_data);
 	if (ret)
 		return ret;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
