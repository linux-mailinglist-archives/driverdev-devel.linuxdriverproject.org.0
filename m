Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448C2259C
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 03:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99280867F0;
	Sun, 19 May 2019 01:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewShLatWgVC0; Sun, 19 May 2019 01:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 890FE86404;
	Sun, 19 May 2019 01:05:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5112B1BF852
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 01:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DA7F85F80
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 01:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pVFCeG3C5Eu9 for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 01:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77DCE85F68
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 01:05:09 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y3so10008927wmm.2
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 18:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=EQEfknT+Pvq496JYf3bTAv5KronZjseZKCaJZPgbjH0=;
 b=pRUr/6Z6CuZgZtbgnrrOWcWxfnPOW69i939s1wdUmEar6q/feiA9XbLQlxHt3J9n7m
 q39AhEelGr0lZVXGG6LlBBwjnQS2XHi419ZKgy/ySYKn2E4GihGe2UIlrJZngV36x8di
 FfzUBvQuhGYCmk3XYDWedMeBbWXK1KuL3m6t+LTXTyBP+mUUMo5ddcYgHJMN0SOosfiF
 RfaTIqHfVRP2x7ilKi62wfFIY26/cRZzIG55XENf4zL9WY59DI2sVR7hTXtYg3X0TJrt
 Gj8yZmWSBSNE7PYbQhnNNbFvpeE7Zts5w1+O5xCeTbg6n8ojtMptXdz3lRB+yhCIy/CW
 EFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=EQEfknT+Pvq496JYf3bTAv5KronZjseZKCaJZPgbjH0=;
 b=XawL3fO1gg9GzSOR32oL50W74aEP3Cy38o52lCPEBoZpZAJQJ1GJ/VI9d3miEYYIpj
 M9/IRdSbfxbdlpWKi1FGulBVic6Ty1/6JJei2uMGRql8Hj1VVeSmtvGQfzq+emif81b7
 p8ESRQp9CPHOBvO7r5nkteRlO6UfYUYsVFbv9LsWPWa+oizp577m5tTlWuMHwjyqDG6s
 dF9g/OibkV0rro44VmCpAJh5gjWleCxI7eUneLcLzetw3+f8PDrk8GYkQt9HmNHSLnCj
 MVj/EJQBYKm9eGT9Gigsqzm7F2997XdvNvw3AZ/B7qiOsI4ySNOX/IrG++4MD+mWaVi1
 ++3A==
X-Gm-Message-State: APjAAAUdd/RLHJr8ltI780S5diqlmodR2Ogz8LMQl4PFuGQbrMwviXba
 m/VO6eL5j33dZDX+surf38I=
X-Google-Smtp-Source: APXvYqyDyZ2OPbtG1vVkFrxQurfhlNIGM/0qiHcfFqPQZr9B1M1FERztOCTjLSZbuOaP8vskS+nTYQ==
X-Received: by 2002:a1c:2104:: with SMTP id h4mr6868266wmh.146.1558227907595; 
 Sat, 18 May 2019 18:05:07 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:dc0d:4d00:bee4:6ffd:a011:52a7])
 by smtp.gmail.com with ESMTPSA id f2sm13553440wme.12.2019.05.18.18.05.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 18:05:06 -0700 (PDT)
Date: Sat, 18 May 2019 22:04:56 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH] staging:iio:ad7150: fix threshold mode config bit
Message-ID: <20190519010456.lwq7n2e6nkqa6niz@smtp.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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

According to the AD7150 configuration register description, bit 7 assumes
value 1 when the threshold mode is fixed and 0 when it is adaptive,
however, the operation that identifies this mode was considering the
opposite values.

This patch renames the boolean variable to describe it correctly and
properly replaces it in the places where it is used.

Fixes: 531efd6aa0991 ("staging:iio:adc:ad7150: chan_spec conv + i2c_smbus commands + drop unused poweroff timeout control.")
Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index dd7fcab8e19e..e075244c602b 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -5,6 +5,7 @@
  * Copyright 2010-2011 Analog Devices Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/interrupt.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
@@ -130,7 +131,7 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
 {
 	int ret;
 	u8 threshtype;
-	bool adaptive;
+	bool thrfixed;
 	struct ad7150_chip_info *chip = iio_priv(indio_dev);
 
 	ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG);
@@ -138,21 +139,23 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
 		return ret;
 
 	threshtype = (ret >> 5) & 0x03;
-	adaptive = !!(ret & 0x80);
+
+	/*check if threshold mode is fixed or adaptive*/
+	thrfixed = FIELD_GET(AD7150_CFG_FIX, ret);
 
 	switch (type) {
 	case IIO_EV_TYPE_MAG_ADAPTIVE:
 		if (dir == IIO_EV_DIR_RISING)
-			return adaptive && (threshtype == 0x1);
-		return adaptive && (threshtype == 0x0);
+			return !thrfixed && (threshtype == 0x1);
+		return !thrfixed && (threshtype == 0x0);
 	case IIO_EV_TYPE_THRESH_ADAPTIVE:
 		if (dir == IIO_EV_DIR_RISING)
-			return adaptive && (threshtype == 0x3);
-		return adaptive && (threshtype == 0x2);
+			return !thrfixed && (threshtype == 0x3);
+		return !thrfixed && (threshtype == 0x2);
 	case IIO_EV_TYPE_THRESH:
 		if (dir == IIO_EV_DIR_RISING)
-			return !adaptive && (threshtype == 0x1);
-		return !adaptive && (threshtype == 0x0);
+			return thrfixed && (threshtype == 0x1);
+		return thrfixed && (threshtype == 0x0);
 	default:
 		break;
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
