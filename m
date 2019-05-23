Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B447128A00
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 21:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E6F388ACA;
	Thu, 23 May 2019 19:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztLjEPnf5ybJ; Thu, 23 May 2019 19:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 348DE87985;
	Thu, 23 May 2019 19:53:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5003B1BF400
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 19:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D2568790D
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 19:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEc4QzSOEfjP for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 19:53:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB250873B6
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 19:53:18 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id g84so5899546ioa.1
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DUU/JbmMxaxg7HEI5Jb2l3ME8qgdUZEOoglUf3jK+GY=;
 b=igINZ4GD+EOp0DvTKqUNFQnlzJ1wiFH4hEOhTjj0cIvpAK3IncMBUgipg+Uy6akPXM
 oM1m5FQHGxuDD0SnhgkdAEcdanMHc3aDKrCDQIUR0BQJAlZGy47IYOYNn0WeVrBNoGXT
 G4A9527XT1IEyaaEUwzfJTN3i5o5Fd4hHTdHaAAbf6XWlp2gtioS3KYT9Vj8DniHnSZE
 5rH89R5ML0i9TBsCS3NQdtzGagFLiUDYnND742EMZEGgg1QaxwmyIKM40sGPimDdIOYT
 hboFUwj/at1sWwmTWW8b845KOHsU4s2p4+JeLiaGNKGQSWnHEapnMam2xhYd92iphFiC
 fazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DUU/JbmMxaxg7HEI5Jb2l3ME8qgdUZEOoglUf3jK+GY=;
 b=ZM58mKekRIuqbro08ieZJBSAEjGiXwrEJWpjAYiSO/YgxYtN1YBvNFIwl9DFb1v5ku
 3id412piS7MaIIKXux6jlZMiALbZL8Rm65vcUiyrnSZu5CQrUh9OJi0hq/muwmhLdfPr
 HKxPkY1AU799wE4wz92v+HZZtSg80KOqTzN2t8+Ez+BcQjpKK0PET3qT+nmwLAAScrwg
 0aGQzFWQwbdpaDSMqdAGzi91Vh0MJe8dDjNV+C3F2c8JadYt7mzHlvn+SOT4xgJhtBYF
 0xnmgGxaa6XJExn/+cjOXIhDfMcwD/kUFzoXcxXOPOmv+RAzpCd3JYPW0kQfe4BaSA3p
 Jjxw==
X-Gm-Message-State: APjAAAXnxeHkUcubB+YDTgPoHfK5XdvWk5ObWsrzizUSi9Fy2QOyefdh
 KypzqyEaOR4WjnjqJXvLaZU=
X-Google-Smtp-Source: APXvYqzZdSej/UV5gAPYiZNghEuZ3itNPIn1ECvcokeYAni5y3sjlxKqulk9wFkuXjR1CQ+YInXCpQ==
X-Received: by 2002:a5d:9c0e:: with SMTP id 14mr24944306ioe.135.1558641197860; 
 Thu, 23 May 2019 12:53:17 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id w194sm206638itb.33.2019.05.23.12.53.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 12:53:17 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] MAINTAINERS: Add entry for fieldbus subsystem
Date: Thu, 23 May 2019 15:53:12 -0400
Message-Id: <20190523195313.31008-1-TheSven73@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
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
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..1cac53bced08 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14905,6 +14905,11 @@ L:	linux-erofs@lists.ozlabs.org
 S:	Maintained
 F:	drivers/staging/erofs/
 
+STAGING - FIELDBUS SUBSYSTEM
+M:	Sven Van Asbroeck <TheSven73@gmail.com>
+S:	Maintained
+F:	drivers/staging/fieldbus/*
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
