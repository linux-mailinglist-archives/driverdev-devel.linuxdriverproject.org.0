Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 644D921C09
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 18:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 999E486AD8;
	Fri, 17 May 2019 16:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obs-CFL95LYl; Fri, 17 May 2019 16:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 631B986968;
	Fri, 17 May 2019 16:53:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79D051BF5A7
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 16:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BFA0B858DA
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 16:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KCxCpNSsvuKT for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 16:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9822A8564D
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 16:53:19 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id r7so7808524wrr.13
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 09:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eOFVUmpMlxT1rgTfcNFqTqJD4K4q18GK946ds9N3qFU=;
 b=dsmBerrW0KEWYy8Sd4HFLOergaCVUedn0iM/0tpAMDcku9/23tuGzzqYbJXeCQvMPA
 jvaYH1a7anzSWWcy+3m7pYYf936uN+DbiE6uMFJIc4GJOOwJ2uCiALJYsRk3R4XEUC2A
 TX8nC83r+ypCSkA0txqWgOLXwT1yoTIY3rvXmw2bocEOPYR2RKNV7L9b9LfIVEloV6Nb
 Pl63NU9wi2nEej7cLLykKKZ8Ar1Ty1c0L4JnXRSRp5Jd9qpv+e0EXAKoPiGUwMx8ICWu
 ofnh+RwSqw9Mi5cr7fqVUUYrMqviHPyvzg9+MxNN7x9NFCsYb/ijwltwIlTIlcofguV1
 nl6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eOFVUmpMlxT1rgTfcNFqTqJD4K4q18GK946ds9N3qFU=;
 b=AawYjx8kAvIrnT/0yVZLrFPVBDF8MG8R39ADqcm1JrgV7KK5r/ZTGD787H5ZuNEAUt
 BmvYKPkAVlzED/y24EZXmTFHQ4dV8XkTeXnxjq4trNe7TzrL4+nMZYa8sE61bd5aY797
 vR1mEYsSZoF3k5AsnGUSFP+4+2PProL5MEep8JJ/Gs6pnWjCtw1+bDrV+9ox92QYmYA9
 j5zqaXpiOcJZafkKtzug8LwsMLzI89EK/56BmR5486mlJK+coANGd3u84ryvVVM+YKRQ
 NO+XaWKpUqJt2CzNl1/MH41459K8AoAVKhb1ZzGObK2QuuukDuvxg9JsmL1220yzmbGT
 iTLw==
X-Gm-Message-State: APjAAAWnM0Y83nbK9Wk0QBkc6qhiuo31zbD7xNDBJVYDCyC+RjmiwPoR
 dNdvs1fxKAvEeB9yurHc4ww=
X-Google-Smtp-Source: APXvYqxzwPBkio6lC+ydvkXLCUu+2O2QUexsyscQ50xgHeMpsARvymCIsU28JwUsJd9FhtdDJzY2jA==
X-Received: by 2002:adf:e344:: with SMTP id n4mr12363332wrj.192.1558111997983; 
 Fri, 17 May 2019 09:53:17 -0700 (PDT)
Received: from luna.home (2.154.17.217.dyn.user.ono.com. [2.154.17.217])
 by smtp.gmail.com with ESMTPSA id w185sm12701690wma.39.2019.05.17.09.53.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 17 May 2019 09:53:16 -0700 (PDT)
From: Oscar Gomez Fuente <oscargomezf@gmail.com>
To: oscargomezf@gmail.com
Subject: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
Date: Fri, 17 May 2019 18:53:11 +0200
Message-Id: <1558111991-30751-1-git-send-email-oscargomezf@gmail.com>
X-Mailer: git-send-email 2.7.4
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
 linux-kernel@vger.kernel.org, thesven73@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>
---
 drivers/staging/fieldbus/dev_core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
index 60b851406..f6f5b92 100644
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
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
