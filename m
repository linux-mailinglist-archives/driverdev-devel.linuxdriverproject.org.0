Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112FAE840D
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 10:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2869F878CD;
	Tue, 29 Oct 2019 09:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DNiC9WYmoZXC; Tue, 29 Oct 2019 09:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DFD68767B;
	Tue, 29 Oct 2019 09:17:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4581BF307
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4CB4284C63
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9EGNf9Y7g6Ha for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 09:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E655A84B82
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 09:16:52 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id v19so9113286pfm.3
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 02:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j+5wZZ+PjzxLbMdDOyLUeg2K+18/C67QOv7Ke0t4fjo=;
 b=om+IK8gW9qPt4hDBCn7c37Yv8B4zorqfOIgpMJXy6PAJCQV9z/f0M2rSIne/RVoN0j
 5rW3sE8guoGkVDLi49tL1A7uPeLqQ0ri+sOcYAY1wXu6Mc0MsZxPgVHq7AOMblh7DXF8
 LWQUxD+6IPqWbG5R7MzujV3fHlI4usGnK9KW9vXXQCzJaQ7iH3phQ8ueaH1+aWXDCCTr
 fXaCNOZD4bjDAcpqwI8dh1/R/H3w2FGj2kS/kH9yoPae2871pGJWYri+/SSMT7IGi4Dg
 R7h/qacZm+6JTDxty6l4+QETsk5Bc/QmfChakWCbpP4rzOMe5XEhhlt859NH5zGbLnFD
 i0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j+5wZZ+PjzxLbMdDOyLUeg2K+18/C67QOv7Ke0t4fjo=;
 b=tX570RXeM6zVty2Y2MapabpjWqotePV+YF98ai5MUtVUGwzFEQpWJ2pSG3asDSCX1m
 qo4SrQmJn1Fps00E20lLu/PgpDDmM7+ugwRSj9GvjwW+WmqEW0oIHNxn4Od0LciEnxPA
 RmjdcC+QYxE9KKIlP0pTfYRxgreFU9Q7IUwEfWUXbhLluqNlPd1pjFsYJ7a7usFNkVAK
 2kZCzvOmbXNwsVK57oEjlcv/uh9uxrZnXV2OG8AwrdQWNV9aNlr4EUgAG3SB9iXxSlA5
 WVHBLpZ6B5f5mYfDh5Ec1ZszN6U+bI1GDG3lKo5dvvsY40GksvZoVTQD+l+G35rwdyVk
 6VXw==
X-Gm-Message-State: APjAAAW/UZFSCxFjWhYHIha2o2Mpxx2ci/xasPo0ZzChY54bgh8S89GK
 jAnmya3ObViLHigSsovNXMY=
X-Google-Smtp-Source: APXvYqyQOz4GE04QEJRvj1rFGw3Ov1Ojp0YBda/lPfJEn4/0zVf45bsahr1XdFJxFxOoFLMdZTyGcw==
X-Received: by 2002:a62:82cd:: with SMTP id
 w196mr25694834pfd.156.1572340612500; 
 Tue, 29 Oct 2019 02:16:52 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id g18sm9910556pfh.51.2019.10.29.02.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 02:16:51 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (alignment)
Date: Tue, 29 Oct 2019 02:16:37 -0700
Message-Id: <20191029091638.16101-3-chandra627@gmail.com>
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

Resolved: "CHECK: Alignment should match open parenthesis" from checkpatch

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
Previous versions of these patches were not split into different 
patches, did not have different patch numbers and did not have the
keyword staging.
 drivers/staging/kpc2000/kpc2000_spi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 929136cdc3e1..24de8d63f504 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -313,19 +313,19 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 		if (transfer->speed_hz > KP_SPI_CLK ||
 		    (len && !(rx_buf || tx_buf))) {
 			dev_dbg(kpspi->dev, "  transfer: %d Hz, %d %s%s, %d bpw\n",
-					transfer->speed_hz,
-					len,
-					tx_buf ? "tx" : "",
-					rx_buf ? "rx" : "",
-					transfer->bits_per_word);
+				transfer->speed_hz,
+				len,
+				tx_buf ? "tx" : "",
+				rx_buf ? "rx" : "",
+				transfer->bits_per_word);
 			dev_dbg(kpspi->dev, "  transfer -EINVAL\n");
 			return -EINVAL;
 		}
 		if (transfer->speed_hz &&
 		    transfer->speed_hz < (KP_SPI_CLK >> 15)) {
 			dev_dbg(kpspi->dev, "speed_hz %d below minimum %d Hz\n",
-					transfer->speed_hz,
-					KP_SPI_CLK >> 15);
+				transfer->speed_hz,
+				KP_SPI_CLK >> 15);
 			dev_dbg(kpspi->dev, "  speed_hz -EINVAL\n");
 			return -EINVAL;
 		}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
