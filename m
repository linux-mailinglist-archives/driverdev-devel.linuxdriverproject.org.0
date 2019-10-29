Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 884FFE840E
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 10:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B73A086230;
	Tue, 29 Oct 2019 09:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOX0kIa6T47i; Tue, 29 Oct 2019 09:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59F2486224;
	Tue, 29 Oct 2019 09:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDAF61BF307
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA7D084480
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b3_3ZgaXPd0x for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 09:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAADD8355C
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 09:16:54 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y24so7257557plr.12
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 02:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVOYj/Re7UhdcN0oIEXqQ3IhVWkoZflbo7uyXKIkqvQ=;
 b=fO4EjFM1AoUHkqXxHaPt6GE4ycwJOtiU7rZwOVKyXJrTeFmg+TV84SCb3OWsULw5eu
 Kf46IN/uTbzmt3FXmdtQE6otTQvsaA7gnFHi7rw/2rszrpN1k7JUcj239soY0ZFZHR2m
 JIZrsS95wBQHSXkEPmYETOc6Gb4qN40rL53+PDm28u+/JW837RTV2NXcGju6yl5ViwwT
 HPtaHg+C0WUH5WUtyZFnxMRL3V8xw7B0GtNlNdoZL3MvIjPQ0CX6pYosbTTXZks4IsIw
 Oa7z0Mu0tLnS0MJmPniPcr9iP/ATWrckuYMFW9xL+3MxcmFsuUJj324ZwqRnoU8bWvse
 +iYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVOYj/Re7UhdcN0oIEXqQ3IhVWkoZflbo7uyXKIkqvQ=;
 b=Uw+/766L0XYxx1jf5M4ikfXVDMlvqa2C/oVkYaPbwag80OsKpxfbP/ljw+XrH+NwQQ
 ZLo86Ndec+BWShBK+o5aAf2TomJ3cw/hl2GT4AKdXUB9iCdNsUL9qJUsd1fPVu51zDa9
 +Jymh5AsJ8v6LWX4fh4jxPR+R9/oXQ2uEHbnWLvCaqRnTb5s565Xb+hLU/Sr1vwd8rjc
 0HzJA20i0q9fvl6ErHlJ3BGvhxft1qJzl2pSjSRf/j8VhGCffj95l+uZEqStReJIa5xa
 zUez7iP3ypBipcyr4UBjjDcAuTf7NtuNIGVO+NGoUzaKYwaxf+3UKRrG+tcgmaxuFTyP
 i+5Q==
X-Gm-Message-State: APjAAAXKrqqRlyjXQI58uHLT9m9T1wNg2NddXhd+HrlhCnc0s8uVYsw/
 6smRZ+dCg0v81kHYGWO7FoM=
X-Google-Smtp-Source: APXvYqwELpwN4NbAHwcJx4yUEYqm+QZIdJkqGu6LVhK3QQU8ICbMUAzQFBG/v7RxzNZNWKVVw0AVGQ==
X-Received: by 2002:a17:902:a58c:: with SMTP id
 az12mr2900622plb.140.1572340614402; 
 Tue, 29 Oct 2019 02:16:54 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id g18sm9910556pfh.51.2019.10.29.02.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 02:16:53 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (Unnecessary parenthesis)
Date: Tue, 29 Oct 2019 02:16:38 -0700
Message-Id: <20191029091638.16101-4-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029091638.16101-1-chandra627@gmail.com>
References: <20191029091638.16101-1-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: CHECK: Unnecessary parentheses around table[i]

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
Previous versions of these patches were not split into different 
patches, did not have different patch numbers and did not have the
keyword staging.
 drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 24de8d63f504..8becf972af9c 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -476,7 +476,7 @@ kp_spi_probe(struct platform_device *pldev)
 	/* register the slave boards */
 #define NEW_SPI_DEVICE_FROM_BOARD_INFO_TABLE(table) \
 	for (i = 0 ; i < ARRAY_SIZE(table) ; i++) { \
-		spi_new_device(master, &(table[i])); \
+		spi_new_device(master, &table[i]); \
 	}
 
 	switch ((drvdata->card_id & 0xFFFF0000) >> 16) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
