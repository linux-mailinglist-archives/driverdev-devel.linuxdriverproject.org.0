Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 298B429ED8
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 21:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECE9E88134;
	Fri, 24 May 2019 19:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcA7uIUU9xhf; Fri, 24 May 2019 19:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A03D28806B;
	Fri, 24 May 2019 19:10:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28BE71BF5AA
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 19:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2461488C46
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 19:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfbdcgUqqByC for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 19:10:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5F7788C41
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 19:10:18 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id t184so245167itf.2
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 12:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=P/mdSoe57BFheTRCW7JAtlZ6nF+RCpHBDMWwYpA7PIc=;
 b=bUCIj4y3+JaAFrLKcNRYKIdwbksAuznAJdve56ZbLYJHITXoF2tpjnTIIqt6BMGrYl
 UzNgBvQsQ2jD9ifAjHhcd6Ylw1Jw3/fjuL+0/z5SbQvxUx3XCUrV75X0TD5NCqXARccg
 26N8ruyGzEfc7veElu2xgDPEb20YOuJe8qh32appPK4XOZthOikWQQmfjS16i9TwJYhq
 NHOJ3kp/IkBQLmuFcdpGWR9dItYgjH4z0T2dGgKXJPviB3R2iGaW/RZcyJIarOCWtGgM
 e2sc8a87ykdScK5a4swqZ3dIVFj+ETBMUU9yCdBp4kEqqFJkPrpQ5rW7w0tPmHJIKceI
 1DnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=P/mdSoe57BFheTRCW7JAtlZ6nF+RCpHBDMWwYpA7PIc=;
 b=Z9sukTAjHK5YYB/1fXGqOTyBL4zIIRbpPit6jn/OU9DKzZzsJ6NecqQusp4dNTOTSc
 D2xxXPVryntgCzlLEcw+1/50Kw3ZUj9rh6GIgaSiwz+iksxhlTUQMWQ1HHmK0Sg+bMPB
 0gk6xYcYiwntU5j7sjt9MH2YBffGZk7id7h7cwcMwd1ChMTEPDWmnJvFe5D2yF957Tir
 dmar+Otfs2RPtPY7CNGl1tPCkE4Rzgf9O+d+nBbuZydEPuOvmBe3SiV1xEeIG8GCuI+e
 DPbsB3/Xv/T/tzAe6eujDpfu0weBLa9ky27ORiHWkZN7Lk1HIk2NKLsIzpF/oQVmfafp
 +2mQ==
X-Gm-Message-State: APjAAAVbXHRAHWsHJIpNlb9FdoDng2BJgL8NJ+CUhisDpRL0qQD0QNpe
 SSTxv//pQIjU0Ve11MMTvDI=
X-Google-Smtp-Source: APXvYqwNxw9klwRfZfU8vLpYq91zR+rJ18z9HSkart/8e54RbqSoCfsoSQgApo0bDFk5/zkBB2fkww==
X-Received: by 2002:a24:46d0:: with SMTP id j199mr18501950itb.63.1558725017875; 
 Fri, 24 May 2019 12:10:17 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id j19sm756079ioo.17.2019.05.24.12.10.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 12:10:17 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/2] MAINTAINERS: Add entry for fieldbus subsystem
Date: Fri, 24 May 2019 15:10:12 -0400
Message-Id: <20190524191013.10139-1-TheSven73@gmail.com>
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
Cc: Joe Perches <joe@perches.com>, devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add myself as the maintainer of the fieldbus subsystem.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---

v3:
	resend, no changes, forgot to attach history to patch set

v2:
	add Documentation directory to maintainer entry for fieldbus,
		suggested by Joe Perches

v1:
	first shot

 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..50e164041e94 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14905,6 +14905,12 @@ L:	linux-erofs@lists.ozlabs.org
 S:	Maintained
 F:	drivers/staging/erofs/
 
+STAGING - FIELDBUS SUBSYSTEM
+M:	Sven Van Asbroeck <TheSven73@gmail.com>
+S:	Maintained
+F:	drivers/staging/fieldbus/*
+F:	drivers/staging/fieldbus/Documentation/
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
