Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E31F1C2960
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 04:13:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0207B893B3;
	Sun,  3 May 2020 02:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuMfVqG5Yupx; Sun,  3 May 2020 02:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AD19893A4;
	Sun,  3 May 2020 02:13:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EE9C1BF332
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 02:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12840221CC
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 02:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Zsm6rMoWhWm for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 02:13:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 09846221C6
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 02:13:37 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id w4so8719201ioc.6
 for <devel@driverdev.osuosl.org>; Sat, 02 May 2020 19:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADBzBpzQBfvhpPbSyYsUI5c3id2/Hsq5Y9mJHgKc+Eo=;
 b=X99OffZulaIQy55n/XoFOgsOhCNRhrtFlbmNo+LvRGdSEGiSq5R64AzVm97MOBqcwg
 Vj5xle+GwVCdMgBf3H3QXNz1edKykbt8A/jqz6O2mko1RvrdN13Es2voy5idebK7Q1UB
 l4Xk7EpZq3zurrQJuOFE19FxoE+UNNizmHK+JPkap7NFpykoE1gQALc4wBEgyS8lu87E
 ASBB6e/4X4iJwFbesFjW3XYWy9yO3t4Jiw4wzs7QkTJSnIRNFwMzmm4RJJTLW0t53OvW
 0GbqWV0drUYe5sz/LWdNTT8m9hoTKT+0FDSqbt65RMsH9ZNbVjLbGMKNw5v1hW0rRa/x
 siHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADBzBpzQBfvhpPbSyYsUI5c3id2/Hsq5Y9mJHgKc+Eo=;
 b=sr8FuVvl26ckB5jykWHbl+nUOclZIPhzjiYyeRtlhA1w+KVoKSlB+RC4Zc0DO77r+Y
 2q+UvX7wlpUlBGQeuZP8Nr/ykLE307VBirocmgnZmaS+mT2qPe0PHAp0K6VtPpR02kve
 d/CpfJbpBGG2df3h2Tij+Qg85BqcMlqCnWbXVulmJ+qg85FxZ22S7+iLF44plzCy8b0/
 rmtFDVSOKCibQMUXVvoeey9etVTxgE8UIuJ4Ix2SXIBxGuJIapI76eh9JzoxGPuCK5A9
 wpG4kJT76VyoaXcYUoKpaH/MDWS1YSgugWDXF2ehmiIE/G5qg+Bu2forZv/1fuIDkR6j
 Apmw==
X-Gm-Message-State: AGi0PuZao9xVzELfXfd6NntyIRZS9nYJaDOW8mb74XwN0yuqW2+QHuGs
 5ndm7yfHW6vUAx3HIen7ERE=
X-Google-Smtp-Source: APiQypJwjvuaGmWqLfLEU60RIdP8e5Rl6o+Oy7lzMz6QgXAUAvXDV0syrDiMqlO3lG22rCbX4utrvw==
X-Received: by 2002:a5d:9c02:: with SMTP id 2mr10123761ioe.67.1588472016156;
 Sat, 02 May 2020 19:13:36 -0700 (PDT)
Received: from localhost.net ([2601:681:8600:14a0::c42b])
 by smtp.gmail.com with ESMTPSA id w69sm3069491ili.76.2020.05.02.19.13.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 19:13:35 -0700 (PDT)
From: Eric Yu <ejyu99@gmail.com>
To: hsweeten@visionengravers.com,
	abbotti@mev.co.uk
Subject: [PATCH] Staging: comedi: drivers: ni_pcimio: Fix variable name
Date: Sat,  2 May 2020 20:12:47 -0600
Message-Id: <20200503021247.250785-1-ejyu99@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Yu <ejyu99@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a variable name that was Camel case

Signed-off-by: Eric Yu <ejyu99@gmail.com>
---
 drivers/staging/comedi/drivers/ni_pcimio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_pcimio.c b/drivers/staging/comedi/drivers/ni_pcimio.c
index 7c82d5f9778f..c1d70eec24ab 100644
--- a/drivers/staging/comedi/drivers/ni_pcimio.c
+++ b/drivers/staging/comedi/drivers/ni_pcimio.c
@@ -1214,7 +1214,7 @@ static void m_series_init_eeprom_buffer(struct comedi_device *dev)
 	struct ni_private *devpriv = dev->private;
 	struct mite *mite = devpriv->mite;
 	resource_size_t daq_phys_addr;
-	static const int Start_Cal_EEPROM = 0x400;
+	static const int start_cal_eeprom = 0x400;
 	static const unsigned int window_size = 10;
 	unsigned int old_iodwbsr_bits;
 	unsigned int old_iodwbsr1_bits;
@@ -1234,7 +1234,7 @@ static void m_series_init_eeprom_buffer(struct comedi_device *dev)
 	writel(0xf, mite->mmio + 0x30);
 
 	for (i = 0; i < M_SERIES_EEPROM_SIZE; ++i)
-		devpriv->eeprom_buffer[i] = ni_readb(dev, Start_Cal_EEPROM + i);
+		devpriv->eeprom_buffer[i] = ni_readb(dev, start_cal_eeprom + i);
 
 	writel(old_iodwbsr1_bits, mite->mmio + MITE_IODWBSR_1);
 	writel(old_iodwbsr_bits, mite->mmio + MITE_IODWBSR);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
