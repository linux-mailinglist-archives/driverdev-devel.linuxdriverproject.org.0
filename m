Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED056758A5
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 22:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 15258226CF;
	Thu, 25 Jul 2019 20:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HH8hFHB--Amv; Thu, 25 Jul 2019 20:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52A21226AF;
	Thu, 25 Jul 2019 20:07:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A46481BF2C6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 20:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1D278685A
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 20:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlUtFx2mlg5K for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 20:07:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CEACC86813
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 20:07:12 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id k10so50403542qtq.1
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 13:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JUKV8WRNFyPUgh72J2ygKbXLGmL3yg1CtOIEnQ3ys8Q=;
 b=dQPZ9xr5JDDOjCF7rG8SZMnCbkMeZmnwNjiXYICC0ydBM86Vn5XGqOtYYCso904WEN
 rkO5Kdpek6TREvb1CUOFZ2xlofa3+1Dz/mXtCmwlJa9KxE/+tGsoBS+cEYvaeieZ0ads
 h2BxtBG3aKG/X0e5VCq5/QHGzKvn+MxRUkgdx/K110yQNIo4xVqFVdzxN3oeBzSAQlsa
 6ghaFVqSbThPwZ7n8t0iZ7XEmpORWy48ZIqewk/8vY1xZOfsmuwGe0wiJM4uQ3uxttgl
 NXPqQyjohfu4R4oo0q3rfiiTGLiimANHKOZDWgONTvM8UJVF05urU9S4VzISttcA2h9z
 J36A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JUKV8WRNFyPUgh72J2ygKbXLGmL3yg1CtOIEnQ3ys8Q=;
 b=rfnoT3vrmiV6iQTbX52vBmFtKo8K2aIg8pHCNDqeBuf+PXqBD6LQtegSJTDD02RLsy
 swY7gNQqUVJozSA7a10wKNawAJj5+/GNojLGHjxEqNVpZ+mqUYe1P5ZiM9ivTW9gT5hP
 9pFiFKQI/iGrPPa90Wei571+rcr9V7RegLlpl8dobLjbg+kyi6/s3H1PSVv+IVaDNuPM
 X29kSVG89rHqG22KNWa5MLsaHJGZLL4KBJ8BU+0nTpaN7/zIlA9wXsIJyeND9NG1p/8K
 VkF91k1XS2vuKWRStZOP4u0j/jjdnnc7KzCrHV2M8DKurE9BmeFT+TfJHtzm3rOj2anR
 s5mg==
X-Gm-Message-State: APjAAAUPnzBxRuF2tNmRirDIkk/SG3OK+oksz2W06w60DF3fd0LNnVBh
 teYcTm+P6AUjU8kFQp6eN00=
X-Google-Smtp-Source: APXvYqzTAnhUIkULBN0XJBcTBc0KkqTq7wvnRGk68Q1Vi1EEcYmBr1jGdDzUfom5Ei+A5SLsCSLrBQ==
X-Received: by 2002:a0c:d7cc:: with SMTP id g12mr31578289qvj.220.1564085231696; 
 Thu, 25 Jul 2019 13:07:11 -0700 (PDT)
Received: from karz-laptop.vlan96.localdomain ([200.17.97.58])
 by smtp.gmail.com with ESMTPSA id g10sm21709514qkk.91.2019.07.25.13.07.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 13:07:11 -0700 (PDT)
From: Kartik Kulkarni <kartik.koolks@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging:iio:adc:ad7280a: add of_match_table entry
Date: Fri, 26 Jul 2019 01:36:49 +0530
Message-Id: <20190725200649.30592-1-kartik.koolks@gmail.com>
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
 drivers/staging/iio/adc/ad7280a.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 2d9c7551f314..ded0ba093a28 100644
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
 		.name	= "ad7280a",
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
