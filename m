Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F788C189
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 21:31:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8441C869BB;
	Tue, 13 Aug 2019 19:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PnzcFZgehO51; Tue, 13 Aug 2019 19:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A5A286937;
	Tue, 13 Aug 2019 19:31:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AED8E1BF404
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 19:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB5F586940
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 19:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqBNVztGqgNe for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 19:31:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ABAC8693B
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 19:31:30 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id e8so7039996qtp.7
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 12:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZrsJ75uAl0CvFW97qeOMuBabIxioxFuZCHkYM94A0LA=;
 b=oeUsGepxWxGwvAWqyLXN21B4JepvWUV9hHbolgX2xKRyBoUoRrxCEddc4hAtHT7HQ+
 AoGnnCk3xWvxMnSmHdAk5aCTAE7fCx7UhHQI3uTM40S6/5E07y/arn0Lek8qRxQOxBuP
 TV3lGCGcNuGw+zYZGj5NTx1fc7zCiJgDk1xjJ8X/ewyQcNAgQodATlqbCVeq7ynHJQhj
 8xGZkD5otdl/CmNVMLERUUQjGYc1NBi62Nlnk9ih6xntQI6cwyGrS8tS0MnI+kSXnv4s
 yR78QP1gwLm77D+paUklwomMEzbYtajHT3C2V2KTZFQpsvOdzRiy/99dKhisq8+oyIfV
 9f3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZrsJ75uAl0CvFW97qeOMuBabIxioxFuZCHkYM94A0LA=;
 b=BEQsg/o7v65UQDl5WFmo7CDIhjqjLBwh+SdTl3bP8XSpwvtfHQvyBxu17DaIAdCMTs
 IHQwVLqsA7SJhpEXrkG8yD1Ju8D+KUMgnR4fVIyWbFsK700hvqLW7BoWsGlMfW4tAgV1
 P28vq9i3vWJNMo00vfu6FpPSWbra5JX4FIyOuCntf9ky6FX9hf+N4zNjc4WmV/UsNIzj
 hfjs5eALEQPsW6JFp76tF4eKf+v6/Qkoiij5nuNb3GHAn7uWTIfMHuaK8eGK4aoFpM15
 8rrlJPvzS/ExqKm64tI4Jo5gg84/yD4S//Z+CWUpmno2MqWj1Xu3Eft0MvLmGChYompi
 ksyQ==
X-Gm-Message-State: APjAAAXJIJ1v9/4qlygi+li0HWf9pynMJ0APDTwzi60TkoF/uiVj4fM6
 cbFbQwAHZKLLFq7iOZD0NAg=
X-Google-Smtp-Source: APXvYqyE30ghXoW4lyuazBzGdIN1K2YIYdWEw1TaM6LGrPL7xJwCrZqQ6LKihXqLCTqfIS7vkKFSEA==
X-Received: by 2002:ac8:2b47:: with SMTP id 7mr26123152qtv.116.1565724689118; 
 Tue, 13 Aug 2019 12:31:29 -0700 (PDT)
Received: from rodrigo-note.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id 145sm2382399qkm.1.2019.08.13.12.31.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 12:31:28 -0700 (PDT)
From: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: iio: accel: adis16240: Improve readability on
 write_raw function
Date: Tue, 13 Aug 2019 16:31:01 -0300
Message-Id: <20190813193101.26867-1-rodrigorsdc@gmail.com>
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace shift and minus operation by GENMASK macro and remove the local
variables used to store intermediate data.

Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
---
v2:
   - Leave switch statement instead of replace by if statement
 drivers/staging/iio/accel/adis16240.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 62f4b3b1b457..82099db4bf0c 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -309,15 +309,12 @@ static int adis16240_write_raw(struct iio_dev *indio_dev,
 			       long mask)
 {
 	struct adis *st = iio_priv(indio_dev);
-	int bits = 10;
-	s16 val16;
 	u8 addr;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_CALIBBIAS:
-		val16 = val & ((1 << bits) - 1);
 		addr = adis16240_addresses[chan->scan_index][0];
-		return adis_write_reg_16(st, addr, val16);
+		return adis_write_reg_16(st, addr, val & GENMASK(9, 0));
 	}
 	return -EINVAL;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
