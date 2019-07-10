Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AA664AA3
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 18:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 157A587E5D;
	Wed, 10 Jul 2019 16:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6yK7J7sCHwW; Wed, 10 Jul 2019 16:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 736D487A1D;
	Wed, 10 Jul 2019 16:20:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60ACF1BF3F3
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 16:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58BB287E41
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 16:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id itqI5SZq4j82 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 16:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4C6287A1D
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 16:20:33 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id g18so2362521qkl.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 09:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QibyFGWnGdatOh5nsBNwpo+J2I04tbVTYJ/VYtxRgmY=;
 b=T4+Fnl7gXl1bl8llcUm3/9pqHh0ZYkmBG6TpVmEq6dIxAwEVcCJQYVUOULCPceUcP9
 1Jl0GyE7nKC6qh7eInjKVNdp+cGBk0t7j4n1/wgmJUYQUC0XAWqXhPWe0Gf3lBL3dsRI
 djqj0npByspo8KYXIBmm3hkfHblagArY9vZMISTbJgrOpLWTZMz4aYcy1RXorOgbomym
 gcuyshTAhmEsFg1JtVem18bXWhof2PEtVztmnuTKNaQiS2ph3cy5u6X5iqju6l0mkp8O
 uTjjNrHc0Lb/zF4Q3ZjfHrrjfUKjo+xIEyTLFLT5Cdrd/yQFocMMWb22PFKKxOCMZkeB
 3hxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QibyFGWnGdatOh5nsBNwpo+J2I04tbVTYJ/VYtxRgmY=;
 b=mfhuuh9+cyirQLFfQ0iyt01nRqHLwaeDjZRrB7G+5raFF6GX7BX9DZzsdIOygwmQPk
 PljkqjPgfgoolTcom2o3DWXf8Vm0NI2yx6X/lpm92EtNX6LYzQvkUw0bhefuub2EeRn0
 RQ0N8E2RU659nA9xvc0j195twTBIKim9WMrC1bEaoZpCaMXy+HUGWs1ZLabHu9BddGAs
 kEclPmf9qSrh+V/1/wi4BxafafczU4JW8FCuU1sJkKkByqTshmcGts6cxg/cnv0YogXn
 zaTHShwlXqgqLjMnC1TXJKeJKNcB1ehgrf0fMBZE7UAmwdz6zMsCroqH659FgBJWqkTM
 s2uw==
X-Gm-Message-State: APjAAAXTPb1cjXzwcBDwFfdIWrbPtJaZrRvhdWB59ZNZxXPSRVjnFuVO
 8S0y03xftL4yZo3YDfIMJA==
X-Google-Smtp-Source: APXvYqxVssmy8QQI7rLDeD1eZVdZ4DW7d8qWxdxiaMn/YNYrzpr6p+bYlVuIkxf22mrsNYDvJMmv7Q==
X-Received: by 2002:a37:4c4e:: with SMTP id z75mr24407869qka.230.1562775632730; 
 Wed, 10 Jul 2019 09:20:32 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id 6sm1546208qkp.82.2019.07.10.09.20.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 09:20:32 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH] staging: greybus: add logging statement when kfifo_alloc fails
Date: Wed, 10 Jul 2019 08:20:17 -0400
Message-Id: <20190710122018.2250-1-iamkeyur96@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, David Lin <dtwlin@gmail.com>,
 greybus-dev@lists.linaro.org, linux-kernel@vger.kernel.org,
 iamkeyur96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added missing logging statement when kfifo_alloc fails, to improve
debugging.

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
---
 drivers/staging/greybus/uart.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index b3bffe91ae99..86a395ae177d 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -856,8 +856,10 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
 
 	retval = kfifo_alloc(&gb_tty->write_fifo, GB_UART_WRITE_FIFO_SIZE,
 			     GFP_KERNEL);
-	if (retval)
+	if (retval) {
+		pr_err("kfifo_alloc failed\n");
 		goto exit_buf_free;
+	}
 
 	gb_tty->credits = GB_UART_FIRMWARE_CREDITS;
 	init_completion(&gb_tty->credits_complete);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
