Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3824728F9B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 05:30:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7509F86B33;
	Fri, 24 May 2019 03:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pZjFIMlGo2L8; Fri, 24 May 2019 03:30:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAB5A86C82;
	Fri, 24 May 2019 03:30:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 631DF1BF958
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 03:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54D5E22DDB
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 03:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 729tsK-hwC1o for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 03:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id CD0BF228EA
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 03:30:20 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id a132so5266857qkb.13
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m5ogzMgSI1LHQZbh7k+OtVLJIYf80nqxH6S28QxnxWE=;
 b=B3yVbgyNYA/vqcsMtVi6rCVf7YrUe3la1OWaMr3caaHP/s2qBHu/9nCYBY/ra2LpHM
 LlE1CYwJdUGoKwENlpkVVs8B0l0BqgRcsuyMiHyQ6u52OBvDgGW1Ewf85jS69X2aSk4d
 PgfgeLwcLHZK+qfmKCC4saI3LTvs536L5I/ab8Z9fXlKVaEIu/oTnfs0+dNzixcW6Frl
 WBB9ZNK0AXpXcC7OfezcJwE3HIV2QIp+6t5QJ1uuQpimITmnOG0FaQwFYhWGi9BG8/84
 Aj7l9ITD3j34yMct9E6TTZ53Ru/318YKZeommAPFu2dxx7XDaRHFNKtX17uixfdqVM96
 cXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m5ogzMgSI1LHQZbh7k+OtVLJIYf80nqxH6S28QxnxWE=;
 b=GTLgvnkFmBd6BJkcoj4NAmHLCZl1PkV1NBYAAC6DYe0jDbbbcdVITdMZVaBlBCXbl9
 2lIZysZVr7ChOrAKzhBdS91oWFIPOFUs7bVODir14zF/XqAm4+qeNzKaEZi1w/1wtaiw
 rtWK82CXstz9UUbdhZkuiAdw5OafPB3ClciY77OXTBWpasQ8pz9mxHFC8ARsR+M0uAah
 lxsEIEFr5MffseJjCfhSHUmfO5mKH594s6niqJBGNHLcvOTJn/YZ3Keu/KQVi21xiJDD
 wXJS0Dbge3a5fbK4elhG8Mg2A+C2S8s4WerHJeNvS83y2G/95XRznZ/ZFMdRpNsp+5uh
 KSTg==
X-Gm-Message-State: APjAAAWadvlN03P+sc3ithuZ6h9DGI18+gPi3MStgIFoM+NTq95RndsG
 U5pldLlYr45yIcgfKj76nL0=
X-Google-Smtp-Source: APXvYqygk6InWh8SXVRBn3HCF6Sqkafkvf4vOGQEaLwb6cuV+q9UmUxtlOHy2sBKoGs5ARkFn1fJrw==
X-Received: by 2002:a0c:af51:: with SMTP id j17mr58005662qvc.34.1558668619835; 
 Thu, 23 May 2019 20:30:19 -0700 (PDT)
Received: from localhost.localdomain ([179.113.74.110])
 by smtp.gmail.com with ESMTPSA id n190sm623956qkb.83.2019.05.23.20.30.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 20:30:19 -0700 (PDT)
From: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: adis16240: add of_match_table entry
Date: Fri, 24 May 2019 00:29:50 -0300
Message-Id: <20190524032950.2398-1-rodrigorsdc@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rodrigo Ribeiro <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds of_match_table entry in device driver in order to
enable spi fallback probing.

Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 8c6d23604eca..b80c8529784b 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -444,6 +444,7 @@ MODULE_DEVICE_TABLE(of, adis16240_of_match);
 static struct spi_driver adis16240_driver = {
 	.driver = {
 		.name = "adis16240",
+		.of_match_table = adis16240_of_match,
 	},
 	.probe = adis16240_probe,
 	.remove = adis16240_remove,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
