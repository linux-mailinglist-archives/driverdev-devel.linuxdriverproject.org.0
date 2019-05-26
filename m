Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41B22A781
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93083882D3;
	Sun, 26 May 2019 01:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OorjBGpHDLR7; Sun, 26 May 2019 01:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11BC68829D;
	Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 992A01BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 965BF85FE4
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDXDBOjTY4hG for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
 [209.85.221.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 027D385FD5
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:34 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id x196so2918814vkd.9
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fnpgGOdciidlMQgT6hGzG/WRh1cBgTY3o2k478rY6UM=;
 b=B6CTZcrYqQ0WvN3JdD0vakwRpRNKWj+RjGJljZcyiKvCZVSzNURC3Of/05ewDtjiVJ
 n+OFBvCwoPvpTH39L4ZXCBGFcko1j2kIScpLTLBI/uulRkI9uvCrgGHE556vTp8zfgWR
 HoGcv8XD1gIT9w+EN1KMhZg5be8FGA4STVDP5ILdvvsYkMuu0w3pTsDn27Bh+8dACfN2
 KyLZmSVyE1VC5Xq1Hm4AgG9ZigXblFXTM1qTIECReSvArsZwvJWT0fiRXt0i/93fLzyO
 T0+MNg4ZmuyzjHFyRJ8wsARTk3AbMiA4SS6BBmbfK68AYmOtof9nI8zln1UyAPoY5aLG
 PPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fnpgGOdciidlMQgT6hGzG/WRh1cBgTY3o2k478rY6UM=;
 b=VGk7yeNCGiaAlE5xSg0uOGcJqZPpOBgRXGtAB1Nq9+uOqADbSEM1l1zYYEQpVlLRHN
 R90Sqn6+YF8gKdEqqkcOI94eKTKjdGB+hPKV8R5hXSk1rcQk1N1HQWtsVnLjCIJOcbrq
 /HQQEUgT3Dzv3lKYd9NeYneKhOm2gTm5rVopPrtxa4iTXMcNepEzd/10o6sKKQCf0Iko
 3dsBk7ky9SwuV4TbkMQbCG+EOrxOJHJsQHpVZE1K83JbKSQPEF0g8L+hjUeF3KPLtzmm
 eQsdyN8AnIHR/2h/txXEtyYFJw0mD9bsSgQNhXuOMBqFZSOy3cRIFxRf/1+30f1KXQz8
 4FGg==
X-Gm-Message-State: APjAAAVryNAaGFSjHuJKEqXO+clUgQp8qlr3eYCopuHvl245K7CW61/e
 Y5yOLXxfBglLyNTWTMe25hs=
X-Google-Smtp-Source: APXvYqyjAxACk1htIHAwqPyaPOJyLmdZFkegkv7+a/tSbTvYhykfGq3e+vdXk5No541/Mv4S27s5qQ==
X-Received: by 2002:a1f:24c4:: with SMTP id k187mr12809681vkk.26.1558833573128; 
 Sat, 25 May 2019 18:19:33 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:32 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/8] staging: kpc2000: kpc_i2c: Use BIT macro rather than
 manual bit shifting
Date: Sun, 26 May 2019 01:18:29 +0000
Message-Id: <6efa564b07731fde4647a5b62c42b0f71ce82607.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558832514.git.gneukum1@gmail.com>
References: <cover.1558832514.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The FEATURES_* symbols use bit shifting of the style (1 << k) in order
to assign a certain meaning to the value of inividual bits being set
in the value of a given variable. Instead, use the BIT() macro in
order to improve readability and maintain consistency with the rest
of the kernel.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index b2a9cda05f1b..1d100bb7c548 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -116,12 +116,12 @@ struct i2c_device {
 #define PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_SMBUS      0x9c22
 
 
-#define FEATURE_SMBUS_PEC       (1 << 0)
-#define FEATURE_BLOCK_BUFFER    (1 << 1)
-#define FEATURE_BLOCK_PROC      (1 << 2)
-#define FEATURE_I2C_BLOCK_READ  (1 << 3)
+#define FEATURE_SMBUS_PEC       BIT(0)
+#define FEATURE_BLOCK_BUFFER    BIT(1)
+#define FEATURE_BLOCK_PROC      BIT(2)
+#define FEATURE_I2C_BLOCK_READ  BIT(3)
 /* Not really a feature, but it's convenient to handle it as such */
-#define FEATURE_IDF             (1 << 15)
+#define FEATURE_IDF             BIT(15)
 
 // FIXME!
 #undef inb_p
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
