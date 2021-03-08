Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FA331168
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F072883638;
	Mon,  8 Mar 2021 14:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZNNPuJJA806; Mon,  8 Mar 2021 14:56:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2829583689;
	Mon,  8 Mar 2021 14:56:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF6C91BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB48244C77
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EfrZMk7f9SYH for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7718447DA
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:32 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id b7so15144245edz.8
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uperHqgKyTc1tpYFKXo+RhHx7BCtYMzrCs+Kkh1SsV0=;
 b=T9sWtAkX09RPxJYmWpMCkyvO0N9nQhxGEbDn+KEDTS5nEV/YHef85lYvq0w1BvgYOj
 7Z9g4YSYGA3M5uD4ee8zRrJS9MdhHO/Z+2WhBhgLgrEB8obKsVzl9NGILu5WmrvKd7YF
 5giXgpANgiUclo4RXurDAkMT7Fz4xAx1ZZWgsF8d5DG2D/1wZ3rSCQSWbyu7My+Hp4K7
 F/UZE5Ji01pJtmWBi2V8h4TeIGOGPA4FE81paGKhmeDUA+tHnl7EF1EL6OXMP+JG6LF3
 ukjBnNMeFDtaPoQL/UESzW4N40gp1/fGdaFLccqiWHnh3VYxy2qwlW7UPxcQ8Otvhx0G
 fL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uperHqgKyTc1tpYFKXo+RhHx7BCtYMzrCs+Kkh1SsV0=;
 b=qRXeK7qWbeoeuCQQkFQxX3oRbiZfH2yZPQ+tG6pK6Ettsh7MLhxKzCyc/dBptMlHAr
 CwIXoBl7phOuuhyTAUk38gqJ2FsRxBkHwkOonJjPohtwNT+M5dgedEAfIVDccTXrZy3B
 mWRwP/P1ZuLOdfjX0CsNFRUJvIaDi5DSTCrd/hII814ksWELWcr9RzBAiE5uTq1F3IBr
 0bq4weD25XH7F8m+Or8FDsekYzOzfdne2VPRTfTY5dcKEhPDFWgsdNv4iMXhbdJUeXev
 iFzs9PKYtq41ZICrl948h9NK2zBET3HALmO0IKSG5lI67ic4izf9VrOR5QF6mM9K2R6T
 1cjQ==
X-Gm-Message-State: AOAM530XWZ40XupPiQ8npD/Wr9jERIGTU8Ok0kuQ+NG3D11o7LBXoXXy
 8JR/h1Jn9w6Jw/wNKtlfc9VsDw==
X-Google-Smtp-Source: ABdhPJwPaZ3uD6Lhos/UbjXVxJWzoRqv4+WWiUx4IoveJlUHtsMTopNWyUeqtN/pd3JKBlgRsTvxgg==
X-Received: by 2002:aa7:d54a:: with SMTP id u10mr22811140edr.316.1615215331116; 
 Mon, 08 Mar 2021 06:55:31 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:30 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 04/10] spi: spi-sh: replace 'delay_usecs' with 'delay.value'
 in pr_debug
Date: Mon,  8 Mar 2021 16:54:56 +0200
Message-Id: <20210308145502.1075689-5-aardelean@deviqon.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308145502.1075689-1-aardelean@deviqon.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
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
Cc: thierry.reding@gmail.com, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, jonathanh@nvidia.com, broonie@kernel.org,
 ldewangan@nvidia.com, Alexandru Ardelean <aardelean@deviqon.com>,
 vireshk@kernel.org, f.fainelli@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The 'delay_usecs' field is going away. The replacement for it is the
'delay' field. So, we should print the 'delay.value' value instead.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi-sh.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-sh.c b/drivers/spi/spi-sh.c
index 15123a8f41e1..45f304935332 100644
--- a/drivers/spi/spi-sh.c
+++ b/drivers/spi/spi-sh.c
@@ -290,8 +290,8 @@ static void spi_sh_work(struct work_struct *work)
 		list_for_each_entry(t, &mesg->transfers, transfer_list) {
 			pr_debug("tx_buf = %p, rx_buf = %p\n",
 					t->tx_buf, t->rx_buf);
-			pr_debug("len = %d, delay_usecs = %d\n",
-					t->len, t->delay_usecs);
+			pr_debug("len = %d, delay.value = %d\n",
+					t->len, t->delay.value);
 
 			if (t->tx_buf) {
 				ret = spi_sh_send(ss, mesg, t);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
