Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D14C115B01
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Dec 2019 05:54:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB1EA89280;
	Sat,  7 Dec 2019 04:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6hLOKs2E4r8; Sat,  7 Dec 2019 04:54:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF7768899A;
	Sat,  7 Dec 2019 04:54:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 091DF1BF280
 for <devel@linuxdriverproject.org>; Sat,  7 Dec 2019 04:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ECD24876EC
 for <devel@linuxdriverproject.org>; Sat,  7 Dec 2019 04:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-70_Ja6Pwws for <devel@linuxdriverproject.org>;
 Sat,  7 Dec 2019 04:54:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 08163870C4
 for <devel@driverdev.osuosl.org>; Sat,  7 Dec 2019 04:54:11 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id k33so147921uag.3
 for <devel@driverdev.osuosl.org>; Fri, 06 Dec 2019 20:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IiFK9BAduFHna34DQon87G4FreS7gq1kGZB1A1KnXt8=;
 b=B1z22Lhh9VfS9y96LDb+/zD+DLGmgwCbnKJoVsVQNPEdnKtyDwwaoweZBDk1JO106U
 lqYp0tK7lfgsLI4kTrC15itURVO5/25IyjlDJ+LRiaWinA67W2nZh8dCXRJfT2f9yQnI
 evcCeX0jmzi0DWPkaTSaxPUDlCDpwS+O+CIf/pga0RoGEMtP3ruJ2D1J8y+Oo3EKhV+q
 1KzeXbdiFSnYzVuqQ5mMUY4ot2Vwvx+DW1Jou+Mulzib8IkoJajb91j2OvR7QVy+z055
 KfojXyMGJoPai0FgwkoluJAkr94gYhYK1Tzsc5SqWo17FqrnbaPkWh0PpsqRkWzo+qQ/
 vPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IiFK9BAduFHna34DQon87G4FreS7gq1kGZB1A1KnXt8=;
 b=ITdi9qqXZzR8x2vvvowHEK3LryrRTJnnz+UXMsAXgqu1d7eVLqXN6iBGc1y1Lb2Ma6
 D9huJEZym29pTlt9AUaCtu/UGoPuS0pcWa7czmpx/avv8mN+mmuShnOpHNdWY6+MffKS
 Fk2Hh1K5e3RJjrXIjUaXDfB4GZv0kC2sECQFg0wsEHQ/B4gFx5OBeCedL9visdIeCBAV
 6B4AUnvYZ3rbKaw7JR3fDSmRbASg9qZwmPu0DXsVN3Y7uLx19BhMmwJ3bfEghs4ZSSl1
 uzS+p4hFeL1wxhcUnn2gGjpM32abB/Cg0Ixp35KkdT5XFl/1Q8e5O8smZovP9BxBkU0j
 aodw==
X-Gm-Message-State: APjAAAVrbzlPy4/1aK34f3NNG9wF4wROhhm/chZxHfYRXKyPiv3mziRc
 /07X2d7X7ahd5IUK2jSwVgc=
X-Google-Smtp-Source: APXvYqzcU+qHwBoWF6V8jXH/kcw3HOHOmuN+vu+g7aB6s7KogEati7PJZ06qZOY8EV/W68ROszZyBQ==
X-Received: by 2002:ab0:46c:: with SMTP id 99mr16117574uav.134.1575694449985; 
 Fri, 06 Dec 2019 20:54:09 -0800 (PST)
Received: from localhost.localdomain ([177.45.184.74])
 by smtp.gmail.com with ESMTPSA id w132sm8156205vkw.46.2019.12.06.20.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 20:54:09 -0800 (PST)
From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v6 1/2] staging: iio: accel: adis16240: enforce SPI mode on
 probe function
Date: Sat,  7 Dec 2019 01:53:38 -0300
Message-Id: <20191207045339.9186-1-rodrigorsdc@gmail.com>
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
so we should enforce it on probe function.

Signed-off-by: Rodrigo Carvalho <rodrigorsdc@gmail.com>
---
V6:
  -none

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
