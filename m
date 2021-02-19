Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB68931F5B5
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09015862BC;
	Fri, 19 Feb 2021 08:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImgZldC7trrd; Fri, 19 Feb 2021 08:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BAE18701D;
	Fri, 19 Feb 2021 08:14:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D20031BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CECAA86599
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcWUJInjpdoH for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:14:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 09069864EE
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:14:38 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id a17so15826976ljq.2
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 00:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RlsUMZyywPPv6rRey6PD7JMivM7n44tU4Rz5J2JivFs=;
 b=lfQzXkaqrVPedySkAV2YH4sm9yksnW7wBJwfUETDPN7cRLj39OTnURXob/0iYL/pL8
 EMEzUgy1Q+THyS5zpVP/1WW37hqbdJ+SzLj7/kEpKj6LiX0tPAlRXEAB43cCJtUwqW5Q
 u757lHjqTgogPARvcX/lXQ3KG433Z15rKAuBznljFItnR8ujKh7E4w5pthPGmfLLenww
 GxtrQJ90qws0Ob/DNzJl4z5he4+MdSS9UF8ocwpD8MUn9FBVPJMVzFWlp2T0hvFJlVH4
 HkJQfXO3TP/OQtDK1W+kMpzbA6/iCGnx2F/k4MvCZ4bMajxr0of/+y0gakpaPq6FFXCd
 Uukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RlsUMZyywPPv6rRey6PD7JMivM7n44tU4Rz5J2JivFs=;
 b=ES490H02eGletl0trVvF4TT6eso54Yl8kOWGA10DD3Sd/OxWuxGTjvgX3vJsP4q/BU
 LORIqGYS5ZRg1YkyrYr6+K7Z8Y82kO1c5im/IamZcKeNAP6kftzFx60Di+jRTjij44ir
 tD1TVYVCtYjG4h/25x/r5Pj2uPdQZmgWewVnPaBLStxGjI0bZ8D03SZ5v+OBFRIOPQKf
 BXmDqf6K3OIU6k9QocOPbaxlz6Axmtmzb4XuXQncM8OXsS9JiFqJlxZUy5sqMgwwVsRr
 VUMc1SVFE7x9isFq5RIPg1Uc/dFxbZ4eM5vMzUOqdd2NiAS+k6xO4HN3qUBJju41NWna
 voNA==
X-Gm-Message-State: AOAM533lFxgfupYbl3xvrI/aTIBM3pwlnagdIGhiHG7qNnjnR9bJbq/N
 RMEP7hqLZj0XTiUGAxIVSTIJ8SS58c0m4w==
X-Google-Smtp-Source: ABdhPJyjnthC6rpV/Ng2rzTbb2CAke4EkOdh0JyWndjzEfXQYupmlQzbOxA9/13CPUjdAkAGTltoLQ==
X-Received: by 2002:a2e:b16d:: with SMTP id a13mr5028924ljm.39.1613721999591; 
 Fri, 19 Feb 2021 00:06:39 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id c12sm850815lfi.244.2021.02.19.00.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 00:06:39 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org,
	sergiu.cuciurean@analog.com
Subject: [PATCH v2] staging: kpc2000: code style: fix alignment issues
Date: Fri, 19 Feb 2021 11:04:51 +0300
Message-Id: <20210219080451.19857-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YC7TiCzbB+4ppzdk@kroah.com>
References: <YC7TiCzbB+4ppzdk@kroah.com>
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

This patch fixes the following checkpatch.pl warnings:

WARNING: line length of 124 exceeds 100 columns
CHECK: Alignment should match open parenthesis

in files kpc2000_i2c.c kpc2000_spi.c

Additionally some style warnings remain valid here and could be fixed by
another patch.

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

v2: Edited changelog, as suggested by Greg KH <gregkh@linuxfoundation.org>

 drivers/staging/kpc2000/kpc2000_i2c.c | 6 ++++--
 drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 25bb5c97dd21..14f7940fa4fb 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -200,7 +200,9 @@ static int i801_check_post(struct kpc_i2c *priv, int status, int timeout)
 		outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status)
-			dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
+			dev_warn(&priv->adapter.dev,
+				 "Failed clearing status flags at end of transaction (%02x)\n",
+				 status);
 	}
 
 	return result;
@@ -269,7 +271,7 @@ static int i801_block_transaction_by_block(struct kpc_i2c *priv,
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
