Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8CBD38E0
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 07:52:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B2CB88843;
	Fri, 11 Oct 2019 05:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5hlf4B6B7L95; Fri, 11 Oct 2019 05:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BBC1883AD;
	Fri, 11 Oct 2019 05:52:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 839891BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C98D887F8
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4Ogzj+a7Zlb for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 05:52:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5470883AD
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 05:52:15 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id a2so5388180pfo.10
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 22:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i1L51lOnWKHW5TJeL5qfRnIenvgB0vCtd5X2cYOSU8A=;
 b=bNxAVXrY9EW23UPXRaicX+62+nvRJdhzdaDPzBHW6vpX0KAU2wBy3YYpxoeqh1i8dE
 RM9seEvHE+LRr6/UGMxf0tZ+bnw07J52e3bXE27x2qTvztZ41P/vY9CHSA1mkPs1yURT
 ElVLEpQI0iLDsh+6FgsUFaxmR0H9n+OkkNbwBelSbuT6l44GI2pIiFSJUwytkB/jSVxm
 9vg+/VIdeQtpbZWopmEOhAfviYqAW12t7ebAVgu3AB4ukBuzgoTZvfp4rHvzFNXiuVC4
 ePSXJFNwVdB0gw8oJy93B4eb85dVgAbtsDMCJYMTXWeTLVAlBicsJbykpiLnYyP02/9L
 IEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i1L51lOnWKHW5TJeL5qfRnIenvgB0vCtd5X2cYOSU8A=;
 b=RI6tWvDhJ1+nxXwYzxSNL7yxUK7CAksJincqMD7St5j4NNY2UJaraPBU6jIscJBpi6
 R+orAIvMBHdq3onb8X2ZT/rwj+/Q8i3KybaiHPmzIgpTshNCmO0ASZCS9mKF468JBmUy
 7+eNmZ5JqOkN51RZFoKSAUoMSNOGYaADuRt8xTOEr+vQY0g2pNjCvSdgKYphX0Oxws4y
 qo8tqgK9L/T/oRXrgcwEbjIfyEjAeJPuGC/51W2STVs7Y4hQAMQDAiOyyLL9+pQ2id92
 qhRbDbRuHkAQwtCE0hC1nUUonse2UrvddTeAdYIFbk45clYqzegH+0XOkj2Z5x6XNc85
 U1Rg==
X-Gm-Message-State: APjAAAWef9JGQGz0CgytOVpA4xytEXenP15WMMFF/GSqeGlBbRcXU52c
 QiKsHtWsHm0pKxQYNdhkCYg=
X-Google-Smtp-Source: APXvYqwVZHzHwUMl8BA+E2Napohfu3FQGxNVsf6mi0nHXnuX8HAf8mpJAHyP1ymwqePr/diSzaRVLA==
X-Received: by 2002:a63:44f:: with SMTP id 76mr15328817pge.164.1570773135204; 
 Thu, 10 Oct 2019 22:52:15 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id i184sm10257782pge.5.2019.10.10.22.52.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 22:52:14 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] KPC2000: kpc2000_spi.c: Fix style issues (Unnecessary
 parenthesis)
Date: Thu, 10 Oct 2019 22:51:55 -0700
Message-Id: <20191011055155.4985-5-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011055155.4985-1-chandra627@gmail.com>
References: <20191011055155.4985-1-chandra627@gmail.com>
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
 drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 26e1e8466fb2..8cd6936eda17 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -478,7 +478,7 @@ kp_spi_probe(struct platform_device *pldev)
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
