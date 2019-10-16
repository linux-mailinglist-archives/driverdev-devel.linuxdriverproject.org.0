Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3668AD8A37
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 09:49:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B423B230FD;
	Wed, 16 Oct 2019 07:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LGADmPsMBup7; Wed, 16 Oct 2019 07:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84CB022FB9;
	Wed, 16 Oct 2019 07:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE30C1BF386
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB02A878FE
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRFt3NI-WwMK for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 07:49:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F0BF6878F0
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:49:48 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id b128so14202154pfa.1
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 00:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rs+6eykEbLb/Ps0aGciaj263UzIFLf7dw4Limwb3wL8=;
 b=jM8HlFhiuTYhtmJOCTmJzNOeTLVRw5pTyiCmxt2o00wWDbh1v17ZaXt28TSyYalO6P
 j1ob7kakbGmYrklqJCxzKoQsKXFPNIReKbtpoWQzdnfRXCr7OMrReeHtDI510xAC9L8c
 75z9X6mzRQbcJO8SzpP2dqn+1KrH9QpU7rKh4V7lq01Igm9vPn0xmwYZrWw1Ry9zYnOH
 b+pottMfIudmdWLBe7vbnxcBO8W31VWvo5dm/xfDnBxmJCYV1yuwprulyd7XNv37d2ul
 7oOSQO9p/f0O1zj7ij6toeTM3z11WaFMxEN/hWo4qYXQm8CEvABwU5sDIVlALeMBdATp
 +1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rs+6eykEbLb/Ps0aGciaj263UzIFLf7dw4Limwb3wL8=;
 b=TFMH9/xMrRprWXGXvhI3vSckVEqq4mCgbUxMzFne4puIi6TBjdsltXt2dUS3l5MeV7
 9xPvtJfR3r21yFcobCCiWRjjnxj0MkqOrQUBv0UobqhKOZbonjXCEIQWNvZ/6R/LO5dm
 7j3aPxT8uaW3u0Agt8Hy8ukVeL4ln+QGkAk9c4/E3sRTDodqrscvVs79uZ8d9GiRfo+c
 HUpVWHZPzjpxVqZs6ExyR5pUmHNgP5O0cl9/XBSVBoEOublIUTOHulMfRQWeuTo++XU5
 uTFgNfxXX19zejGVGJqHm55LS0DqN9JO9GNcHYHnkFdrD+S/AMHC/T/Qrsh5Weu+3nrn
 oo+g==
X-Gm-Message-State: APjAAAV2XrHskL56hJNNpvPu5b/wSMnF2iOgQLx0+NvkINfBvuDFem9u
 fWaESpHoP7r0aahYgyK2uHU=
X-Google-Smtp-Source: APXvYqwLcffu1Q+66LnpWVngP8agqKLvyV2NklzUg2UWiFFn6GuRXuPQIOJmn1VNbHJt5j5EvWcZeQ==
X-Received: by 2002:a62:38d5:: with SMTP id
 f204mr44000437pfa.209.1571212188617; 
 Wed, 16 Oct 2019 00:49:48 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id d1sm25185522pfc.98.2019.10.16.00.49.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:49:48 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (alignment)
Date: Wed, 16 Oct 2019 00:49:25 -0700
Message-Id: <20191016074927.20056-2-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016074927.20056-1-chandra627@gmail.com>
References: <20191016074927.20056-1-chandra627@gmail.com>
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
