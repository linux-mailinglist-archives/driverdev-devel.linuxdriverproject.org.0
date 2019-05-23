Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C6928B82
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 22:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F81988ADF;
	Thu, 23 May 2019 20:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uMHZUh60WdJU; Thu, 23 May 2019 20:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A80B288AB9;
	Thu, 23 May 2019 20:30:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7C71BF338
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C8D486CB8
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Htvo6aaTEL6s for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 20:30:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 052E386CD0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:30:06 +0000 (UTC)
Received: by mail-it1-f195.google.com with SMTP id 9so10484262itf.4
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 13:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mRUuTYiShMwFtE56cW22VUT6bEYjNIFQelgnkYt+eq8=;
 b=PDSEhFz8d/Empv/y4Sz6sKRAbnAhJTa/l1NiWl58rAxJMksy7BJCHnxdNxYm2XnNxE
 xl4jfrQkZrmEaXX7JrI5CvTaGKCUsvMTfwmiBdDQfVrBAaKgZspTpXUbPHKZGc+/iVLM
 cCzPm11Xos9OmPufyiHx8+n82l6s6gry/SaGBI9gSY89X6bsnnxnVQ0+Fzn+aRvwn81e
 5dhMOEjRIdSbfBAtBceMiT2vAfuNiBYrx2gosW4Lxfwqkoo7o1/Cz7LHzSUFFzT7Q9Le
 fuJByJtKkDR++WO9KYzOPgcqzk9fBkzkbwW4MaW75QPTMsjXBdmJNoEwI2t7zuQg8kEz
 aTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mRUuTYiShMwFtE56cW22VUT6bEYjNIFQelgnkYt+eq8=;
 b=DpJ5pE7/EKv6wwV22aUTd0riGtFTnwRSf13LXd8dCdndRztwguFSTP0ABsz332Wwnr
 BVyGu9/xFHtkrz2n+F5hEPDb1ZzHo0Hf9p4TizXHKtuV/+XJBKQEguDMsVgiFT8FK7vm
 KNkgw2bPlEthRG2Qi+yTk+2CVw/q/fO1CvnMSvNRLVApiSR7MQgjS6UYdCmCvggn7+Pd
 KbiHwXReqaljnNneqSCA3PlkERFYpEx2Mh7+J+vv22NlLIhTd/YT1Rd7W5sV3yN9boQZ
 KqYrM1zaRan4MG6kAiaEE2DmZlfVubKSQZMtUKtG4CZJhHxR8USbJYvJVxUmKnOVN3ct
 Cd/A==
X-Gm-Message-State: APjAAAUmimx7oe5LETk4Ubs+wcXyNm/2xfC0q/xe5QKj8PfdsHCCxkdJ
 itVZse+k4jNiyyVB5o9dqQ4=
X-Google-Smtp-Source: APXvYqyV16HbVdnD7pGkz9aQRE5k7Rt+YRiulyWCimbUB2EmAQYeY+UxO++c1m6EPe63Iussiws2qA==
X-Received: by 2002:a05:660c:7cd:: with SMTP id
 e13mr14333755itl.40.1558643405298; 
 Thu, 23 May 2019 13:30:05 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id w189sm217903itf.39.2019.05.23.13.30.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 13:30:04 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] MAINTAINERS: Add entry for anybuss drivers
Date: Thu, 23 May 2019 16:30:00 -0400
Message-Id: <20190523203000.32306-2-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523203000.32306-1-TheSven73@gmail.com>
References: <20190523203000.32306-1-TheSven73@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
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
