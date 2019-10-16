Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F74D8A39
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 09:49:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EB6087EE9;
	Wed, 16 Oct 2019 07:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lx+OSeKIu9Qm; Wed, 16 Oct 2019 07:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45BEE878F0;
	Wed, 16 Oct 2019 07:49:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BA7C1BF386
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15A1E23086
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QNmdIianYfj for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 07:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 690AC204A8
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:49:52 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c3so10872897plo.2
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 00:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVOYj/Re7UhdcN0oIEXqQ3IhVWkoZflbo7uyXKIkqvQ=;
 b=kzag0KZSyiLX53Ov+HKOMerf8wmhmV7RvNdjh7Z3wK9k+y5eP2DRWD3eNeQfi59yIY
 3GQ2+rGmEAw85UShHP/w8mXxD1zC6s7SJ53zNFQu4Zigrb3n7cVguPz7xshFYyQ9sgxc
 Lr6KtM/W5nANRAMJ6corxdhprzQqEjPFp5jkb6qhZKWetrMQF6g5B4o4eJLaihQlYSKC
 lS6/uMQpeF7fzM4GrBVqOzbZXAmGuMTvtAjTgyrz0SZDRWZ366AWj8rJ89hMZvoF+Wuu
 iIvaw8855QDIoFLQmN4Ke5yvHseFQOG8QBdNpuv0XxcHdprkIQE/u2iPVuh/Q2tD7mMF
 F4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVOYj/Re7UhdcN0oIEXqQ3IhVWkoZflbo7uyXKIkqvQ=;
 b=nK3enkBXGsCFwPbnidIVcnSIS9G88QyJBLTz2GQN5wO3X77vFCm8/BvEs5Vz3alBCU
 X9FjAAvudkkwzNoEUu8lZVPozvn3ign9NPm0LrJmQNcdpsXpq4te9huBx4CqmszKDhwO
 VgQwnJD0Gm5n22tdvMycV3Q6HaPPjiseJygq8CmaenS8sdeCIn4WKYE++cIfND8dwf00
 vRTTSevYE7rqFpi5laHqKtJEZm2+8TAIlNTxCR62JMFgdgDNZA+kMeGmeafhQO/nD8JM
 +1O97lzINJXtcAzyjmr7e10lpCAJr58CSrOotvFZGn9wal92pXY6/4esSSTQLohvalwl
 Yo2A==
X-Gm-Message-State: APjAAAXhd2ZFQl5zbPIIKDr7JkXJDkT+O8lYtOnNL0RSfmhRgP/jHraa
 vzEYtlheAyUgTLm+F3T1+gg=
X-Google-Smtp-Source: APXvYqzJb4X0OYeJAduEFOae7Gy3vFiHhuOFfj8yAKi2YmXFJUC6mnybVaqcdj1MkyzT5Ghsj0B0LA==
X-Received: by 2002:a17:902:9a41:: with SMTP id
 x1mr38983505plv.331.1571212191868; 
 Wed, 16 Oct 2019 00:49:51 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id d1sm25185522pfc.98.2019.10.16.00.49.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:49:51 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (Unnecessary parenthesis)
Date: Wed, 16 Oct 2019 00:49:27 -0700
Message-Id: <20191016074927.20056-4-chandra627@gmail.com>
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
