Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8731FD2D
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 17:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7CF287129;
	Fri, 19 Feb 2021 16:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsjaT+OoQf9k; Fri, 19 Feb 2021 16:36:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAE9B86CCC;
	Fri, 19 Feb 2021 16:36:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 577641BF287
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 16:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5427281EB5
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 16:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwrBmSVUNaw1 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 16:36:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 67CB28650A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 16:36:01 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id r23so23258076ljh.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EXIT32tLXPwUb21u4mi4aAdEHXnyWJcrALpWe1VrK5o=;
 b=CCrLuJsYBB7uHeb55emYj7Kz3+dmHcwNZiHJfAl8Bb/uD4xia1ZC6ln0cpUA8wlsas
 gMhmQCo2goQRRNBnZQudaYfxPMmRofQJkj13m6rH2xJEHPWCg3pfocPkf3McnEFQzk15
 95KAxd/1XzKq84xIco2FvlI0joHGnfw2Vt8uJFBIF9ugcrMKHx1REqriNxdf8Ou3BNp0
 k2/xN8QwptNXIw78vQ9oZ6MvIP8H/F/F22++L2QXNvoB/ShQTeM10tBuX8ADXuqsngH5
 rVRUSAUlk0zScJ2NlsFn96FHcba1z8IUO0DxAiiKgkvJyB64pkc4YFIMYFXAKBuvO1pV
 GYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EXIT32tLXPwUb21u4mi4aAdEHXnyWJcrALpWe1VrK5o=;
 b=ZqTUgsOdlO8UdhKELVtHNrjQ70hw2o7fBa8dSTwtnxfJFHeSEzLBaRHZe4cDGA+bfD
 f0EMCCQDiyhG73cLPqRc9HSDKQ8g7yT7ZaPnTh0lTMoRdJ1jeINdYvhCpR38qOjwzj27
 E6Dn0rHtovgHqX/dzDLBKrIcNpV84VDdvs8sd/D9aK8cBPMVLfbOtv4mD+8Y1OnsDmep
 pTCVhM0raS9l81dzobZbllhEqLyHWuycwrSexyxLB5Yp0s8xfzyI4by5yFFwWFvR2NAh
 c3TtCTBiehAIkmBaw28d13Xzo6Nyvbtzcg4lgAk5DUEYZFCfXd5lC0H3Q/qCBEqKOHRE
 xqwQ==
X-Gm-Message-State: AOAM533v/RnymwUjSyL1zwK9e3tPLwe3WU9/NteIB8yuyb/CjNxjZCCl
 ZcKNuuc5hI657Qnw5JxsqWyLU/c860JUuQ==
X-Google-Smtp-Source: ABdhPJye+d5iqus2nTT771b8U6TZ5EbEBRTnLB9ypg0pdJ/HHbLN/e4zU8e9NcUs9tXpBHU0fUAnnA==
X-Received: by 2002:a05:651c:21a:: with SMTP id
 y26mr6128936ljn.323.1613752559577; 
 Fri, 19 Feb 2021 08:35:59 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id g4sm968107lfu.283.2021.02.19.08.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 08:35:59 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org,
	sergiu.cuciurean@analog.com
Subject: [PATCH v3 01/02] staging: kpc2000: code style: fix alignment issues
Date: Fri, 19 Feb 2021 19:34:11 +0300
Message-Id: <20210219163411.24873-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YC92OIgh6HTEexu4@kroah.com>
References: <YC92OIgh6HTEexu4@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Alignment should match open parenthesis

in files kpc2000_i2c.c kpc2000_spi.c

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

Additionally some style warnings remain valid here and could be fixed by
another patch.

v2: Edited changelog, as suggested by Greg KH <gregkh@linuxfoundation.org>
v3: Splitted patch in two parts, as suggested by Greg KH <gregkh@linuxfoundation.org>

 drivers/staging/kpc2000/kpc2000_i2c.c | 2 +-
 drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 25bb5c97dd21..3f1f833d3b51 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -269,7 +269,7 @@ static int i801_block_transaction_by_block(struct kpc_i2c *priv,
 	}
 
 	status = i801_transaction(priv,
-			I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
+				  I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
 	if (status)
 		return status;
 
diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 44017d523da5..16ca18b8aa15 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -465,7 +465,7 @@ kp_spi_probe(struct platform_device *pldev)
 	}
 
 	kpspi->base = devm_ioremap(&pldev->dev, r->start,
-					   resource_size(r));
+				   resource_size(r));
 
 	status = spi_register_master(master);
 	if (status < 0) {
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
