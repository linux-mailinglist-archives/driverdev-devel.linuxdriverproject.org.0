Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35742254A
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 23:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E46687B96;
	Sat, 18 May 2019 21:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a6pIugkTDCx8; Sat, 18 May 2019 21:44:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1A328789D;
	Sat, 18 May 2019 21:44:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 551EB1BF3A9
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51F8485EB4
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBLC4mgazD_u for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 21:44:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9761285E28
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 21:44:44 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id y42so12106797qtk.6
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 14:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jJ5BRXNmtBYhU5KLCuS1xg2MlRH8bwhzIAasFCh/DOo=;
 b=maN8W3t5H1DNQIgzJCDprNKkVjep+KwFN0fMsVa9RUsrMSqp6yaLfSW9nrfmkhvfyo
 yTGr8uuUNZEUG2NvDyFbtVF+3sVlO4DQz2nu0BXUdQJ/x/wcwRAYFtucN2z12F08KIww
 encs/kF/M8cdOXgCm5yfxIeFYR4NSizg7EIno8WPXs/oE9J9/mvv/vMBQdSasqAZPwm7
 RNF1MLVv8Wb4Nis6vXPKQadOIhZvu907703LSWYOfkY4/WBVYoLzo3DFkD0AmDkcTtqN
 5eIij1WP2+/uwpckPTU1wUdR7TCobUyu9UgIs/YzADyUiaccn3Oek6Mlx0K+urXGJW2a
 TXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jJ5BRXNmtBYhU5KLCuS1xg2MlRH8bwhzIAasFCh/DOo=;
 b=Xxt7dUheZXvKn5BnVlku2uiRS//F7Ls7/FON+0QemjlvRVHL6DcwMh4f+nstFw61qF
 jaX5n+zEZDmV3Y/Y0N/IYDFkUOksms5tyHMJ6+z2JaWC9X1BOcY3pdZDvpxxBvc8ByN5
 lMwfwolXe5/7Ju9Is/SDQ3TpQPF8fmwnbyzZ8joERSqNVlj9U3vAruJy5/Sqn+04M8IM
 U25pneD2yNJUIAqtVEmcxGSeC5YTCgGA26HcjvPPVLumUCQprkBu4PG9HG6ztFN+jom4
 2vli3yUAoQXG7sb0rneFAlUoYltaOba2VPKHFQBG9/dGVz/jyaj9GKWzGRkizlvNy4yL
 YyFQ==
X-Gm-Message-State: APjAAAVUS4XsdUFpHIAsdWdvnOO7aJl1JsHzXEYxt0leVG8+tovM1FbN
 MHBHjLLEyGeYnNYufe0Ycss=
X-Google-Smtp-Source: APXvYqyFsB4cbFR6WK/GdTpC/L6EjHHB/VoLoxxr++FzPhf3RZRMVm1V2r8hdHE6BufpS47pq1fgmg==
X-Received: by 2002:ac8:2e84:: with SMTP id h4mr7898725qta.267.1558215883813; 
 Sat, 18 May 2019 14:44:43 -0700 (PDT)
Received: from wall-e.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id b22sm7313294qtc.37.2019.05.18.14.44.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 14:44:43 -0700 (PDT)
From: Lucas Oshiro <lucasseikioshiro@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: iio: adis16240: add device to module device table
Date: Sat, 18 May 2019 18:44:34 -0300
Message-Id: <20190518214434.23660-1-lucasseikioshiro@gmail.com>
X-Mailer: git-send-email 2.21.0
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
 linux-kernel@vger.kernel.org, Rodrigo Ribeiro <rodrigorsdc@gmail.com>,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add a of_device_id struct and MODULE_DEVICE_TABLE call, in order to add
device-tree support for this driver.

Signed-off-by: Lucas Oshiro <lucasseikioshiro@gmail.com>
Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
Co-developed-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index b80e0d248b0f..8c6d23604eca 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -435,6 +435,12 @@ static int adis16240_remove(struct spi_device *spi)
 	return 0;
 }
 
+static const struct of_device_id adis16240_of_match[] = {
+	{ .compatible = "adi,adis16240" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, adis16240_of_match);
+
 static struct spi_driver adis16240_driver = {
 	.driver = {
 		.name = "adis16240",
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
