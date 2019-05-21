Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F66251C8
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:20:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDA5586AF9;
	Tue, 21 May 2019 14:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b196xTmkDNzF; Tue, 21 May 2019 14:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3EFB8609C;
	Tue, 21 May 2019 14:20:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B0001BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 977C285F71
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6aSSS4DQibt for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85DC584506
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:20:14 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id e19so14087843iob.3
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Q1andz6G42MN5WlN0t4f5hbDfxStL/K8hK98k6OKJJY=;
 b=CHC4PF3M62d4QI3/P8InHsH6i0+ClTgutpCwfaKLG8+dJl/qduMVqN9ejzBNghDbkT
 1NKgFXga6yUkQNXyD886S4IF35e9jN38JqF9Lzp7Q1d0hVipIcBF6JQP+1IYyD6h/TmB
 BA5iZ0/7JonUSrN6MoXVbxoJS/g6vK8x3SC7g4D91DRp2HRsNCtoIz0sqKtgNLFuDiTl
 5DN5cKYpnvPQV+J2kFINli0EsbxkHjsX+7CKUy3BO7DW9IfKDyrdep0KJdLq5iADCZTJ
 kB1AlRtMP3WmjQwKAnSAevh1ABM5fWeNB0AINYkZ8ioEQ21yaLKZoZ8hzGSay0320AkN
 Uoug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Q1andz6G42MN5WlN0t4f5hbDfxStL/K8hK98k6OKJJY=;
 b=oAwh9b+uDpqx6h8qQyjEd0XHGWq1XwdCXFEjMd73P0jF+mpgKmsif5kE6eojS5HyQW
 AMKeztlPWVjv+Mj3Bm5dh1XuJ+D1xCVkYLw5SmAAOCzNTW3qN2mAqPCVUf2+tAsfCCJB
 F2rWndo4JG3pvnUhSagFIBNssoVbOcKC29T4xA94WLSERtoMPt9DmCLnALCDcC7BGcGi
 HeIuQfM5+aP0+8jpWKl3r8cv9s3FLxwzT9vxKv2LbMwuAtLXe1jTcJVA1/KOzcsO/MhJ
 Fs2xAonO0MJmRcXzqw8e/MfollJQCyHX2Yd5dSkKFIbdENTMC+psKO/bEQvb0mxF5mL2
 JN+A==
X-Gm-Message-State: APjAAAWcPZBvfgRQyqsIb912NtAZHFPLvcLviGrdonVKI0Sw9HNMMbq+
 zTi6+ks7/FNfNwM+GIuTCOE=
X-Google-Smtp-Source: APXvYqwtyHGX8IC/jfGZ0uUS4Gi8VVwcgEcNozPhlks5OV9EXtD3UwdiNBncn/2q/asawtGzu4vfXA==
X-Received: by 2002:a6b:f70b:: with SMTP id k11mr3587023iog.148.1558448413605; 
 Tue, 21 May 2019 07:20:13 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id u5sm4393045iob.7.2019.05.21.07.20.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 07:20:13 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Oscar Gomez Fuente <oscargomezf@gmail.com>
Subject: [PATCH v3] staging: fieldbus: core: fix ->poll() annotation
Date: Tue, 21 May 2019 10:20:09 -0400
Message-Id: <20190521142009.7331-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Oscar Gomez Fuente <oscargomezf@gmail.com>

->poll() functions should return __poll_t, but the fieldbus
core's poll() does not. This generates a sparse warning.

Fix the ->poll() return value, and use recommended __poll_t
constants (EPOLLxxx).

Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>
---
 drivers/staging/fieldbus/dev_core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
index 60b85140675a..f6f5b92ba914 100644
--- a/drivers/staging/fieldbus/dev_core.c
+++ b/drivers/staging/fieldbus/dev_core.c
@@ -211,16 +211,16 @@ static ssize_t fieldbus_write(struct file *filp, const char __user *buf,
 	return fbdev->write_area(fbdev, buf, size, offset);
 }
 
-static unsigned int fieldbus_poll(struct file *filp, poll_table *wait)
+static __poll_t fieldbus_poll(struct file *filp, poll_table *wait)
 {
 	struct fb_open_file *of = filp->private_data;
 	struct fieldbus_dev *fbdev = of->fbdev;
-	unsigned int mask = POLLIN | POLLRDNORM | POLLOUT | POLLWRNORM;
+	__poll_t mask = EPOLLIN | EPOLLRDNORM | EPOLLOUT | EPOLLWRNORM;
 
 	poll_wait(filp, &fbdev->dc_wq, wait);
 	/* data changed ? */
 	if (fbdev->dc_event != of->dc_event)
-		mask |= POLLPRI | POLLERR;
+		mask |= EPOLLPRI | EPOLLERR;
 	return mask;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
