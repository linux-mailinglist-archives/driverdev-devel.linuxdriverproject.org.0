Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 565E62720E3
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2C2320529;
	Mon, 21 Sep 2020 10:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qRGx7IR74w9f; Mon, 21 Sep 2020 10:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2D4820C92;
	Mon, 21 Sep 2020 10:22:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D36351BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B148420C92
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtU6LSZUg7s2 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8536D20502
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w5so12117787wrp.8
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9ZBjuGtlIQ8oulJMUmpkUNjlWYvzKi6Grt0GpSmmusw=;
 b=rxZwjV6HY9LG0dpHkUso3xgcTJu7kAviAeubkz4/JVYFg/pNiT7Mv0ja6GhsRuMgYB
 j5RydFDHDpcj6AtcVzbq+tBHf9E7bBVCehrc22Be6rCJ31ARmygdsxWk0KKPLR0isLzF
 GZtcCPBa0cphp7RHnHGfOaYKgli39BOriDPuBFnO2HQO36mlrtoowEm7ZGzf7Y+pZyV1
 c5x80CK8sJiPuomKofPU/1tkVzdpjtpuCmWUpkFJ53ZMwsWwuevTyvmwGe3ezPDykPjg
 PKVRYplwuhfbBoF6bsfRI+4BbOEA/7K7BRVlQa8NOLvjAY42SPCmJa6qmBHkkI9BW5rR
 lONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9ZBjuGtlIQ8oulJMUmpkUNjlWYvzKi6Grt0GpSmmusw=;
 b=IV+0Va34T0YTVVlB5YBz9/muGGZuVqPWPFhAqUi56HfIF6Te9PYORMO26prLmJOjvz
 V8RuryUx6ju3BjptLeUnbQB1MLSI6hkFEZWJgAhF+TDBNTzVryhUKsxmeG/Yh0zYKYB5
 HOqqWZUuHOO8Vs6QcL6gRAGq3kNFDTMwCKFRS1ajTQDJU2148lYFF/q9unfA+ej7gdgY
 1WhVq54RSJEv4rPsb/R0SOD05Pc3YRsdzXhd4dVRZLBYNMue/WeCDk24R0CtccPPBVKh
 iVwOLQ2d2Nl+V10ZpbZXmvSUiG2R2ca+jY6urx1sGv0jZDnd9ngf6hU2emR5gN6yfM8K
 7Zbw==
X-Gm-Message-State: AOAM530vZbFo1R2WBCmBHlTPZQvPTV0B1XOb4TCCGct+aPPHQkT/TT2Y
 njobQEmMNQEomQd2+tkyAO8Fcw==
X-Google-Smtp-Source: ABdhPJyzfzbEKklN94+4S73Qh+VMGuoEabkAmSVR1mVdTjh3TG+GaY08+ACfViEVCb5X17IIx6vMRg==
X-Received: by 2002:adf:9405:: with SMTP id 5mr28243151wrq.51.1600683659111;
 Mon, 21 Sep 2020 03:20:59 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:58 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 28/49] staging: media: zoran: convert zoran alloc to
 devm
Date: Mon, 21 Sep 2020 10:20:03 +0000
Message-Id: <1600683624-5863-29-git-send-email-clabbe@baylibre.com>
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

Allocate the zoran structure with devm_ functions permit to simplify
code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index fe4d34e388b4..62e63804ae14 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1017,7 +1017,6 @@ static void zoran_remove(struct pci_dev *pdev)
 exit_free:
 	v4l2_ctrl_handler_free(&zr->hdl);
 	v4l2_device_unregister(&zr->v4l2_dev);
-	kfree(zr);
 }
 
 void zoran_vdev_release(struct video_device *vdev)
@@ -1101,7 +1100,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return -ENOENT;
 	}
 
-	zr = kzalloc(sizeof(*zr), GFP_KERNEL);
+	zr = devm_kzalloc(&pdev->dev, sizeof(*zr), GFP_KERNEL);
 	if (!zr)
 		return -ENOMEM;
 
@@ -1287,7 +1286,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	v4l2_ctrl_handler_free(&zr->hdl);
 	v4l2_device_unregister(&zr->v4l2_dev);
 zr_free_mem:
-	kfree(zr);
 
 	return -ENODEV;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
