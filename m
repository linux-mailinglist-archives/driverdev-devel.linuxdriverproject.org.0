Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0002946436
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 18:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89360884EA;
	Fri, 14 Jun 2019 16:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIr0Uj2FIAeV; Fri, 14 Jun 2019 16:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06803884C9;
	Fri, 14 Jun 2019 16:32:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAE801BF59F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:32:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B80AE884C9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HS+r2mvPsg0T for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 16:32:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BFA988419
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 16:32:31 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x17so3170997wrl.9
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 09:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Bk25I9bYJ1QkQE44oNBhQvDFUFwOGY+qKAFcfRif1YY=;
 b=u0OqxJ8w+zUXf1Wq56t/UtX2iY9Bnt5XmPJgxTE76bhzUIwdkWTp/aq3zzK03/kx3G
 dBfQWt76sNup1zwZxbZF4HN6BCuOrCg5ab+ng6DvY8Ec1l+7n3mNR4nQVWp/m2Rsnquh
 QoODp8H8okYFK9mawBvo7m9h4/AIajPEQO766drLGTyaCWQqnVmwMuYqNiishkrjoL3S
 fc+ZqTQVs5pw9P/1bk0qTZnK2u3slwLYu4BZouFS/B3JZNkloh1uvgDxjOd37MGXVXQ7
 XTwy8p01wNLRjcdPQiJjl//zitZjiGh3l+NUV7y3Uql76uRrJSGoaPJnyVH7Weg0pV7d
 M3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Bk25I9bYJ1QkQE44oNBhQvDFUFwOGY+qKAFcfRif1YY=;
 b=Sp1RR0FoMFUgZUl3bV9pehUDdMsBHuQ4Rnr1Y7t5+MQioymZYX+R3OiAQIhPlfNoxt
 gsJ3WvB5jJDO2u0PLpZ8bGXqzEEBBvcE5WE6CfKlOf+rXsg3qQaYq46rN2NTNCdcRyKS
 2u6fomXLOBlWsu30nNXS7lnhrW4CcGNetNVxwKHkTnrdgRj883nRvPOFZBU9tqRaaABW
 kNjVlPV9Mo/n7bjFIqJkKBE6Es2c5eqE3+5Z8OqOj8uM0RdNurYcGWL2k4H2AWbwpOdF
 dv9S3hAPc21T5QsYO2W81OngnClg+HCWHPX4wNQqrLwqdjpezexwoOJBpHE/y7EQY44J
 YDYA==
X-Gm-Message-State: APjAAAUTeltukis8swTuDQQN2bSZy6dP2YkbTCPzutK9sKgHwVw7BGSx
 itOtznIslThq6l2VUIk1MT3MyqThsJo=
X-Google-Smtp-Source: APXvYqwCqZPFUEltPB18dZHXPPr0GSGxTfJkT0oIbrSP8s/I7DkUQUrJKgTZImT1/eaVo9AJ0TapSg==
X-Received: by 2002:a5d:620f:: with SMTP id y15mr8792301wru.262.1560529949634; 
 Fri, 14 Jun 2019 09:32:29 -0700 (PDT)
Received: from smtp.gmail.com (1.77.115.89.rev.vodafone.pt. [89.115.77.1])
 by smtp.gmail.com with ESMTPSA id d17sm4880775wrx.9.2019.06.14.09.32.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:32:28 -0700 (PDT)
Date: Fri, 14 Jun 2019 13:32:21 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH v2 1/3] staging: iio: ad7150: use FIELD_GET and GENMASK
Message-ID: <4f88fd66e478289006353645d84b7af1b5aa345c.1560529045.git.melissa.srw@gmail.com>
References: <cover.1560529045.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1560529045.git.melissa.srw@gmail.com>
User-Agent: NeoMutt/20180716
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
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the bitfield macro FIELD_GET, and GENMASK to do the shift and mask in
one go. This makes the code more readable than explicit masking followed
by a shift.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 8234da4b8c65..091aa33589d7 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -5,6 +5,7 @@
  * Copyright 2010-2011 Analog Devices Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/interrupt.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
@@ -45,6 +46,9 @@
 #define AD7150_SN0                 22
 #define AD7150_ID                  23
 
+/* AD7150 masks */
+#define AD7150_THRESHTYPE_MSK			GENMASK(6, 5)
+
 /**
  * struct ad7150_chip_info - instance specific chip data
  * @client: i2c client for this device
@@ -137,7 +141,7 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
 	if (ret < 0)
 		return ret;
 
-	threshtype = (ret >> 5) & 0x03;
+	threshtype = FIELD_GET(AD7150_THRESHTYPE_MSK, ret);
 	adaptive = !!(ret & 0x80);
 
 	switch (type) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
