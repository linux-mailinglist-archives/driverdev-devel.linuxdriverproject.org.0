Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEEBD93BE
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 16:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9683F8780A;
	Wed, 16 Oct 2019 14:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3b27RMXvcmBZ; Wed, 16 Oct 2019 14:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A2E6877E7;
	Wed, 16 Oct 2019 14:25:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43AE41BF2BF
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4047D8772F
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NYw4T8uNGbh for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 14:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9229877BA
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 14:25:54 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q7so14827302pfh.8
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ujGILVS8EOVsDFzbe0iajn+DjkCITaKLgBibceQs4Qk=;
 b=a6bOoh9WX6DTprd6X00EX+6JfgBs7ui/aqTCQjRQtKjuicevk+q6uytkW0NbwJxVil
 cSBlwFT21oiOer9Khli6iBMoxHsCgyGRBpGjpJk+lxnhnrKW/ZqNrJhL9TEF3OvzcsFR
 4MQ15Eo/+o+PGv428dqqGP0V5khaisyqzTNF0ePtA5zZcOq4h2o+ArfnRMwqnyVgJgZ9
 GQKSOxEck+QcA6uHMJtr4lU8JpWTf3MEMjBXLCsmoDLa2SxUtFNM1kvXrDsValCbcDC9
 siH/D7L3PtTo1yqpzChH0dcb4/Ewf2aS6tyPau+NaSijx8sqvyai1t05WTVlsIi1VrC1
 nRMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ujGILVS8EOVsDFzbe0iajn+DjkCITaKLgBibceQs4Qk=;
 b=aW4cOg2CZGNz35OnLY0E7Fy1p+EpmGtYhgi4MAwcwYttBsLFiHfzzBg2qYuCkGWyOL
 UfZwPwlTmtpw/K0rjDj80vHXCPGavBz5e9jCv9iec0xT85YnD2s6iPxNovQ9sReAaGWk
 3smxmj04So/252F+RfNrRSANjS3IuCUGMf/PC1FcCPvptkwQpuUnl07lO+sTH+KRah2d
 hGqnRGzn0+ZorgpHlcF6pnReF4YvytW6+JQd0JnQhjtsIAZWnuT+wk51m/Lik3WvbDXj
 T8+OgSrtLkzjUEd0+LrPjHCRr5edLf3sgHcSaHcZNPQPBIFupvRE1bmqRbVs07QpIuGV
 g/tw==
X-Gm-Message-State: APjAAAUeBM3qeWZCWPxapDJBzhLIsmSpERUKgv3XBbX4GPu2LLRLjEfO
 2Jf8BJqAt6SW01VZ/QWCjT8=
X-Google-Smtp-Source: APXvYqxIYy2Qv9i2kyVFd/IvVJK02XNDYI0j0LNVdMEsCydz62Z+SlEJeTndXygi/WhaU4LEtTD7PA==
X-Received: by 2002:a63:3f86:: with SMTP id m128mr910929pga.404.1571235954263; 
 Wed, 16 Oct 2019 07:25:54 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id i1sm30371683pfg.2.2019.10.16.07.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 07:25:53 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: iio: ad9834: add a check for devm_clk_get
Date: Wed, 16 Oct 2019 22:25:40 +0800
Message-Id: <20191016142540.26450-1-hslester96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ad9834_probe misses a check for devm_clk_get and may cause problems.
Add a check like what ad9832 does to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 038d6732c3fd..23026978a5a5 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -417,6 +417,10 @@ static int ad9834_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 	mutex_init(&st->lock);
 	st->mclk = devm_clk_get(&spi->dev, NULL);
+	if (IS_ERR(st->mclk)) {
+		ret = PTR_ERR(st->mclk);
+		goto error_disable_reg;
+	}
 
 	ret = clk_prepare_enable(st->mclk);
 	if (ret) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
