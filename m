Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75326E840C
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 10:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2267086410;
	Tue, 29 Oct 2019 09:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARkqND9YdbMu; Tue, 29 Oct 2019 09:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F31B684C63;
	Tue, 29 Oct 2019 09:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6401BF307
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77EA584C63
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5TcGvJvyVn7 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 09:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1AC8984B82
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 09:16:51 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id u23so9117714pgo.0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 02:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aUKSB/eobGAaYzA+zetYK7qwC81TH5UGLLG8mpvrqjM=;
 b=E1LXRm2easraBHhl0bFqL+Sv1AmJlB9T0/8t3VfA3fsQilSW3EY5WftU8nv//nlavL
 /0lcqaazaFPP03R2wR1yqcf1qs8ql3uv8VobnKuMWRzzJQbSxDm+Em4jStO8LGOFf4qP
 BBQfJbgrARGgedUq6M9dhhfnbDreSrZOTOZcawMwJ/RP73wXOejjhRf9PuvYPnYYVwKE
 IX+5LDblg8gvAeOS5RkceXL8KGSH+OtaA69DwWKzx9ozsZtCngV8wUs/3B3W5rYt3HCU
 bt6lcj67T4yQ1/e59gYhs0gfu0wvPBeBFQUs6dZRwv5TZG34nrw+Uv2cMf5FW5hIaoZH
 M2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aUKSB/eobGAaYzA+zetYK7qwC81TH5UGLLG8mpvrqjM=;
 b=QM0c9pVLsQ/BuSVRtv/9EtvGPWN52NAGUULS5w+cbeXHedFNkR0xZ0vMj/Ez/HvrG2
 1AKMzY2lZaqvPAPaf+Qe7BiSqe3p+mgpwj4+KbGCPGwKrjViQltkS/wSwNBCsjedngoR
 GsBzw5mGpqhk22gLSjLvzl2wFdQW5QQ9KGGUOFl7fVxVqFKXPJ5O18lDGOKB+w3WyBF7
 oiR28g34JAa52URLIfW4cVonF84uB6b12odC+XjVIblwl4HPeUw4ioVkjanjy39Ox5S4
 vILCEwJP2JE3mPqgrfzCyp8b8ZnL7ceT0uS5t4csy9IvtWmHFHdYYWtwRUC9hVXIXrTy
 qm9A==
X-Gm-Message-State: APjAAAUxRq5GA1Cngekp6wEY7lkIyllnYsUO5IeTOQSN7OY8VOx6L6sa
 oc+ystk0H8rzLI3VPYwFMkc=
X-Google-Smtp-Source: APXvYqzA3PKI84VfLy3qlQweRNsJMm7ikBuFnWYQfY+/SKdze3mgarhB8+wNPHvBUFC4UQEXezPPrw==
X-Received: by 2002:a63:b60b:: with SMTP id j11mr14496261pgf.116.1572340610675; 
 Tue, 29 Oct 2019 02:16:50 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id g18sm9910556pfh.51.2019.10.29.02.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 02:16:50 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (misaligned brace)
Date: Tue, 29 Oct 2019 02:16:36 -0700
Message-Id: <20191029091638.16101-2-chandra627@gmail.com>
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

Resolved: ERROR: else should follow close brace '}'

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
Previous versions of these patches were not split into different 
patches, did not have different patch numbers and did not have the
keyword staging. The previous version of this patch had the wrong 
description and subject.
 drivers/staging/kpc2000/kpc2000_spi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 5712a88c8788..929136cdc3e1 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -226,8 +226,7 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 			kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, val);
 			processed++;
 		}
-	}
-	else if (rx) {
+	} else if (rx) {
 		for (i = 0 ; i < c ; i++) {
 			char test = 0;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
