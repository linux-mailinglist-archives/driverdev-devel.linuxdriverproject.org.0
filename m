Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E99021CD3
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 19:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 271CB87A52;
	Fri, 17 May 2019 17:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D08iJG6ZtKxW; Fri, 17 May 2019 17:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EA9C8793F;
	Fri, 17 May 2019 17:50:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F302C1BF5A6
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFACB8826E
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gpqnxZA8+crc for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 17:50:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9E3588540
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 17:50:16 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id s17so8050798wru.3
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 10:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GnGykp5Yn5rW4hdUevVwgljZDVqoV+UL5T4XcxLWCIc=;
 b=klDhtl4CJf1psnh/c2+l/6BzjS93ozGSoz7AP3U++ORtk1Z2vad4jZWJtqwD4+qNZ/
 MsayuMNy/3ZLDla/F23G2/N5ti2xW6ULKKuSueztxLYoAbk9HXqE1Y3r4bEMVRCGOC58
 OJsAjy1c0OHSuhPqRTG//+ufjeTHTfzkU+TZ4LCkDGDgCm7mGmd8ZlLHJWxZGSnXoRAU
 z9ickbU7VUOFt+U7MkEjNg+lIVs0TwYkSxNdnPMSSYBJYhWebevWheSgUoLHSWvweiVg
 UcWCQ04r1zOLopAx5sCG0H2X8IJs2M7ND4Sbr4sKxF2aqDvVmSIDcxwUgxvr273p0HRc
 IY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GnGykp5Yn5rW4hdUevVwgljZDVqoV+UL5T4XcxLWCIc=;
 b=RiWoSipo3LbZPTvMhB3pLnGSwlYMhRhobkFko9Ka29BP3EODAZHLtyU/fvZTXOUcnP
 +zsH8XgF/k+MI+0yuIhX9PA1GxWdyaZE3IB4qDFTwXKKSimOSKeIVAtC21BB7pjkN+vM
 E4mRzfqy2pyE6A/cEa/Xs8XBBuYKTwWf69vnsEB1Gz0b97nH2KCsjjOBPJ3FFqQjjGYY
 qm+yVvpBbIFCEZ/p64yPvXrA5KfOyQ3GH3hM3J4yPEfOtiUloOLuMyUeFQzhHzHbhR2H
 IRsV0QbdDp0fWwsEjgju2baAZXSbXh2jpqyPGqqs6HTSvvCgOpAHwljB/slUFaWjWK6m
 IZvA==
X-Gm-Message-State: APjAAAVTnjIeZW/Qsy9I/dB7Oc+wH1uWUNc/CRfYOGakhbJ6eZAgQ5XV
 kWS9FM1xHBxM1Wtxk63L+Hc=
X-Google-Smtp-Source: APXvYqyQVKmFd6NMtANlYq+ucinAnbLCuWhETsvswPd+OxYzYWt3A6qN9YAQNbcjFpbgwXyp07+QuA==
X-Received: by 2002:adf:e288:: with SMTP id v8mr6634699wri.7.1558115415197;
 Fri, 17 May 2019 10:50:15 -0700 (PDT)
Received: from luna.home (2.154.17.217.dyn.user.ono.com. [2.154.17.217])
 by smtp.gmail.com with ESMTPSA id b2sm9286379wrt.20.2019.05.17.10.50.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 17 May 2019 10:50:14 -0700 (PDT)
From: Oscar Gomez Fuente <oscargomezf@gmail.com>
To: oscargomezf@gmail.com
Subject: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
Date: Fri, 17 May 2019 19:49:56 +0200
Message-Id: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
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

These changes solve a warning realated to an incorrect type inilizer in the function
fieldbus_poll.

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
