Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA8BDBE08
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 09:10:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA81487E1F;
	Fri, 18 Oct 2019 07:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZbx7N6C-EiH; Fri, 18 Oct 2019 07:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8097387E2B;
	Fri, 18 Oct 2019 07:10:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9625F1BF293
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 07:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91D5C8650A
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 07:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mi25ERHC_AsY for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 07:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0C5AE86E28
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 07:10:01 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id x127so3281596pfb.7
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 00:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aUKSB/eobGAaYzA+zetYK7qwC81TH5UGLLG8mpvrqjM=;
 b=IK3Ai6M2vww5v5zDqMVx2Y5Ux3F2JnNbcrzWeRo30ZlpTw/YxKGRFm5dPAXISnId2K
 LUWF/zq8wvhnBjW1sgSnfDfDCqSvxFALW1h/kZFJG+U6kfujlc5CLhE2+gvUrYIYFLyF
 eYQbv0KgtyRC03j5YNpvQHy4YWzrw9/v5m4U4iurnbFirv8SLE43Ls6jgVGAdTeTNZeQ
 TJP6IPJpuWU4YtkwYL3o0qYlasjzi57kp9+cmR9IpAQvIjoBtnnC3DPmEQeaqAusnGcb
 ZRae5QAaF5VL/IjzD4UHIeSDiqqqaPtfwmoriJTp7xN5z/F29hwErInQVeEHmxtTc7mJ
 QwBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aUKSB/eobGAaYzA+zetYK7qwC81TH5UGLLG8mpvrqjM=;
 b=O2IkYkdHJs4oX++qR8e1vL9bhVohJCACqLa1RvN2DwOPc63b3bgaEuGp9pNM9n8bKp
 dHiOt5/m9YEAW3ugfEk1fjugf+eBKO8TucaQBTvyROnIpAnUGXKom3ApB1vs66SZ/ZXg
 CNqVdgNSta3WCsSpD4OdPiQREVRNr/JBdu+COJOySVcCVXlIcUItw4WI9+6StMiEL0bL
 iNE10mNA0s+1ItZBIBoD9tteMPMXkF1ocQpGrx6JnJMNYsExJub8ETTKagvArC8nfi2O
 rbBmHx8y2KmqI80q4K23f+Nj1YXgE4ey+dE5cEPwrNNXk2R74IKL+wnhsQmEyFvTzv/6
 Y3fQ==
X-Gm-Message-State: APjAAAXhKAdyJeldg3pbHWHnqFNpvgrMLhvEK05eF2M6TN6oKNl7Rj5W
 2gRFZRMqYb4tplKcphz+oXk=
X-Google-Smtp-Source: APXvYqwG6pgWoLTskuPSqA1ZK0IIJIG9b5lF34gkizyFXbN0bJnAbqjQXy5U4vUskXlAmbg0A2NDFA==
X-Received: by 2002:aa7:9907:: with SMTP id z7mr4977952pff.133.1571382600635; 
 Fri, 18 Oct 2019 00:10:00 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id s97sm6974508pjc.4.2019.10.18.00.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 00:09:59 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (misaligned brace)
Date: Fri, 18 Oct 2019 00:09:48 -0700
Message-Id: <20191018070948.22279-1-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
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
