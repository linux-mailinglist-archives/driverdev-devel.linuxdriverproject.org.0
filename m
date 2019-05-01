Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91490105B8
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 09:16:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CFF886FA6;
	Wed,  1 May 2019 07:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-Z086yfaXCz; Wed,  1 May 2019 07:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11CE983883;
	Wed,  1 May 2019 07:16:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 049751BF470
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 07:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEABE26FB9
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 07:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0lLZ-iZ1duE for <devel@linuxdriverproject.org>;
 Wed,  1 May 2019 07:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C26C21505
 for <devel@driverdev.osuosl.org>; Wed,  1 May 2019 07:16:00 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id c13so7012629pgt.1
 for <devel@driverdev.osuosl.org>; Wed, 01 May 2019 00:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2lTg3UwRF188Hyu1qFGSZBHjhJOOcy42FRYJbO0gLLI=;
 b=nF1HMGNWHCZzcBQvlVSecKGX5SVnflrEGORafGvOJhRk8aDafzMkiICMCjy2LA98l9
 vi2aTHHFcIDpt9Oyxlm5aSFwRLhs+7M9vE8zheuYGQifEybyxKq5ZsQfiLrMDgK2ShVe
 qowh4o7+s2EL8+i14ReS/9RDMw68qsuKMrhD3Zjh+ZvCLMP/eghsZpctdHtEcUbJ95wR
 c8q26/qZQ7R584up4S1Zzlfo/QNRbhD1TPyRgtOLu7l8ozCtp/JMQibOtLtWYiGbtsul
 QZNh+e6F447FHxVEhSdmG3VPHKgWa3WZpRaZ1j6/jTZT3Yj8M92/1NTNCH4GqKOZWLIh
 gUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2lTg3UwRF188Hyu1qFGSZBHjhJOOcy42FRYJbO0gLLI=;
 b=O9mEXKVWKKQRdQcwGZXUVCYhbUsjfs0+T+E3b1iRymeNjDQsEcYlLFbXB6qsGLk7e9
 tVBtLAyZtfoOKC+6eeg1k5Y+mYhqQooiNbIdoA74AtsXW1Z2sw+CCRryaK6BGZ1LE2M0
 pxBxb9IVMH2bTGkX3Ubuh6MpFnSmZk07XFeA3RAepytXoZ/1wU33zZMHPTpUuUccAOFI
 kx28BxGyBw0w/BQSPNajpizJz380T47rwQhRHn8YrxSxnBGGSHHKNuUjD+J6nSiRxkWx
 jzhMjPF1HL+ylu6HprrUx53Fbb4lbM4tpoH0oy6caPCI8aycB7CpVg5GGBP1yTHgD4JI
 ihWw==
X-Gm-Message-State: APjAAAXlcDADWchklIpGSm+VoiQaulugQTNVEKVhL7fLXj5CaFRk80tV
 arlFCnf9IIf7ImnBEYyM5mA=
X-Google-Smtp-Source: APXvYqzhto3zBWANIqlONgb3cXufZS2EXRLnqHv3Qa/bGxdtqrI7gv4AYsngpAiXNVifvC214Qcj9g==
X-Received: by 2002:a63:f707:: with SMTP id x7mr71571472pgh.343.1556694959735; 
 Wed, 01 May 2019 00:15:59 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.94])
 by smtp.gmail.com with ESMTPSA id w65sm25894769pfb.59.2019.05.01.00.15.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 00:15:59 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: iio: adc: Add paragraph to describe Kconfig symbol
Date: Wed,  1 May 2019 12:45:41 +0530
Message-Id: <20190501071541.4734-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, julia.lawall@lip6.fr,
 Vatsala Narang <vatsalanarang@gmail.com>, jic23@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch updates Kconfig with paragraph that describe config symbol
fully.Issue addressed by checkpatch.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/iio/adc/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/iio/adc/Kconfig b/drivers/staging/iio/adc/Kconfig
index 23d9a655a520..31cd9a12f40f 100644
--- a/drivers/staging/iio/adc/Kconfig
+++ b/drivers/staging/iio/adc/Kconfig
@@ -12,6 +12,9 @@ config AD7816
 	  Say yes here to build support for Analog Devices AD7816/7/8
 	  temperature sensors and ADC.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called ad7816.
+
 config AD7192
 	tristate "Analog Devices AD7190 AD7192 AD7193 AD7195 ADC driver"
 	depends on SPI
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
