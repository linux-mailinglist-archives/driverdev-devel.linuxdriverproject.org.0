Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC89B88FD
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 03:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28978847BE;
	Fri, 20 Sep 2019 01:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCa6UUR9kUpy; Fri, 20 Sep 2019 01:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0471F8168A;
	Fri, 20 Sep 2019 01:43:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FCFB1BF2C4
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 01:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24D0384E27
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 01:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3tnvraNEh80 for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 01:43:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B1B784CEC
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 01:43:12 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id v2so12420284iob.10
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 18:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ciGUDPl4daxVTPCSsv9JO87yt3PVdb6Zm3OOVvC6yPw=;
 b=tHOjNklAaMJ6NaXT9aZYxw9+scfwAUKAZkp3KFY/qY9PL0cWS6H2mZ72aJNKB+9AdW
 Skh3k1tUMEjj7V542VW/vmcoqXXJvHvmVgCI6G0twt8kxYuf3Kq2ER/4X/JQlJRtHvch
 14cHBKpejuibxfpOLBbz0fXdZWK+adNvMEEtjMkMRwbUaFEjOwWbULoz8YZBvSHyPL+i
 KJRTtaMREB5a8QvQyKfA3UwQdCZbaP5VZSkPrsNApq06G/11D2GjzuGOVgGC6Dxl7pJt
 A6Jr+ttIusT+/JAGE3DMji+lcZIT6NzpV6uk1gYrqbtpZCLnByOedz2fQpMQ77Iml8f0
 gJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ciGUDPl4daxVTPCSsv9JO87yt3PVdb6Zm3OOVvC6yPw=;
 b=e5/Jx61nxD7OQq4PrroBaqxYr8Rafj31gEJeGN4KCJ5/qa6y9pjwKJ23XHGmbGMNPA
 mh4O5lnGoUnMp1sRjwEXnI6782N9zqlOEXQhsUkNYYVvV3FNrJZyeQ9wEQX5U3hdX6C6
 sD5jelf45N0UO4guwOqIqG64mgMs3cKng2LwGmkBMomKuLHHG4dryBoUJAmmAvijeEMm
 dUvvVWSwu/PgCWTO0JBuAVNe/VBdPZ75iRvqRZuvzKf+V07HBymeYivnp8GV4tsl3eCy
 j/4G1VKusvMmfqSkrccfRlRfWF9fKTLkMqrIurucPAkbazx3S6/rvjvsCLfYn4Qb51zV
 QdjA==
X-Gm-Message-State: APjAAAVEk9dD//CXCAxTctyIZupWi2uwGKgDUOuUNLNX3XDqDc6SvGdx
 Psx+IaWJqh+Mh9l5kbTX7Yc=
X-Google-Smtp-Source: APXvYqzrJplgeDGnDv+YsfxegTmSD0ca0oxceB/4Ln3i+aNIWuJYflVNMHIupY8vP5Drd6YWbJ1FKA==
X-Received: by 2002:a02:2e54:: with SMTP id u20mr16570286jae.5.1568943791641; 
 Thu, 19 Sep 2019 18:43:11 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id q3sm380180ioi.68.2019.09.19.18.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 18:43:11 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] staging: rtl8192u: release memory on error path
Date: Thu, 19 Sep 2019 20:42:54 -0500
Message-Id: <20190920014303.31410-1-navid.emamdoost@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, emamd001@umn.edu,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In rtl819xU_tx_cmd if usb_submit_urb fails the allocated memories should
be released.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index fe1f279ca368..401561705d9d 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1232,6 +1232,8 @@ short rtl819xU_tx_cmd(struct net_device *dev, struct sk_buff *skb)
 		return 0;
 
 	DMESGE("Error TX CMD URB, error %d", status);
+	dev_kfree_skb(skb);
+	usb_free_urb(tx_urb);
 	return -1;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
