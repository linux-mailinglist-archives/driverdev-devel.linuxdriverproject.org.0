Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F095546502
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 18:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B42787D5C;
	Fri, 14 Jun 2019 16:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FQ-Bm-u172Xk; Fri, 14 Jun 2019 16:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADDA087D60;
	Fri, 14 Jun 2019 16:51:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89FAF1BF59F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86A0A868D4
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPq4InoD-ncP for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 16:51:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 361738691E
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 16:51:11 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f9so3204285wre.12
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 09:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3tjYBStu1LjnzhWqBptYBriF+bgQ9rTx2Bw7QcMOvJA=;
 b=Oyx95PK4KOIjIb7OOTGl9gw2WKLfs7prx2Mt9Qc3ZsXrXp88Smjidi11p3+a2eP3s5
 mmMXcBgnYcToGArp16I1K6Q3Ern9XTx3lngsnyA24FDdbBmPyNgcJCFHStNYncF8j0hp
 5ZMYtPY1eBZVVbPPlqLiihYOcPiHmS82z5wrcNUaZHv47z5ViZekPbX/fmBId7cw59yp
 PLzLgKOJsUuN19TtXDGdCM0ha9or7pgXE1nyvXsPQkqlzfAklUVIhqgrAd0EgocJ2bbl
 24scSrqUMzrRCXhhH1FAJ5i3CM7bK1Fy43l8dgPedauDGM3l/utGxM9kRejbs/kUzayA
 uD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3tjYBStu1LjnzhWqBptYBriF+bgQ9rTx2Bw7QcMOvJA=;
 b=PElKuVthmUdtRlD2A2JA+pchF0L+16Sg+vwR7FXkhdpLtoJ4/S9Ejdx9BS8wpCPfXy
 f4s6XInoYVQpCSb7HN2gmvDoSd+RG02D0Cd8VEaBh9YyKNSbe8N6rBZhswjJyNzXVSEt
 UFks1unJdlSS3x3ibhNmnQ9jTs+mwbiwFjyXyu4PLNw5aWXAPsfEMpJO/Sixc1GKJe/O
 1oQgMFC0DjEuw0zosYpbuz6e5DQ0xjOY/51rRXzioRXxQ6lvINTzQHytiUNpXbtAbPod
 UK9mAQffJwBHXxxO2ljg5/G7sgwypM7HI8dVOaq2R/EgnZjR7UtKapDP6J401JTa9zOm
 qqRg==
X-Gm-Message-State: APjAAAWqssQ/AJvHlhMRc2lOo+rIooB8nM1UEQ0BVwhpyML/Gznd0+R5
 sRWgw4mhHDgtMgenzDR1Aq8=
X-Google-Smtp-Source: APXvYqytYV+jti5VJHYHLE4IWpeLMPvSQ7veUqlqTSu08+uhs45aFwoeLRGR8rSwd20t6tPCErqesQ==
X-Received: by 2002:adf:e54b:: with SMTP id z11mr50141374wrm.198.1560531069659; 
 Fri, 14 Jun 2019 09:51:09 -0700 (PDT)
Received: from smtp.gmail.com (1.77.115.89.rev.vodafone.pt. [89.115.77.1])
 by smtp.gmail.com with ESMTPSA id o8sm4627462wrj.71.2019.06.14.09.51.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:51:08 -0700 (PDT)
Date: Fri, 14 Jun 2019 13:50:59 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH] staging: iio: ad7150: use ternary operating to ensure 0/1
 value
Message-ID: <20190614165059.7bifufvhxofy6ybu@smtp.gmail.com>
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

Remove idiom and use ternary operator for consistently trigger 0/1 value
on variable declaration.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 8234da4b8c65..25598bf124fb 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -350,8 +350,8 @@ static ssize_t ad7150_show_timeout(struct device *dev,
 
 	/* use the event code for consistency reasons */
 	int chan = IIO_EVENT_CODE_EXTRACT_CHAN(this_attr->address);
-	int rising = !!(IIO_EVENT_CODE_EXTRACT_DIR(this_attr->address)
-			== IIO_EV_DIR_RISING);
+	int rising = (IIO_EVENT_CODE_EXTRACT_DIR(this_attr->address)
+		      == IIO_EV_DIR_RISING) ? 1 : 0;
 
 	switch (IIO_EVENT_CODE_EXTRACT_TYPE(this_attr->address)) {
 	case IIO_EV_TYPE_MAG_ADAPTIVE:
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
