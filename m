Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF5FF1D22
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 19:08:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 872EE8A4C5;
	Wed,  6 Nov 2019 18:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kr22AyserGUJ; Wed,  6 Nov 2019 18:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A57A28A4CB;
	Wed,  6 Nov 2019 18:08:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19F9A1BF3FB
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 18:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E63F229A3
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 18:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YbkXc7qzkj3W for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 18:08:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 314EF2040D
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 18:08:26 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z19so4550912wmk.3
 for <devel@driverdev.osuosl.org>; Wed, 06 Nov 2019 10:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=cVA3ojoMayojArPu9Gh/2YoITHbex8XdUTujKyZfWtY=;
 b=WxrOEeJz+7OuD/TKj7FwbneNc2D5nUN7+ILNR6kXTNqCJAlZZg7mGVk8ji8MLzoo8m
 O2Gfdyox2urQt8gd8bX4+W6QNvlVBZl22E9e9tooGm4I+ECEgv6DVvgt/tpGlY9AxHqO
 dS1qXlFt/it6MRK3J2C3JUkFKtgwH3WM8tkpuJZFnRvVyeSzho7QW1OKf/zewwJDzJ+J
 FlfqcyjOVHjpsFhw2vzk0vyiLIYKVZqPLOyBFkbesivIh0IiGd/WdaCi2syrBkgA3d8V
 nVSozlfmTQxH0wusPHtJ0QAflZh60hRfB5HoCHluD3r+DEtH5zHMsU83R3BJi9e+y4Gq
 Fo9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=cVA3ojoMayojArPu9Gh/2YoITHbex8XdUTujKyZfWtY=;
 b=o5T8qGPYzRPUWyJ+e9sO/WpsYots/M5sJSBb/W20Oxt2vBfI6mPgFZTp6N5XiQWIM7
 FiwyEM4VbQc0hUvWoNls2X8gNpVTpQO7axuaBVoY0O22QJJXYM48C9hndc7bor7AwOWv
 x6yWS7ArSm6BnVt3QjNd3mdgebi4EO4/lfDY8vKSGw0LU5x0Fx6pvPaz6TWTLkkQIYiz
 9DDCObsNVrz2iyLlvnrsxmzj43anKkqw9H+wtp356yLxdwahZL4nulK+Lkn16Kq1gSnK
 oPqvZB1K4G9/UJb8vYA4E8ESS2MRuXeYp0o3EaK6221uUK0jYX4I0bfH5qCZg9fmq8pU
 X0sw==
X-Gm-Message-State: APjAAAXQUZgwdhX+YGqPCIP4vpQHDIV21vcIU0EJsGXhxp9QWRe9re74
 aqRzQIHgm/iPFIIH0yRh+cw=
X-Google-Smtp-Source: APXvYqxSMF2eRPwTv0eQ5FKW3RFBRiVRV9vq8rjV/hurZAuYWjnOeFlYWCnmNHiMS7zOT0YsnfncmA==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr3876039wmg.45.1573063704533;
 Wed, 06 Nov 2019 10:08:24 -0800 (PST)
Received: from hwsrv-485799.hostwindsdns.com ([2a0d:7c40:3000:11f::2])
 by smtp.gmail.com with ESMTPSA id g5sm3494080wma.43.2019.11.06.10.08.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 10:08:23 -0800 (PST)
Date: Wed, 6 Nov 2019 18:08:21 +0000
From: Valery Ivanov <ivalery111@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org
Subject: [PATCH] staging: gasket: gasket_ioctl: Remove unnecessary
 line-breaks in funtion signature
Message-ID: <20191106180821.GA19385@hwsrv-485799.hostwindsdns.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

	This patch fix the function signature for trace_gasket_ioctl_page_table_data
	to avoid the checkpatch.pl warning:

		CHECK: Lines should not end with a '('

Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 240f9bb..55cb6b1 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -54,9 +54,10 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	ibuf.size = gasket_page_table_num_entries(
 		gasket_dev->page_table[ibuf.page_table_index]);
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index,
+					   ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
 		return -EFAULT;
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
