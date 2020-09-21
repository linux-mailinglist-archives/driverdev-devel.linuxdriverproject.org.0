Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAED272018
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB083871D6;
	Mon, 21 Sep 2020 10:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7GxODxDF-L8; Mon, 21 Sep 2020 10:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 467BA871C6;
	Mon, 21 Sep 2020 10:20:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 590671BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 562798683A
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FAMieycb5L13 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D03586819
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:36 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id x14so12095644wrl.12
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z5xy1HmEK3Cb2cGuOZNBEue37qSrHj+Vnq/OwfaPORg=;
 b=I5VTjG3a3ViBXraLZbIZjAF4w3IjxazcKPBR8RM9zZISWgHD9OAAW/k6SSohJYhPNG
 A5YpvNK36e4G+9BFnfqnxMw1ClkJlY0mfrV41zlhv06gFtYecYAE+trrq+eIDf77q/X6
 yJ9A8CxIZkIE7MofTCSiuH14CNxFd1GOFLd0QPPHX1l5Pz9e9RJSOfW1EZPYdHwFYh3n
 /85ZsSW7M2mpjF8Yzi14whkUIf8DbmA6nOCwjNK9GhrXL+3c8xwcyiWIXyZxS1B26ilp
 /1uB7h0HAi7DX/gQsZce7RHc+1uONcDNT/4FfiDSZ1HxaKtJR1mEhMWmguiXrcYTJARi
 o/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z5xy1HmEK3Cb2cGuOZNBEue37qSrHj+Vnq/OwfaPORg=;
 b=ii1YFY8ECcSjQDEEPPWo+h69PmelTCkVWVGORAVVvjXzNn+jAntOCBYrR0yzCh9Rmv
 WoTPRRPM4zqxOM+veRTNwIgmMwCufcXQ8W7xupyuCpNbtqadEKEn5/3OwqI0SfOVcMSN
 9ey41ITmnGPBpcOPArkkjI7mwN7UOstecLTtsdo7ny7h4AVoxtQRVtwhCwR2GBWuuLzk
 /Od9/AHJCSv7UtiwqTKLOxCwx+mHCD23gYpeI2JQUxv+Rk209dfAPX06PYmOdaeA3kgS
 A3qUZYOzJuRezqYrK2rPt46iz9g8nd5ar6rpK8y0ETahOypVzSrT33faFXC8R+UUiaNX
 FsjA==
X-Gm-Message-State: AOAM5327mJtFE2ZPd0QfkIcJbM81B8Cf9s2eN46PibZmUOZN1JyzHD1J
 HfSBcDJxeHe54j3/Mz901Nq2/g==
X-Google-Smtp-Source: ABdhPJxN1Spb10RxJRxY4y67Y7+C7S5d68x0Ru3WpjlUuQNHdi07Ix7g79gisaT5NE8Ke2Dq5/yb2Q==
X-Received: by 2002:adf:f78f:: with SMTP id q15mr43195277wrp.206.1600683635053; 
 Mon, 21 Sep 2020 03:20:35 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 03/49] staging: media: zoran: datasheet is no longer
 available from zoran.com
Date: Mon, 21 Sep 2020 10:19:38 +0000
Message-Id: <1600683624-5863-4-git-send-email-clabbe@baylibre.com>
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

Simply remove this broken reference

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 04162be80420..79da964c678b 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -265,9 +265,6 @@ jpeg_codec_reset (struct zoran *zr)
  *   Set the registers for the size we have specified. Don't bother
  *   trying to understand this without the ZR36057 manual in front of
  *   you [AC].
- *
- *   PS: The manual is free for download in .pdf format from
- *   www.zoran.com - nicely done those folks.
  */
 
 static void
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
