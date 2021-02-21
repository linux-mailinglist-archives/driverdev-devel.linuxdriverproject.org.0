Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6F4320A88
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:25:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C54183777
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gEDhvWWCuNqX for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 13:25:12 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id CCB0283342; Sun, 21 Feb 2021 13:25:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECF1D832D9;
	Sun, 21 Feb 2021 13:24:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA3D1BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19256832D8
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DfPGXqvuIxRh for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:24:41 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 3B71F832E7; Sun, 21 Feb 2021 13:24:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD29C832D8
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:24:39 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id q14so48316298ljp.4
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 05:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B8GAmfaPSIsKJ3KPNf6WDO+qOltP+zM0QMocmHGYNng=;
 b=hBzdKXPTk/0IW0OB4DO34awMibvrjRkm3f+6WXxhD+v2YuZfDdGv9ib0KaGGhyCe04
 4V8jHDAYs4BAnT+XHO9iTv3mQ6KsBbKmYC26OFd5XknULGCVKvKWMMfcacIhS0Jf8swn
 OHhLkRlLgqPMaQObXOCNxmZrbuvTysuLuOt1AybFVGQOeO7WkjDOYO4Li7Dkg+2JAvyN
 w6QFSM7zAkOkUO72j0VEUBN4IeXUYB+ij7fQ5NlKs0bUxsNj70Q+QLVj568hHYZZNJMu
 92k0iO0GdvvPAr0LeFF3p3Co2i2xWgh2ZgW339G1A1SHVS2qdD/hhS844dBAvkLmzfTm
 wcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B8GAmfaPSIsKJ3KPNf6WDO+qOltP+zM0QMocmHGYNng=;
 b=lHce5XTi/EALtVS+COK4SSp0iY3mXlZ9sCDbrVR5Be/24zgV3tp/8hAtu1wxpPPAN9
 ly1QP3Xm+SGKtUN+RBKZe6A34n9k552FR/0sqvcRD+ti0LO7ag9UfI3slbpyrr1rn6uq
 1mfvpUFaHa+u4l1/TsYbzWsHcqs1WaCBBNMA9sgfnwCawjJHFczNlnz39iWP0mXFhyp3
 89LpzbSBkaVakoSxnaHP6tKJlLMb6Z78BhLPBfsUE5yKnpN3TiDXIHJDD0VbQdSEUpa8
 rLmfAcfrgexW8sLfnYIvaUB/q4KPZJOwnbIvgA3uaMuS53fUw4LU02QpUOU60Zcn0pIS
 hZLA==
X-Gm-Message-State: AOAM5311ZAbHaRsOtXvdJIufMG+ipuJxMUYfXDkUDi1FBUy0XGt2dZqD
 6ZfgjlG8F1gaItetD4L8YAhKx2fB05ccbw==
X-Google-Smtp-Source: ABdhPJwWHTJUIreIp07AO7VPMa5Rdy4v/DwO9Sm4hFglzCamG2iCltOxiYXpF1XVcDzMNPdsZpysww==
X-Received: by 2002:a2e:854d:: with SMTP id u13mr6577195ljj.99.1613913877666; 
 Sun, 21 Feb 2021 05:24:37 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id s10sm1684637ljo.115.2021.02.21.05.24.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 05:24:37 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org,
	sergiu.cuciurean@analog.com
Subject: [PATCH v4 01/02] staging: kpc2000: code style: match alignment with
 open parenthesis
Date: Sun, 21 Feb 2021 16:22:45 +0300
Message-Id: <20210221132246.1154-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YDJaHNsT9zta2up2@kroah.com>
References: <YDJaHNsT9zta2up2@kroah.com>
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
v4: Changed patch subject line, as suggested by Greg KH <gregkh@linuxfoundation.org>

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
