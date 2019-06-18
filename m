Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E705E4A87A
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 19:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FE1287A1D;
	Tue, 18 Jun 2019 17:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OiHDXLWtWW2N; Tue, 18 Jun 2019 17:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBFB3868E7;
	Tue, 18 Jun 2019 17:33:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 370B51BF5AA
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 17:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2BA968506A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 17:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFzJ_Jgvov59 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 17:33:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B7ED785065
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:33:11 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id m30so8053261pff.8
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 10:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+2YaykVn++bx3Y+KHfNzRgksUkYd1b1acyBCPmK1ESg=;
 b=nP9AQBSFgnWkiOmTl5JuSjlUIjru21cKetedkVCknU4uibtUwP8x3JBiF+KIaUmF9i
 MWD6RVEFFdb5jDE+htDOk8e6og5Zmse54tZaqA8IHb4BFz3VlJoFyi0tzcaU2my3XO4D
 Gfu4u3ZklbxntrED5I0pvVQYoARSj3MScZpEQre325s9DLcXh8SUSy16XAn9rvKRTABh
 m4cElPAUa+T0t5p4uMGhErlTMBjHfgVBt/BR5tOQKiTFW+WcvZQHy1LtaUwUZcfnpEPi
 THeUpF3Eelz+9+3p7Mp76VSdJ3fdhTLBJccKS+bHNy8upBr+MOJZHKLr+pyMyafTO/Ak
 r6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+2YaykVn++bx3Y+KHfNzRgksUkYd1b1acyBCPmK1ESg=;
 b=J35Da+Sa313Zjtf1LUp7TPyIhcxC37/NW+3MOMqqi/7yvLZ71mayb7unIQp7vl+8H9
 99x/nKFWSciVb8ysAvyS29K+yTMWpNTvISwpkIhApMd0tD9rlpKIXL+mlsAmJpN3lYvh
 juZyD6cyfpc+ti1ZIq+QTyLMom/KC+mSvF7ok+zGKMMRfwkoh3w/1xJHoE26ZiiH4XXy
 TtXRVduVlolGWlLj6BODofsY07T/0U0hXu+6Tk38f8/IuEeG45PoShRViHneuzWLE+YK
 7ZvdQkt7uKh3NRRNYDBBkE1aDBHY8yYQwnHvUISXvXhR5Vpee2NQgsVbT+wBFzJp1Xcw
 R9NQ==
X-Gm-Message-State: APjAAAV+iL4POYNhgmu5dY2oWOSvTgwkcE+fnxtLWNY5mw2ZeAd2Z8Yk
 C484AuFC/NW3Ruj9yLHcMqw=
X-Google-Smtp-Source: APXvYqyBsqmtBMnp7Z7YAXsHQY8QimuRAZp2vUDpUXc0RAHt+cIJtpblpYxaO3236O5oZKHs9zp0yA==
X-Received: by 2002:a62:8643:: with SMTP id x64mr87048095pfd.7.1560879191390; 
 Tue, 18 Jun 2019 10:33:11 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 14sm17529219pfj.36.2019.06.18.10.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 10:33:10 -0700 (PDT)
Date: Tue, 18 Jun 2019 23:03:05 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Julia Lawall <julia.lawall@lip6.fr>,
 Michael Straube <straube.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: rtl87x_io : make use of kzalloc
Message-ID: <20190618173305.GA4776@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kmalloc followed by memset can be replaced with kzalloc.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 17dafef..87024d6 100644
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
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
