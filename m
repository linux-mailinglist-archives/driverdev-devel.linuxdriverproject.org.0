Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF8368046
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 18:42:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D3EB20764;
	Sun, 14 Jul 2019 16:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocXPgSHE3smC; Sun, 14 Jul 2019 16:42:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 024672049C;
	Sun, 14 Jul 2019 16:42:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BF951BF40B
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:42:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BE1520467
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44iAKu-LsyHE for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 16:42:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 963DD20443
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 16:42:03 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id r6so9106582qtt.0
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 09:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=17NxJyOTQqneQKqILFL+Kfh800SL9vsxcwn5ys2+a/0=;
 b=azYm/S4FEqrQmVAbcBXUA6zpmF8+qsRMlb0Iw/3XhUBI11liAps/povLyoAK4mhhAO
 AYQcFmhCNtupDtAkM8O1WAPqT0Bc+Jqzmk3MT7a1+ZnQCvj9xY2JMvBs38Yhh+XOzzGf
 S32xdtCs1ZtfnwVGeXmzX+GOUIt4+4jN5O/Poo2fMrrJpoDg31kaKvA4C7JoMFycAYRO
 PpiA+gp/vyXUIoZ3Mr5wYktb3ROFHzUa6df8XB8hm+KYiXFXCdJAFLQqWrFCU1FzM1en
 6KY9Jc/K4Vsu4C1pe9/8vaWB9UiiFF0rmekTWiKb7TAtx5DNGHtSHeDIVurmpR8OpAmk
 INig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=17NxJyOTQqneQKqILFL+Kfh800SL9vsxcwn5ys2+a/0=;
 b=EuGzPIggILmib1GjCVac54oFIvDZZbocpJLpxsfdIRohtiMNVqaeGFnN/sTD6aXdnG
 nG6+fRM7L44ajBBOlWoR2+rxNJM9G2aC+kHNiDv35kGutlYlNny3BS2kW/pFFXV2r00A
 3/yNqPSU4z5Ary/ztuv7vEMWy9rScJXR+vuhzhyRbmr3WkrfcXDBmm4VkbBzBZ3MhepA
 D9Jtltpa5obo8vSyo67Bjcx5pVgMrEwjPFbNyFWDRAXpLfuUyViorRpwvXzmv3QgZxsf
 8D1Gn92T5jE+ruYzZP4d5WsYfARR3oWg3Bwf+z7xpGuS7MZz8mWU5qJLzZNYIhugEkdD
 bs2w==
X-Gm-Message-State: APjAAAWWT5VUfoKSFqhpd4pC1CtF9jeUeV+g65y9RxDdhCQdB5Vi3qP4
 +arMdrCy+dfmU10AjeYBHw==
X-Google-Smtp-Source: APXvYqzAUvUcaEQydKd/FSJDHy6MdU8Yh5n5z/RNVzU41mdnfWQLZBZNa5viueSs61UMYMViwDn4Lg==
X-Received: by 2002:ac8:2bdc:: with SMTP id n28mr14811226qtn.197.1563122522773; 
 Sun, 14 Jul 2019 09:42:02 -0700 (PDT)
Received: from localhost.localdomain (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.googlemail.com with ESMTPSA id h18sm5704034qkk.93.2019.07.14.09.42.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 09:42:02 -0700 (PDT)
From: Keyur Patel <iamkeyur96@gmail.com>
To: 
Subject: [PATCH v4] staging: most: Delete an error message for a failed memory
 allocation
Date: Sun, 14 Jul 2019 12:41:23 -0400
Message-Id: <20190714164126.3159-1-iamkeyur96@gmail.com>
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
 Eugeniu Rosca <erosca@de.adit-jv.com>, Keyur Patel <iamkeyur96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This error message for a failed memory allocation is redundant as 
kfifo_alloc just calls kmalloc_array without the __GFP_NOWARN flag,
already does a dump_stack().

Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
---
Changes in v4:
- change subject line
- improve commit description
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
