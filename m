Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D8B13560
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44BA82305A;
	Fri,  3 May 2019 22:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VmCQQtRpf4t; Fri,  3 May 2019 22:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F15A23086;
	Fri,  3 May 2019 22:16:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36DAA1BF23C
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3409E87AE8
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHsJv42JdJPx for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:16:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F62887ACB
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:16:25 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id g190so599057qkf.8
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HXos2jVvt23sEGQ2FQBQJsKRHBVFtxk8JTRDuuOZjhU=;
 b=cshVJY3SgZerxIj0AHhggAibB5NZbPleKezdrPUdWojsti39ecMZQU/GdNIbxlhrYu
 jkcn/oslpB1yTTpXF5+cBKLS3JTLfkGsWuWlqNRp8FnSXSGjdhUaoRcxaB1fiwkFL28O
 L8H8TCMUJ64MaQZlHsePK5mBFq/OsUqCFBRpE3LwHv6ed7Eetpxhhrz7G1ipwt8RoLFN
 2VxwMozP6w/7IccThhvPKf1UDFw5oTJ6FvZ0czG4U3APBy1gnCnlp56lNnluraNqwx5Y
 coAUj0L4rf/TTiwYb+DdbQmjk/OcVSqM61xn4FvLzjJdUWlBncBeNs0UGumszChPweLZ
 gS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HXos2jVvt23sEGQ2FQBQJsKRHBVFtxk8JTRDuuOZjhU=;
 b=sX+9PkRIW4VrSwWyihm7D7hPFD9WeRyVOLI3StncDV0tItg5fY6xRGy5YqgrBo87gR
 tOvHg6ceS/CllssEqBcNszextygqedZnLr8iV0KfJvdEHm+jY6OO1nYSn6iiTXTz32mr
 tQTAHlCq6GHZKtUNfEAhNuKWO9R5Q5PGq0c6nZ29dgjTPRn6mu78YyjUGhNkR4/jwSdm
 qFnxub6QP6rBOBcsVf1WWQk7OSoRX/y3/XAsJIZuVLX+0Ta3CMzxggdiRW5OfFQTJX5n
 Gkodb07NHsT3Yb3yTLd0dmyza55ycNBng6DFMpB64/bG9/QIYrG60LJKLa2JOocLE11q
 bL+g==
X-Gm-Message-State: APjAAAUp1B5GaMWFZpY44R/kNKLAjzmgtpSE/bCQBIYvsHKi6ZFcLNKc
 de3RYaskS9sSJy48CtQ3yNY=
X-Google-Smtp-Source: APXvYqwloUvPCdvnkCdnkj6YxY613wMJymZiRu4zYZ9KXa+nkanvvNwayrSaDiyLrWtFFgviThhyZA==
X-Received: by 2002:a05:620a:1326:: with SMTP id
 p6mr8885799qkj.265.1556921784672; 
 Fri, 03 May 2019 15:16:24 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id j39sm2050285qtj.69.2019.05.03.15.16.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 15:16:23 -0700 (PDT)
Date: Fri, 3 May 2019 19:16:13 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH 4/4] staging: iio: ad7150: clean up of comments
Message-ID: <35ccb46902d0a9a79b5c481d3d3cb9256a390c99.1556919363.git.melissa.srw@gmail.com>
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

General cleaning of comments to remove useless information or improve
description.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 3a4572a9e5ec..775818b0761e 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -162,7 +162,8 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
 	return -EINVAL;
 }
 
-/* lock should be held */
+/* state_lock should be held to ensure consistent state*/
+
 static int ad7150_write_event_params(struct iio_dev *indio_dev,
 				     unsigned int chan,
 				     enum iio_event_type type,
@@ -484,10 +485,6 @@ static const struct iio_chan_spec ad7150_channels[] = {
 	},
 };
 
-/*
- * threshold events
- */
-
 static irqreturn_t ad7150_event_handler(int irq, void *private)
 {
 	struct iio_dev *indio_dev = private;
@@ -576,10 +573,6 @@ static const struct iio_info ad7150_info = {
 	.write_event_value = &ad7150_write_event_value,
 };
 
-/*
- * device probe and remove
- */
-
 static int ad7150_probe(struct i2c_client *client,
 			const struct i2c_device_id *id)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
