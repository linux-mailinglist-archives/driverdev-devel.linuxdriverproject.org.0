Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E19DF88BD6
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Aug 2019 17:02:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A113204F5;
	Sat, 10 Aug 2019 15:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sQXPM38XwvUr; Sat, 10 Aug 2019 15:01:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9F4A203D7;
	Sat, 10 Aug 2019 15:01:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45DAA1BF355
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 15:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 42C7C203D3
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 15:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VGM23veHoiUG for <devel@linuxdriverproject.org>;
 Sat, 10 Aug 2019 15:01:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8213E203D2
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2019 15:01:54 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id x4so709376qts.5
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2019 08:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8mYT1ugU9XRJDqmG3NJqTPI0yF8pfPERIAlPeQwQtf0=;
 b=UDu6z/Ryj5Yfv0lVew1vY4USzE5YR0tHTTGKa6pJxuBs5mciviPi8g8+E5vtvCIk6U
 aiuB3WNP0JTY2d0ogF1V1RMIoOdLBLRMYp+BBSeQH7L+leWH5avL6qyacwYhXBIPOE6D
 3QWQAengrm16iF/XCUdurKjlWHhLP1MeULmftZiPeeH1blN6KDC3m8Up9rXEiM/H20Jq
 bcma6QMHvI/8Fia29TwreP9uTLkOiCI8mRsCZwbDcHrOjt6rORSU+m8H19G/pWkf51AJ
 yFLa/qWNKfpzN2Db19/sutNWpE3HPjKiaIbdoDXMMu9mMUXhAg3iNBRawZ4i1af6tKpC
 RKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8mYT1ugU9XRJDqmG3NJqTPI0yF8pfPERIAlPeQwQtf0=;
 b=KzQFuSgv+wB5rV9q53y4xclSq0DpNWrdBr1T/sdUCv/jwmx54r7IlvbdSNryx2XCD9
 KXie2tuK3KfcO0kJ6TqV5sBHWdmJQSTsDi3FUbsnfyYwTCTxWUHgremVeU2DyHvTuGIF
 isTiBe4dDvDcTg0CplVICJeERY8gDrBLgHR5cdryxHDSYS8/2BVhvK1EqETBE4NoUPzg
 v7oD2MYZnylHq9odmy1JnVQ1qR8/sAeE1kJn8aur7FgEFhq6j3Uxx3f9FrD5JrFzRmnR
 AeuflHnro6dI2YjAMJ6ki/vOimc8a7wswdSzVpEIyVWkx6YA8euhB3H85aeMpIlrZQ+M
 F/cw==
X-Gm-Message-State: APjAAAUAAiVoJQuWGN1wFgQdagHVyS4LR3dvOdY5j8aB7wpDidocTaD0
 zv4LwmiSktjBMn+90IsKF4s=
X-Google-Smtp-Source: APXvYqxnQk2WPGlsBCZXZQu9NJFObYjPab0Ld/NBPiUpclVSBl5TMw7Jm8xAVB7UmcgqDAm5nCZY7A==
X-Received: by 2002:aed:3a03:: with SMTP id n3mr22246315qte.85.1565449313499; 
 Sat, 10 Aug 2019 08:01:53 -0700 (PDT)
Received: from localhost.localdomain ([187.34.245.102])
 by smtp.gmail.com with ESMTPSA id 47sm58079273qtw.90.2019.08.10.08.01.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 08:01:53 -0700 (PDT)
From: Rodrigo <rodrigorsdc@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: accel: adis16240: Improve readability on
 write_raw function
Date: Sat, 10 Aug 2019 12:00:58 -0300
Message-Id: <20190810150058.3509-1-rodrigorsdc@gmail.com>
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
 linux-kernel@vger.kernel.org, Rodrigo Carvalho <rodrigorsdc@gmail.com>,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Rodrigo Carvalho <rodrigorsdc@gmail.com>

Improve readability by using GENMASK macro, changing switch statement
by if statement and removing unnecessary local variables.

Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 62f4b3b1b457..68f165501389 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -309,17 +309,15 @@ static int adis16240_write_raw(struct iio_dev *indio_dev,
 			       long mask)
 {
 	struct adis *st = iio_priv(indio_dev);
-	int bits = 10;
-	s16 val16;
+	int m;
 	u8 addr;
 
-	switch (mask) {
-	case IIO_CHAN_INFO_CALIBBIAS:
-		val16 = val & ((1 << bits) - 1);
-		addr = adis16240_addresses[chan->scan_index][0];
-		return adis_write_reg_16(st, addr, val16);
-	}
-	return -EINVAL;
+	if (mask != IIO_CHAN_INFO_CALIBBIAS)
+		return -EINVAL;
+
+	m = GENMASK(9, 0);
+	addr = adis16240_addresses[chan->scan_index][0];
+	return adis_write_reg_16(st, addr, val & m);
 }
 
 static const struct iio_chan_spec adis16240_channels[] = {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
