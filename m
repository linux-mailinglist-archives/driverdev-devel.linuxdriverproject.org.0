Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF51831F103
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 21:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC32460683
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 20:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sf083xNlCmX8 for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 20:30:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 86BE76069F; Thu, 18 Feb 2021 20:30:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83EC460661;
	Thu, 18 Feb 2021 20:30:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CD1B1BF381
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 20:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 26AED86BE9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 20:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnbrpwHCavZ5 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 20:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8BA08630A
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 20:30:08 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id j6so8088352ljo.5
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 12:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ox1btvjGk59rM0iFdC1MHmi/BBw9yMa71c5TOfzav7s=;
 b=oI7R0pzgj9KCnSqzCOvslhBEo0GGB5hHCweLk5DtPp5Cj5n4hPHS1HJfhcdN+iL7Fl
 AHOAs3kJSozfHSUF8+a0vhU0YfMMPhATR0zGI45IgTMsPU8trzzZytlOH/15f0mKeVAd
 kx4VntGnpixMMcikvIb95fLwsxqUKRUP8JOE9QkVh2XxSR1lXNUxKmwxtJrVz93VyD3I
 02jpKH1SQqCrVZokIFl/efxaF4jV6ZCRFQS5L9qiZ3kC4LKCz1p3veA/evu0/yLCx8ZP
 3qY65bQSxrmlP3Hq9m2v4s7ECBOvVNm49ANlCxpGNy8txmwVPpTrqWQFjkbalubmXx1a
 Xfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ox1btvjGk59rM0iFdC1MHmi/BBw9yMa71c5TOfzav7s=;
 b=e5RrP6x3KfD3CkMF/aiEBHhvh1QPftlF1T+bSaeEiFQlNBSNYldSLOTGRD5ezBpAlD
 9fTbCCiNHyR1nL92jnhrOP/xtCYn/V0VRl+UvKB63EmKk/6taRnk6KUXqeGzBgemJNts
 gJYeuavs0hVy2opx5WYbwR2FV8ySlzPs4tRkWN8C/ebbOTvUTt0vfyqp2yaXvWPRxhd/
 Sicz/aHwVK0qSWAAoxayJiEH5OZ5ug92UsPMT0RW+v1MSeTuEp4QtAC+IP8LmAW8Rafv
 fVghhyu3LXNUL2uKDZo7RH8JwE6NBhGy232QuNkzPg8XPoMY9W7ZiBwK09mrnkJgT6uu
 aVnQ==
X-Gm-Message-State: AOAM530cStUSAl7En+Rc4842JMS5S60s0nHx8C8YcrHocfc3YOXd53wf
 xg2wiWQpKzqn+QSNVMq7rwg=
X-Google-Smtp-Source: ABdhPJzJ65gblNIDFUbiJW63dtKAk5r9xjH4j6dImNsNDmQG2MIhoK/hvx+e0l6i06MGcKKuqxO+1Q==
X-Received: by 2002:a19:f118:: with SMTP id p24mr1623511lfh.4.1613680206841;
 Thu, 18 Feb 2021 12:30:06 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id s9sm702289lfr.231.2021.02.18.12.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 12:30:06 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org,
	sergiu.cuciurean@analog.com
Subject: [PATCH] staging: kpc2000: code style: fix alignment issues
Date: Thu, 18 Feb 2021 23:28:14 +0300
Message-Id: <20210218202814.14204-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
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

kpc2000_i2c.c:
fix WARNING: line length of 124 exceeds 100 columns
fix CHECK: Alignment should match open parenthesis

kpc2000_spi.c:
fix CHECK: Alignment should match open parenthesis

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---
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
