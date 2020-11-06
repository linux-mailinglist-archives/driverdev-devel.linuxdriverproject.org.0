Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4C12A912C
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 09:22:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B9FE2E0FD;
	Fri,  6 Nov 2020 08:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkb2MjoZTMHM; Fri,  6 Nov 2020 08:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21FD92E0EA;
	Fri,  6 Nov 2020 08:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F1F21BF3AB
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 08:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 663DB871CF
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 08:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xdfuXBIfiAe for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 08:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52F18871B1
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 08:22:35 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id j5so325705plk.7
 for <devel@driverdev.osuosl.org>; Fri, 06 Nov 2020 00:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-description
 :content-disposition;
 bh=lEww5yAkFWrfhIg3JvC4XEkVJHdH/gtbEeQQICiYVw8=;
 b=OPL+0SzkpAeEampvzqnF3PNMQJC7r7rs9LfURTmHmuV4tiXFMt9cIPWweCsB66TOOg
 S+xt4z5F85XSS5R8gg3sVFql/nXzTDMturdzfU+Aj8eN4IEiXipDXLvoSBjsUYJLlcs8
 VtW8a5leVTEm1iTf/zc7pE7XzEQlsLWGyp+jYggaOqHp3RV/+rhm1mA/PdgXMfvd+YDT
 GBYcCH469RgA3FzezODAWQk91sz/02ba1OHJWZiTcJpIDX3j/EFjeZg7dsOXCFmU+u08
 6hdEP/loQ4uAvBuXz3qIQ+ZLm1riK305MXUvdccDhojpn+M4jXFljs/YZ8sBKbH83jMw
 sQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-description:content-disposition;
 bh=lEww5yAkFWrfhIg3JvC4XEkVJHdH/gtbEeQQICiYVw8=;
 b=ql1hMuuGT/OKCvAAafiQPw5wURklQ9UBWsjhFmcHx0TmYidR+jZRNKegl7SVilqkGz
 +tfCjeGBlSmgx2tZ+A1muK9qEKEzzH8Z41eLO4uVukHrubuQvEzLveoukjAfynpU/Xe9
 jm/wnZTHcg8LEsKHC+mrgVjm96mQDwL22HUbWVclRuAaVWR+lpZcIrFnZD9hCvfpSlOE
 TASpqRQC2b0JlmbytewvMSpyonX2eOsZ5GteUBsjbafdzoAypjYo/AvN7Va77Gc0Z2XI
 HZGDQM7z28XXJOnh44uD4r/9xebUAIutYOa/f9MdSc53xem/i5OZ+TbMT2F16d/SUy1H
 UB3w==
X-Gm-Message-State: AOAM531kDwf+mVR6wuo8wsBCyfFveL8HyL+X/RKsWuupqgV2blC6gP5S
 5cvoMuBtHsEgZGlK5nagrg==
X-Google-Smtp-Source: ABdhPJwq+FtO2oHP5rTQ7rqeqmlSy3rIyrQhkXbZBVqUe3WbhYREA/E/s4IsPy1GACee46AHV2kRmw==
X-Received: by 2002:a17:902:8502:b029:d5:b4f4:8555 with SMTP id
 bj2-20020a1709028502b02900d5b4f48555mr982843plb.76.1604650954870; 
 Fri, 06 Nov 2020 00:22:34 -0800 (PST)
Received: from Sleakybeast ([2405:204:8304:6bd6:e537:e8f9:e101:bb78])
 by smtp.gmail.com with ESMTPSA id h11sm1078196pfo.69.2020.11.06.00.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Nov 2020 00:22:34 -0800 (PST)
Date: Fri, 6 Nov 2020 13:52:26 +0530
From: Siddhant Gupta <siddhantgupta416@gmail.com>
To: matthias.bgg@gmail.com
Subject: [PATCH] staging: mt7621-dma: fix alignment warnings
Message-ID: <20201106082226.GA22990@Sleakybeast>
MIME-Version: 1.0
Content-Description: evel@driverdev.osuosl.org,
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mamtashukla555@gmail.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the checkpatch warning of alignment should match open parenthesis
for some dev_dbg() calls

Signed-off-by: Siddhant Gupta <siddhantgupta416@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 44 +++++++++++++-------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index a9e1a1b14035..838fd05d33ee 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -208,24 +208,24 @@ static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
 
 static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
 {
-	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, "
-			"tctx %08x, tdtx: %08x, rbase %08x, "
-			"rcnt %08x, rctx %08x, rdtx %08x\n",
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CTX),
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_DTX),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_BASE),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CNT),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
-
-	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, intr_stat %08x, intr_mask %08x\n",
-			mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
-			mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
-			mtk_hsdma_read(hsdma, HSDMA_REG_DELAY_INT),
-			mtk_hsdma_read(hsdma, HSDMA_REG_INT_STATUS),
-			mtk_hsdma_read(hsdma, HSDMA_REG_INT_MASK));
+	dev_dbg(hsdma->ddev.dev,
+		"tbase %08x, tcnt %08x, tctx %08x, tdtx: %08x, rbase %08x, rcnt %08x, rctx %08x, rdtx %08x\n",
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_CTX),
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_DTX),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_BASE),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_CNT),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
+
+	dev_dbg(hsdma->ddev.dev,
+		"info %08x, glo %08x, delay %08x, intr_stat %08x, intr_mask %08x\n",
+		mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
+		mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
+		mtk_hsdma_read(hsdma, HSDMA_REG_DELAY_INT),
+		mtk_hsdma_read(hsdma, HSDMA_REG_INT_STATUS),
+		mtk_hsdma_read(hsdma, HSDMA_REG_INT_MASK));
 }
 
 static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
@@ -242,10 +242,10 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 		tx_desc = &chan->tx_ring[i];
 		rx_desc = &chan->rx_ring[i];
 
-		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
-				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
-				i, tx_desc->addr0, tx_desc->flags,
-				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
+		dev_dbg(hsdma->ddev.dev,
+			"%d tx addr0: %08x, flags %08x, tx addr1: %08x, rx addr0 %08x, flags %08x\n",
+			i, tx_desc->addr0, tx_desc->flags,
+			tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
 	}
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
