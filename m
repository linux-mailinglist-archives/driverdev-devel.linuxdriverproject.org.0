Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC4A67F87
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 17:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 381BE864FB;
	Sun, 14 Jul 2019 15:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSOfCAABoWzV; Sun, 14 Jul 2019 15:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B18E5863D0;
	Sun, 14 Jul 2019 15:06:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBEBD1BF349
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 15:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B8F6E2049F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 15:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rl0zSb50zWVt for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 15:05:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B97E203B9
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 15:05:59 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id a15so13121941qtn.7
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 08:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GY7ijCnNWcBvJMmPhDv2XxWebBv+To4DFqmhVG/7aUM=;
 b=jTWAvb0fl37zIZkVPv1RAR37KIV/mp/d6+o0pxsEi87doRmhLwRcCsDVYBrxcHIpGo
 fNg19AmqP4Qr53oDVXkbQw5aTUfzm+2y+YGfGD2WIAIsOuex6Kxa7aGAkCLqP2wv/d1i
 DcYGC9dhxirto1kBpmhE2jbBfYqayG5RgdhhITSXv1EsIJ2gLy+3PDHvvxVpUWCchFp0
 Wwq2KuAdlc175fk+9yhVfnTtxiR6g1AwFbqr5gIIgFHLYmTr0i4Gg438f5wuTSCej7s+
 cj6gTyotLJ6kuwqdZgT0fZtH4aGAfUt59OFTirl/UMZzMBD3XZI12c38esrAdKdbiwL4
 do3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GY7ijCnNWcBvJMmPhDv2XxWebBv+To4DFqmhVG/7aUM=;
 b=gmH7R05wwPWpeTh0F2Sf/sO9IDOT+DVCnR6OrXtCGFo6Ro9n5usMrkd2GnDOAF9Cst
 kmjvAP06HUK9V/LcQcKBURhMz1U2cbzFyTNd+EImX16PbJhA/O6eBG+ur5Sf08g5w0NI
 0bVdkJ9xLC2GWMvLuh05vMhZBYV/GMbo1z68LpfGxLTOfzmKabSiC3eI8EzSuGZ0KJ6X
 jiuFyu2vUM79meVXiIHe0fAWSivormWdp6dUh5KCgX1LZ26Wqb7I8QYmRH9ffWOr3mhh
 MxKXVtCfLGoKtMBhxf1/a43tizzbgfPZO+vPK8MYa2nSyP9w4jU9jJY8tgysCf8Ox8nn
 djDw==
X-Gm-Message-State: APjAAAWT0fzFi0R+s3F9zD5eXwewos/cOlQMXH7IDM8oc9QKt3j38/qu
 WnmG6jZNvcgCAHU8OudZ+Q==
X-Google-Smtp-Source: APXvYqysavumyVN2h4oAbEKhfcef9Kl5JjN5h4k30a9tgMEjAuaX67r3+aXdh2jYd7NuYskVJagNGA==
X-Received: by 2002:a05:6214:185:: with SMTP id
 q5mr14837425qvr.213.1563116758160; 
 Sun, 14 Jul 2019 08:05:58 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id o18sm8973139qtb.53.2019.07.14.08.05.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 08:05:57 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH v4] staging: most: remove redundant print statement when
 kfifo_alloc fails
Date: Sun, 14 Jul 2019 11:05:43 -0400
Message-Id: <20190714150546.31836-1-iamkeyur96@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711175055.25157-1-iamkeyur96@gmail.com>
References: <20190711175055.25157-1-iamkeyur96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, markus.elfring@web.de,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Keyur Patel <iamkeyur96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This print statement is redundant as kfifo_alloc just calls kmalloc_array
without the __GFP_NOWARN flag, already does a dump_stack().

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
---
Changes in v3:
- fix checkpatch warning

 drivers/staging/most/cdev/cdev.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index d0cc0b746107..724d098aeef0 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -463,10 +463,8 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	spin_lock_init(&c->unlink);
 	INIT_KFIFO(c->fifo);
 	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
-	if (retval) {
-		pr_info("failed to alloc channel kfifo");
+	if (retval)
 		goto err_del_cdev_and_free_channel;
-	}
 	init_waitqueue_head(&c->wq);
 	mutex_init(&c->io_mutex);
 	spin_lock_irqsave(&ch_list_lock, cl_flags);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
