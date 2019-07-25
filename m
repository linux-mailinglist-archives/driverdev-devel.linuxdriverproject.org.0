Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B08758AC
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 22:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 457BC226D0;
	Thu, 25 Jul 2019 20:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTY5LjHAj+Z7; Thu, 25 Jul 2019 20:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8875E226AF;
	Thu, 25 Jul 2019 20:08:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B71661BF2C6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 20:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD9FC88235
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 20:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrrdyay7kMjo for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 20:08:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B871D878AF
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 20:08:31 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id d15so37377920qkl.4
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 13:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gi1xORrbzPoL0P3xPYkOl5Y2rSsp/Jx6024caSGqLbc=;
 b=Y2rRvE5ML/E8Tlq84Z1huVevhH9eQd35xkxh5VpYtwFN1GRP10UJPdKNoIWHgG9NTs
 pnWqXYULMSpdnsLqPFb9J6/8Ufr/h73V4lMr+Bb+w0U8PshoeJP/rGMqaV6HMaT7yQaZ
 734g1NfpQYXL/Ae0Np/+pkbLC5bedj8kyO5Tb4hYVnqpT2Z6U/mnxqz89Ab+U0cQFQN1
 P073EZf8ZvsieTXyA/Y6f4iEGGXZXwtnODuCsSb+R3a+RGNttupIjqfSstgcrCoQMGRX
 Ye9q5Z5+DXVcJqT5BwMszpFWzMUek1dCicCYyssryRAX39fcZDfi2ODUh9bOcNTu9WlS
 sLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gi1xORrbzPoL0P3xPYkOl5Y2rSsp/Jx6024caSGqLbc=;
 b=aeGojiqC7tEx3w3TgcAdBuyHdMnf28JcbXz7lbqDmdKlA338ROib3L3VlEKO0wBbxx
 R0SZGuLPOK1dFz5DQ2otcU+/E5DWRarsZSMCgYqHoH2Ols+mNcdcgcig7btb483ztjrV
 H9x8pMjrt+XtuGbLiSzW2sqoTLcl9ST/mBTLOTugwr3mUoE0999MU0/EKFRpMVzuFbEI
 eAYOfrF6Dya0Nghh/D3SkXoMqmA2ubbz2LXCmH6LLavi7OAePhTNzAibwE0J8ZsZN3d4
 PkCkj4NGkSe64O3cJNeGV6IpOD/wdA1hVS0QXOywxqS4z2YpVCilkgJblJiCp3NSYVaX
 6j9Q==
X-Gm-Message-State: APjAAAVuSsy5mZr+blom1beMtIdtG+jeehtJUdWghFpZC6GFGSAHNmPn
 QTZVfuz39+680QDdk62C+5M=
X-Google-Smtp-Source: APXvYqyghEfRUVyXaqFOtoJAxuf9vIQUldSnA+RxPc5VnJNH/jGwK5LyWk/4fl8Jqa4AbDDPhBwR4Q==
X-Received: by 2002:ae9:ed4b:: with SMTP id c72mr55914956qkg.404.1564085310644; 
 Thu, 25 Jul 2019 13:08:30 -0700 (PDT)
Received: from karz-laptop.vlan96.localdomain ([200.17.97.58])
 by smtp.gmail.com with ESMTPSA id a67sm23870493qkg.131.2019.07.25.13.08.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 13:08:30 -0700 (PDT)
From: Kartik Kulkarni <kartik.koolks@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging:iio:adc:ad7280a: add of_match_table entry
Date: Fri, 26 Jul 2019 01:38:17 +0530
Message-Id: <20190725200817.31277-1-kartik.koolks@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com,
 Kartik Kulkarni <kartik.koolks@gmail.com>,
 Matheus Tavares <matheus.bernardino@usp.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add the of_device_id struct and the respective
of_match_device entry to complete device tree support.

Signed-off-by: Kartik Kulkarni <kartik.koolks@gmail.com>
Reviewed-by: Matheus Tavares <matheus.bernardino@usp.br>
---
 drivers/staging/iio/adc/ad7280a.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 19a5f244dcae..ded0ba093a28 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -1027,9 +1027,16 @@ static const struct spi_device_id ad7280_id[] = {
 };
 MODULE_DEVICE_TABLE(spi, ad7280_id);
 
+static const struct of_device_id ad7280_of_match[] = {
+	{ .compatible = "adi,ad7280a", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ad7280_of_match);
+
 static struct spi_driver ad7280_driver = {
 	.driver = {
-		.name	= "ad7280",
+		.name	= "ad7280a",
+		.of_match_table = ad7280_of_match,
 	},
 	.probe		= ad7280_probe,
 	.id_table	= ad7280_id,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
