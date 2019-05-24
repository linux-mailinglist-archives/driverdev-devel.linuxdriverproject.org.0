Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DB729ED9
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 21:10:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C539486E2C;
	Fri, 24 May 2019 19:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ndRChuMgZyec; Fri, 24 May 2019 19:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F01986DE5;
	Fri, 24 May 2019 19:10:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBDF31BF5AA
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 19:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D906E88C46
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 19:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nimds-NNKA4 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 19:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82B3A88C41
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 19:10:19 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id m141so17542086ita.3
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 12:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mRUuTYiShMwFtE56cW22VUT6bEYjNIFQelgnkYt+eq8=;
 b=VmsKwFSiC0VUEkprKQg5TgU1MmAz2u0h7cJitkY99mcmQNCfSGKeNM2ew8dV/Q1I9x
 j9kwUwdiHkcpvg6S3yYMUfNa014OuppKlmyoYkbVX4kwzLjskS42rQmmw0FA/C0gTok5
 mLqyrxlTg0In5P4GdNyYpkYT61pw3jE8im8dInM+w5sP3JiiRaXb3iMuQ8deZbmpRLxD
 giVIKn53iSEXE4psvUxYyOjr2cyG+ZjSOEmotBHdHUBnuecOKiblFY3mJNjlJNlBr8Oo
 FeE26+QEX0gzeOtPxDJOSMMQeLo1V+QHtjx+IS+phAC2R3EX6rHBxpb6XZxah2XgXpKR
 Ji/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mRUuTYiShMwFtE56cW22VUT6bEYjNIFQelgnkYt+eq8=;
 b=C5gUgiSfJ+WedsxRqt7bXDzuSksP5X7tDozQL282qPA4EGCgbNM+3/sYfnA/p+S/aT
 ipzkb/LD4SOm39WNAi1cblsIjg5CNKa/tx4HO/0/yjIIxPrVFO9K2NQ3RmZ9BeN2NTwX
 5F/yUIEFJ5rr14C+l8f48buhg7QVPDecNGihAFcHBiMz+s6KjE+DaaSruI7WazY3yUFj
 1r0kwFGjLkEAC8Jq3uUZM3UkjOGdt7tl7Gq00Dt5ORO7MmWGpd1mWc9Dp7kA5K2ZgzTF
 +0p0arzFZAAQW5sWJ6l3/EPVhC/IWdExaLFaNlzht/vEKx0knVpaPbeNr/iHwssGNQPu
 /ftA==
X-Gm-Message-State: APjAAAWzgv+A3cOmFL1pRYMQvF1oFsIqHYoqL20vab98cS9bthg4gRXd
 XwNGGsVKTTylEWgEdB5mCn4=
X-Google-Smtp-Source: APXvYqz0rzwvqbSFRr8z9t0buoMdnl574GfCSR1JKODGSroNQ+Ap4blDmwT/aJDEyxkeWFsmEyqVJw==
X-Received: by 2002:a24:c242:: with SMTP id i63mr18254379itg.89.1558725018805; 
 Fri, 24 May 2019 12:10:18 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id j19sm756079ioo.17.2019.05.24.12.10.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 12:10:18 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/2] MAINTAINERS: Add entry for anybuss drivers
Date: Fri, 24 May 2019 15:10:13 -0400
Message-Id: <20190524191013.10139-2-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524191013.10139-1-TheSven73@gmail.com>
References: <20190524191013.10139-1-TheSven73@gmail.com>
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
Cc: Joe Perches <joe@perches.com>, devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add myself as the maintainer of the anybuss bus driver, and its client
drivers.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 50e164041e94..2b9223be10b6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14911,6 +14911,11 @@ S:	Maintained
 F:	drivers/staging/fieldbus/*
 F:	drivers/staging/fieldbus/Documentation/
 
+STAGING - HMS ANYBUS-S BUS
+M:	Sven Van Asbroeck <TheSven73@gmail.com>
+S:	Maintained
+F:	drivers/staging/fieldbus/anybuss/
+
 STAGING - INDUSTRIAL IO
 M:	Jonathan Cameron <jic23@kernel.org>
 L:	linux-iio@vger.kernel.org
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
