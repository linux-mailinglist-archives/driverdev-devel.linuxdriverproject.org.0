Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D73A22573
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C918228D5;
	Sat, 18 May 2019 22:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agFwwPOuxrAZ; Sat, 18 May 2019 22:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBDFB2274B;
	Sat, 18 May 2019 22:42:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A99CC1BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A635885D94
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ej18owFy9oV for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA42385CFE
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:42:30 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id w25so6630595qkj.11
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dE/BQT4p6YFMZdDx7suJdmYL3xI19O858zqs3rNJ+cM=;
 b=DHGdf95J6ICNbACJ82Zhj43yAvaHzY6E2SVvmXisk/S6D/i2mcqsSTc+L6zsHUWzX4
 3vO3oVZWJ08INaMCQ5iZG/OoQj1u6/1q8dV3ymTWRXMv8YxfsIT3DvuJQdDMKUkEEKBD
 bRCACqILKLr9JQGOkhdaLaiuTr0Jc5hQsH+5HMwHy3RInD/l11i/ShCubj9sMFj6we/p
 Dfxkwmy191x7yan7ZTh4u6GD+Jv5i5Pvd98kGtc2Nps3kKt5lCBxq5UKt0twdBX9fJfD
 GAo5dwIHloDaFMfFDc7Wo6rgxsz45Gs/cGiDjE2Q2V+6+kaE+1qok94IAuS/HTa75lBE
 2XaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dE/BQT4p6YFMZdDx7suJdmYL3xI19O858zqs3rNJ+cM=;
 b=Tm+84rrlY9Q6L8X3evFnm+4vPiZdvhsmsVd+NCV28j7mVdnqYZxpyN3Xci+TTpChST
 caBkuO8sWSZlUnZAE4ZhyZuEqpdXE9FPzye7mrXAhMrWEMZnIm5CFCbsKx0PeDAaw2BK
 1SHfg9UMbkFY/nKLCKtT49CxYdz8lkt24GezALhIYVk4G0f6kSQuarz6k14NNM0FDa4g
 ak8jAa7pKAiGd1momPr006597hv9dWGK3SX9cQkZw0TogXR7hkZQ9OVwcYnb7D4Gps2q
 dRvW00v8ogIuQ9H4k24b9nKks7/KoVUHnzG8nQsg4cwlY+jmTi7zKoA7bpsgDZYBGYbn
 BtLg==
X-Gm-Message-State: APjAAAUCP/mYKvP7tzrjqcjRpzmxpfhh4VUQt5SsNhi7v8U8k81KhvlD
 5kQwFBNVn8hLa9aw8prSyic=
X-Google-Smtp-Source: APXvYqxj90LraptlSg//ifLM56VWqOy+y8+E2r9sf/wSta1QBy8cGX7IpRvfDEfNBLchuSpx2hojvg==
X-Received: by 2002:a05:620a:144c:: with SMTP id
 i12mr24481882qkl.243.1558219350058; 
 Sat, 18 May 2019 15:42:30 -0700 (PDT)
Received: from thiagestrela-Inspiron-15-7000-Gaming.semfio.usp.br
 ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id c30sm8481720qta.25.2019.05.18.15.42.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 15:42:29 -0700 (PDT)
From: Thiago Estrela <thiagestrela@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: adis16203: Add of_device_id table
Date: Sat, 18 May 2019 19:42:13 -0300
Message-Id: <20190518224213.25927-1-thiagestrela@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Pedro Sousa <pedroteosousa@gmail.com>,
 Thiago Estrela <thiagestrela@gmail.com>,
 Tiago Napoli <napoli.tiago96@gmail.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Accomplish device tree compatibility to driver ADIS16203
by adding of_device_id table and making a subsequent call to
MODULE_DEVICE_TABLE.

Signed-off-by: Thiago Estrela <thiagestrela@gmail.com>
Signed-off-by: Tiago Napoli <napoli.tiago96@gmail.com>
Co-developed-by: Tiago Napoli <napoli.tiago96@gmail.com>
Signed-off-by: Pedro Sousa <pedroteosousa@gmail.com>
Co-developed-by: Pedro Sousa <pedroteosousa@gmail.com>
Reviewed-by: Matheus Tavares <matheus.bernardino@usp.br>
Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
---
 drivers/staging/iio/accel/adis16203.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
index 70381756a64a..a5d974ac2e3b 100644
--- a/drivers/staging/iio/accel/adis16203.c
+++ b/drivers/staging/iio/accel/adis16203.c
@@ -311,9 +311,17 @@ static int adis16203_remove(struct spi_device *spi)
 	return 0;
 }
 
+static const struct of_device_id adis16203_of_match[] = {
+	{ .compatible = "adi,adis16203" },
+	{ },
+};
+
+MODULE_DEVICE_TABLE(of, adis16203_of_match);
+
 static struct spi_driver adis16203_driver = {
 	.driver = {
 		.name = "adis16203",
+		.of_match_table = adis16203_of_match,
 	},
 	.probe = adis16203_probe,
 	.remove = adis16203_remove,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
