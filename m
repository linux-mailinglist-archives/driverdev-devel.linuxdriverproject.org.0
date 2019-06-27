Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA7B588DE
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 19:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5CF8862C9;
	Thu, 27 Jun 2019 17:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ME5IGXX0LsGN; Thu, 27 Jun 2019 17:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB31B85429;
	Thu, 27 Jun 2019 17:42:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B2871BF3F9
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0858C203FD
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ar4qXqOU6+yy for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 17:42:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B1C520106
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 17:42:17 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w24so1684285plp.2
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 10:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=a1PhA2Or6OPK8FK6GJ0xMKVx39nWfrgg8OZa9emN5gw=;
 b=LN7RT0XYk5lzaKtqIY6WCCGM5L0jtMOkSd2BNwWK1MTF3BQs2wBZxmE1B6srKD+All
 zW/VsiLSECzJSbsj/De6yZdOCw6igZtdrTR/K7uYS3Cjw3nj8t/yrWpxbWOVYRYS9H2A
 ZP1CixY3j3YhUbXFn/lmpWWO6w5ZRa27hPcvFaJxXag7NU0Ld5N4VVa9VNLuzJQWE9hx
 h21a41wMT10QWnHQbf2eLPNk+wRS3iTJ+xGYFyVR1BD/gAOZGswJz6rhc6KtWw1HoV9B
 DOP7mY/xrmiORWriXeZK1+VAB4GMVOHCS+k6aRgz4A6M17+Ah2EFSBBeFkhpfOZnMdO0
 l4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=a1PhA2Or6OPK8FK6GJ0xMKVx39nWfrgg8OZa9emN5gw=;
 b=Fg8Bc2nNOpryxn2hnyU4qhnHUct4zetOjQdOC0S1bLk+MrDJpE66EnMUyWbIOvC84e
 smjVTjPNy0dcympckYOrnzDccxlnx8ukpbDCMdkQFDRSeiOUv6YNRVAqZalUuVGe26V+
 GtOiR6oAVlKJkOPoA8usK75/3ysWGV2r+Wm32L1J1aynJbr9oniYTB+LRQI9P+zEST/W
 m+IGtQ2SQdvAXqmPCYqtI7qyekySDg/syJswIWkNgKQ3WNlJqARMS3ha4Pc+M76IT4d6
 69QCt8MvB+PNTHYKCWu1WtCrW7CAXEAKE3Vp5XH8t/uzGEpuKhAcHSognXL/2Afd4gfJ
 Ewbg==
X-Gm-Message-State: APjAAAVIBAChKqgSIVaGs3h74oWx2nFHqUNhEe0iyCbjDXTdJYm4DQM5
 +jM5IwumxeN5Vv1kjaWiFa8olYZBCAK0xQ==
X-Google-Smtp-Source: APXvYqyRTr6Xrl6LCdDDX1j2cfNbXCLG3l7lKFZl34Zkg/4yGCb7FtnMr0SFZ+DanxIianCIevQrJA==
X-Received: by 2002:a17:902:694a:: with SMTP id
 k10mr5937681plt.255.1561657336721; 
 Thu, 27 Jun 2019 10:42:16 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id b24sm3391850pfd.98.2019.06.27.10.42.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:42:16 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 50/87] rtl8712: replace kmalloc and memset with kzalloc
Date: Fri, 28 Jun 2019 01:42:08 +0800
Message-Id: <20190627174209.4616-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Fuqian Huang <huangfq.daxian@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kmalloc + memset(0) -> kzalloc

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 17dafeffd6f4..87024d6a465e 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -107,13 +107,11 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
 	INIT_LIST_HEAD(&pio_queue->processing);
 	INIT_LIST_HEAD(&pio_queue->pending);
 	spin_lock_init(&pio_queue->lock);
-	pio_queue->pallocated_free_ioreqs_buf = kmalloc(NUM_IOREQ *
+	pio_queue->pallocated_free_ioreqs_buf = kzalloc(NUM_IOREQ *
 						(sizeof(struct io_req)) + 4,
 						GFP_ATOMIC);
 	if ((pio_queue->pallocated_free_ioreqs_buf) == NULL)
 		goto alloc_io_queue_fail;
-	memset(pio_queue->pallocated_free_ioreqs_buf, 0,
-			(NUM_IOREQ * (sizeof(struct io_req)) + 4));
 	pio_queue->free_ioreqs_buf = pio_queue->pallocated_free_ioreqs_buf + 4
 			- ((addr_t)(pio_queue->pallocated_free_ioreqs_buf)
 			& 3);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
