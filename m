Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2430323C2
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 17:59:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D4C485310;
	Sun,  2 Jun 2019 15:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id akMyzcco+1vK; Sun,  2 Jun 2019 15:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 058A584854;
	Sun,  2 Jun 2019 15:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10FEB1BF282
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0CD3A849E2
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWTTWoYa5hZz for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 15:59:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 70EBC84854
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 15:59:18 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id j19so3110656qtr.12
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 08:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4D6xYVcx65ci50EYrgxQnh1AMljYTOBoiJu7xzeER1s=;
 b=unIx9W0jhTmqnG9YbWNxmFBYkYOu1c+99DsdX5RP0YBV10dmsAlSUWyUWQF/XW2vV3
 jfFGdxogecSbQd8quDfv12r8VwBhnX/pH6Ke6XEsellp7vonq3MRgJXKCVi2yVRneRrN
 rsyInvy4+oH/ch/G28xH8s8rdOmCVheirMaUx056OyphhsC/e5XeXevPeKDnqdWz0lUF
 BbvWRAcHPTDQAkRR7ZEaoOKskY3iyGLaAjG8sU0jX93kWCbE+GfhvJbnyJrk2Col+1we
 eeVBl4eQEoOoTgXzmcVZLxJis3AaLcF0iS82WHIjOECoDiNKprBGN3Rd1WnYDrGXAr+H
 YwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4D6xYVcx65ci50EYrgxQnh1AMljYTOBoiJu7xzeER1s=;
 b=dlJgQw76YNxWk/Z73kRZtHklW7dFYRsPo9tDznxrdlnuwl5a4Y8O/PiOpCoR4JSY5a
 wzp3bYfh3UEahA4ME+FZ7KEAF7KzkJhJbeSAIb/FEIx2AHS+BCgVa/U9RG1vypmXyJ0R
 KmnqE6iWhlAFeBjpwHcjk3e7oD8EdAJZnHy2EzTe/24uSVbhMSsxPKQ7jMyNPqeBMdr1
 3ofqW8Y3/bkrqquPwvgtwKxsDnByOmLSAC2UcS2ceyw69tACLT3ZHHPVPjYAGm8ktxul
 xIpNvmaQsd/86K2RaIZTjJGuUdSRVsIC1sYfAP0vBKlweoHx5JnmgFP6/Bw1BxYZxiKr
 yrOA==
X-Gm-Message-State: APjAAAWSHrk6CP3fcCtRenabKMXRLuXiW8+yYBOVqjKAL4zTkyp5XTBH
 UkplFFBCd40jgap+oWl7//C2YsDi0FI=
X-Google-Smtp-Source: APXvYqzxm+ZYCf86Q6YFFaOaPrlJLDQeGGr8n2GIrsIyvcINgZRGq20pyTD/qQqEJ3UdQfn1v3RPKw==
X-Received: by 2002:ac8:7381:: with SMTP id t1mr19772251qtp.387.1559491157557; 
 Sun, 02 Jun 2019 08:59:17 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n7sm7378589qkd.53.2019.06.02.08.59.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 08:59:17 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: kpc2000: kpc_spi: column-align switch and
 subordinate cases
Date: Sun,  2 Jun 2019 15:58:34 +0000
Message-Id: <8a940c89d43ca59bb4c70100cf1b33529501ff5b.1559488571.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559488571.git.gneukum1@gmail.com>
References: <cover.1559488571.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Mao Wenan <maowenan@huawei.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The linux style guide prescribes that switch statements and their
subordinate case labels should be column-aligned rather than
double-indenting the case label. Make kpc2000_spi.c follow the desired
style with respect to switch/case alignment.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index ef7e062bf52c..13c4651e1fac 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -502,13 +502,13 @@ kp_spi_probe(struct platform_device *pldev)
 	}
 
 	switch ((drvdata->card_id & 0xFFFF0000) >> 16){
-		case PCI_DEVICE_ID_DAKTRONICS_KADOKA_P2KR0:
-			NEW_SPI_DEVICE_FROM_BOARD_INFO_TABLE(p2kr0_board_info);
-			break;
-		default:
-			dev_err(&pldev->dev, "Unknown hardware, cant know what partition table to use!\n");
-			goto free_master;
-			break;
+	case PCI_DEVICE_ID_DAKTRONICS_KADOKA_P2KR0:
+		NEW_SPI_DEVICE_FROM_BOARD_INFO_TABLE(p2kr0_board_info);
+		break;
+	default:
+		dev_err(&pldev->dev, "Unknown hardware, cant know what partition table to use!\n");
+		goto free_master;
+		break;
 	}
 
 	return status;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
