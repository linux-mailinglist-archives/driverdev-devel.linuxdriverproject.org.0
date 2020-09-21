Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C74272033
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F3A885B4A;
	Mon, 21 Sep 2020 10:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpKwL053aGYz; Mon, 21 Sep 2020 10:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13E7381E10;
	Mon, 21 Sep 2020 10:21:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 642CB1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5CE0B8683F
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cS8tNK-psTn9 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 325248685D
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:17 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o5so12106268wrn.13
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pJYZMlRu+8oQA/EIZAQFePFUOgqonaLTxBSJ9QI8wUU=;
 b=kkgqvr4wSg1oA/tAod4PBJeP+Sa5+sT0bCecTAqpNi2QvT5/ftglSujMJ/OijhuAVh
 NweHDQRZ+0eqxK5Xul9Xk23FBkH8wriuqXCWtud0RKmUsw6w9qjSNl7Cm1S78syECJcR
 nU9VenHt/Yr1Vm9D65mXdsJzZf4dVjIjFC26q7m6nv1pN3gpSLcnpnPhAdIYCq2lMdHt
 Ow0RVD2OUUhJaGD7Q4osvdVKkPZ+5SURUlnZmS/6tohRNWKcfJXC0Fh4nFtlE4tKlfiY
 k+JSJwXo8CoXWDwUGtg4XKHmukpgv+K4lAhiMQESnU5o1zxLEJNMPpIbZq5fhUAN1EhP
 twEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pJYZMlRu+8oQA/EIZAQFePFUOgqonaLTxBSJ9QI8wUU=;
 b=B4fuHFt5vl1m8wll3WW3BIeZq+Q2SDLoZMQaNTg3UCD2K7UZ0IDtTmrVbJGSB1Ax3O
 VP7QHvHIwk5t2EG/yLFPPW1CP5qdFIXahxnGS3UojrHXIP1Dz3HvJubAhlpgHGP+/BOe
 +P+3p4HGkPatTqttDRwxNxf1fNJMebR1XApK5xgz23kuJ4IRo1e8CEH9PXTdj2gIRnff
 +kG04Zgaeytdqib89X9KL1EOx2ARkahke2LYzV/dYMj07Vhviv6DI/aU/9z3/Wx57krt
 wH/yoEQLgvdgUf4OZu7Ou3iTUisieIASyqMx38ED1Y/pR2vm/R34LZYZzXQ3jYrzuGlh
 /oNA==
X-Gm-Message-State: AOAM532Q10fB5aVwVCyJZDFW+Pv9wqb/u58LSz5jte8lcpgxU6n0adGN
 0xAzqtzdduugGvSAC1zxSmH/XUMH7uiJlQ==
X-Google-Smtp-Source: ABdhPJz16X1uCIJdhDJDadI4Sw0QdewJNAkUb4ZoiDOllk9GkQZ8DXmQGWKncpp4djpXEc//OafjiQ==
X-Received: by 2002:a5d:56cd:: with SMTP id m13mr50725470wrw.261.1600683675812; 
 Mon, 21 Sep 2020 03:21:15 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:15 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 46/49] staging: media: zoran: fix some compliance test
Date: Mon, 21 Sep 2020 10:20:21 +0000
Message-Id: <1600683624-5863-47-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add TODO for "TRY_FMT cannot handle an invalid pixelformat"

We need to set pixelformat in some case.
We should also handle some minimum requirement.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 47f397ff190f..4299578c9bb5 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1206,9 +1206,12 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 		if (zoran_formats[i].fourcc == fmt->fmt.pix.pixelformat)
 			break;
 
-	if (i == NUM_FORMATS)
+	if (i == NUM_FORMATS) {
+		/* TODO do not return here to fix the TRY_FMT cannot handle an invalid pixelformat*/
 		return -EINVAL;
+	}
 
+	fmt->fmt.pix.pixelformat = zoran_formats[i].fourcc;
 	fmt->fmt.pix.colorspace = zoran_formats[i].colorspace;
 	if (BUZ_MAX_HEIGHT < (fmt->fmt.pix.height * 2))
 		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
@@ -1318,6 +1321,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 	if (i == NUM_FORMATS) {
 		pci_err(zr->pci_dev, "VIDIOC_S_FMT - unknown/unsupported format 0x%x\n",
 			fmt->fmt.pix.pixelformat);
+		/* TODO do not return here to fix the TRY_FMT cannot handle an invalid pixelformat*/
 		return -EINVAL;
 	}
 
@@ -1327,10 +1331,16 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 		res = -EBUSY;
 		return res;
 	}
+
+	fmt->fmt.pix.pixelformat = zoran_formats[i].fourcc;
 	if (fmt->fmt.pix.height > BUZ_MAX_HEIGHT)
 		fmt->fmt.pix.height = BUZ_MAX_HEIGHT;
 	if (fmt->fmt.pix.width > BUZ_MAX_WIDTH)
 		fmt->fmt.pix.width = BUZ_MAX_WIDTH;
+	if (fmt->fmt.pix.height < BUZ_MIN_HEIGHT)
+		fmt->fmt.pix.height = BUZ_MIN_HEIGHT;
+	if (fmt->fmt.pix.width < BUZ_MIN_WIDTH)
+		fmt->fmt.pix.width = BUZ_MIN_WIDTH;
 
 	map_mode_raw(fh);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
