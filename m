Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFA513556
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BA29885AC;
	Fri,  3 May 2019 22:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cX3B1vq3gjgL; Fri,  3 May 2019 22:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA8BC883E3;
	Fri,  3 May 2019 22:14:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A91E01BF3D2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A63AA883E9
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id etiiggHk4nJx for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96ACF883E3
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:14:46 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id a132so4570505qkb.13
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XY7o10BOh3Ussnn5GQ0UW2n/49hS/5+Ve7RxK2jXxNA=;
 b=eREjwxSw2EQeXDa6ksr5nzPOyVNCTRHxcTWHOnVQB7xAzBXKbRlBz1u2a7CTKV3ahr
 uwpsFRonSG8RzXz9Q++OMESMD0wEBw7K8bRAmbByfVG5IL3iqFWRzhC0NHM6HJKkuNBV
 fNxyn4sVWRcJcKF54kGwRhha/HztOU80rQBKjaHKijtVABONs6jEpGBapMrtzmLjcSYA
 3oABiLWxYY23G7oUSdA0GPDx0cOr//BkHKDp/vJyvLeAAbAwjDHJnt0ny4AhDsw6efqY
 7Ug57FMsTz/xaNTWZIPBUlmtH8Q5sG88jy7XuSYFxJTbgQyORvCmiSn8pp9V5SmQ2zQ5
 no1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XY7o10BOh3Ussnn5GQ0UW2n/49hS/5+Ve7RxK2jXxNA=;
 b=OHWFxGmhwx6IYuO/Wii9JoL2Niq2RZp3hlkVzo0oMI8ODcwg+e3xs3w7PCi75BxYJE
 B96H08rXjjsjGzhbUubb3w/dCWI3dt9gaRi/tnvtn4VChYeUECBByp4+TwTNAtb3cKMH
 EQhPt+S2fksr/ZgPabjtl7QOJCh/mg3TthQGOOC/z4EN5HBIeS39K+A9iltdhvQAMD+s
 pLZmp1NaPZGFySeMbrBpo8/HZF+gNePmJydUKPpbwwFogq4UTLRS2HtgLFwXjDdeL5BV
 kTkxCW8pcWwPul2u6Lk66OExT98ouRKBvITGEYZUzRNp4Y9FEIkivXiZBdnpcyx/Fb6l
 /94g==
X-Gm-Message-State: APjAAAV8Jrik3BvT6VL2q5UEAhJKn5HNgOvlfq+gcuS2PDBJG6Afq6cy
 PsUZfVPSGXwjfAc7jRovbF0=
X-Google-Smtp-Source: APXvYqy5/bIS6yRa4NkV4HaJxxsvNL19MtRuXYXfmxFxNLAlDYxjEuZ0SK3X0Ba3xKcP90ctdRWWIw==
X-Received: by 2002:a37:2f05:: with SMTP id v5mr10123294qkh.157.1556921685702; 
 Fri, 03 May 2019 15:14:45 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id 33sm1842035qtg.94.2019.05.03.15.14.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 15:14:44 -0700 (PDT)
Date: Fri, 3 May 2019 19:14:33 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
Message-ID: <7f7d36348bca1de25bd70350b7c665be6441250f.1556919363.git.melissa.srw@gmail.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1556919363.git.melissa.srw@gmail.com>
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
index 24601ba7db88..4ba46fb6ac02 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -5,6 +5,7 @@
  * Copyright 2010-2011 Analog Devices Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/interrupt.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
@@ -44,6 +45,9 @@
 #define AD7150_SN0_REG				0x16
 #define AD7150_ID_REG				0x17
 
+/* AD7150 masks */
+#define AD7150_THRESHTYPE_MSK			GENMASK(6, 5)
+
 /**
  * struct ad7150_chip_info - instance specific chip data
  * @client: i2c client for this device
@@ -136,7 +140,7 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
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
