Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5667D38DD
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 07:52:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33C6B258AC;
	Fri, 11 Oct 2019 05:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0zv3C1SuAXKy; Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 246C820461;
	Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB0521BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5D4887FDA
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Luq42e6iHgpn for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 05:52:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33A3887FC8
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 05:52:10 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y22so5402260pfr.3
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 22:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=84eJ1lI0FM0l9W+xwQ+ZMb9OxUSPGPie2ZC1/+v5gJM=;
 b=TC2K9Mvx2CPCxfqDEZasJqs/w9UNEXCTpKsRPZw/4nlx1eikm6F6XGvcevrlGaP+VU
 /U+QbWz4VhLGb+KkBBlRBX9WwC2aH8+S1ydHQfU1ud6Kq80Pdv9XURX7cHOoXzBoii+Y
 L6vxc0qAn7jfjRa0ZhtrGNE2dZM9gcmBKTSDbkz9Y63g6NAuQ806fKsm6/YxEFTXnMUn
 jwoKUG+IyFHGjs7dTBVgA7jfR0UX9j1niC1uuLwiwkI9LWHNmZAMHGaG5FHrxDCOtl23
 PGb5lLZHzMrEMI/D2X0lrot/jlkFcGf7o0eMwDyRpsHemOXuqAjMHZd/xE4GuK4gMlYu
 k8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=84eJ1lI0FM0l9W+xwQ+ZMb9OxUSPGPie2ZC1/+v5gJM=;
 b=DnLeCnRK5XIM0kNPWE72WnvyShMl9CpuRcLFIEFlwUUWEIah2uF3urM5TJguIvv3kX
 FfSSH9TkPmG827OIRUnOP1sZAEj8fqm/MKA0MStPWojg78isgKVFUnPSvXbgoa4EbyvA
 6I1i1i9KFs4NUCBSwVyLFtBw121YcUFzd8Pkb3L10rqeOxtlh2cTyBrZEYRHHPCe4c27
 EMlE0WM+WDEwbGTSfmGpWxGeykSFfI1UbCv88GTeppitDXBa8yUNx/F0uALhMitN3udk
 YR/40AeMR+FfxsMF8TfHniC93TMy9XXvlcQftnI74fm+GI0C9LIBbPu4wEFHdkP1USKU
 qnrw==
X-Gm-Message-State: APjAAAWRqZzqcKSVh1h6PgDBF1KydXvdz0YImKv+AZg4QP+zwaDhs5rT
 gSNdZIy+1rfK/SDcXvQUjyhcJ0Gd+fzuWA==
X-Google-Smtp-Source: APXvYqwG9wc9xAzPckhhc7TpzInZFNPvqiaKQtdp6dH0hcBDz6jATtv5H2SQzY5kuBYKC4a/zN758A==
X-Received: by 2002:a65:4189:: with SMTP id a9mr15019908pgq.380.1570773129793; 
 Thu, 10 Oct 2019 22:52:09 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id i184sm10257782pge.5.2019.10.10.22.52.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 22:52:09 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] KPC2000: kpc2000_spi.c: Fix style issues (misaligned
 brace)
Date: Thu, 10 Oct 2019 22:51:53 -0700
Message-Id: <20191011055155.4985-3-chandra627@gmail.com>
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

Resolved: ERROR: else should follow close brace '}'

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index d1f7360cd179..66cfa5202690 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -228,8 +228,7 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
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
