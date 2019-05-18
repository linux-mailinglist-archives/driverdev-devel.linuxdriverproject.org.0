Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AE9224FB
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 23:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E2FE424400;
	Sat, 18 May 2019 21:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4pHF+ITD9sbO; Sat, 18 May 2019 21:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A3822274B;
	Sat, 18 May 2019 21:01:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32CE21BF3E9
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DAF58786C
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUSUauXZLurG for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 21:01:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 961F087834
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 21:01:02 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id c14so6617065qke.3
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 14:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vsAT5qbsaotm0oBGUetquV7WtLzGgBbpbWMnm1fUtaw=;
 b=FNpAL29qZqJo1UbDaDy/m2Lx+72Jdb/OcpovJocPvNdp8WBksBQuzTgTykux8OFEry
 u7I0119akjhgDUCZaMemtZzzAY+Nce0SIu4gcu8otcvtmQP5OUc3K9AJzRIRCCQ/5QT2
 Usk+/Q1Y3Jqf8QpXqcMawAnSv3sFqsaFNepu7mzfwoqWmbkfFerAsRz67rnleRgN68pP
 /OMaOgbmt4Un+ZoapzcSr1CxD9vQqKdgiMG3mcXs0svJKhG+AqIhtnQsSfhWmQOMg9rd
 vFBaje0SFFonG9/h748wKquhNT6wFCc/Z9B8BGZtvU0LDKTCubGCI/mQ3kjvtwOtLkwS
 uL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vsAT5qbsaotm0oBGUetquV7WtLzGgBbpbWMnm1fUtaw=;
 b=EB/vLaj0T9IPMHdGrHwX50fp2+w1/dkUYe1DhpAwR8oshmhFoCyg052hbUhshgXZY5
 o/i8dTLDoLqVHpTekBQ3vWWZuX77PG6udrFEMLX/SD0rYr40Q87HSuTXTqYsin1mSIXF
 KcwztUAf3lPzTFzMFEEvLeOZlZqsCx3xqJoubuZPrSjlXJE3bHyabHgkAd/SHzmzNnZt
 713Lr4vCMfVIj8dFa0XE5p+x/xnjBAKoBtJdgXC63B+q1aMR7WU5vfnUvm5/PxhQwO5u
 WeJ6F86YsoSUaYVWLFCVQOGdEyWOBGc+zRnziGnRoieTVrSEMSCX8G2vrTLCzAhnZsyt
 JJVQ==
X-Gm-Message-State: APjAAAXHrKSynlSg4OENCgd5PWvQ+Nr8Vv39ICtiBDSBbcflOJqvoRq4
 3jAjZ2sj5ZTakXq2iAIJHgE=
X-Google-Smtp-Source: APXvYqzxWN1QgdaQ3liwyrherSRNq5sJ61pYI5Zg395d80UXIdRoppdxLpHirXw2L9D4LwA2p75eRA==
X-Received: by 2002:a37:6043:: with SMTP id u64mr39779236qkb.9.1558213261871; 
 Sat, 18 May 2019 14:01:01 -0700 (PDT)
Received: from wall-e.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id q5sm7730906qtj.3.2019.05.18.14.00.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 14:01:01 -0700 (PDT)
From: Lucas Oshiro <lucasseikioshiro@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: adis16240: add device to module device table
Date: Sat, 18 May 2019 18:00:08 -0300
Message-Id: <20190518210008.20147-1-lucasseikioshiro@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Rodrigo Ribeiro <rodrigorsdc@gmail.com>,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add a of_device_id struct and MODULE_DEVICE_TABLE call.

Signed-off-by: Lucas Oshiro <lucasseikioshiro@gmail.com>
Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
Co-developed-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index b80e0d248b0f..8c6d23604eca 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -435,6 +435,12 @@ static int adis16240_remove(struct spi_device *spi)
 	return 0;
 }
 
+static const struct of_device_id adis16240_of_match[] = {
+	{ .compatible = "adi,adis16240" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, adis16240_of_match);
+
 static struct spi_driver adis16240_driver = {
 	.driver = {
 		.name = "adis16240",
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
