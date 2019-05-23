Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C6C28A01
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 21:53:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80A9C88ABD;
	Thu, 23 May 2019 19:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PSSHHmllZtte; Thu, 23 May 2019 19:53:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BE6187985;
	Thu, 23 May 2019 19:53:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BF781BF400
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 19:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6975788AC3
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 19:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1+Nq+RbMZ77j for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 19:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58D59873B6
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 19:53:19 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id g16so5862200iom.9
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VwwctvLi8lHf/da6NNPwV0bi9ifgHdYgUIi1NMjqNzc=;
 b=fG3hNOAVmvEjft12yzYA0H4+VLHBBy08XCV07Jbccv5yXCtOyE3aiVXZrvHjU+phqy
 BjDgig5ZA7ayN1i/sEObFnJYSZjXcl+kGsVjoI8u6CCwAJziy4RXtqA1NV7Dk8QaRGE4
 ivWBsktHy6SERLiwQ/IM+KcDoZdgBGdea3uDgPerZCsjkrdjLkW+ZfiOkgYofjYqZgwe
 BtXjsLXBnKSJjO5MPpP+fAtkAGQumyJg0xtoja3yzqqgAxnZLet1JSI5DyYRruRpW+3+
 Sf3RP4JTSKQybpNQMXlgtonOvi35p5YNof5F2xzm3iE+NUicnXKi2UmwLY0rFBa08Szt
 SmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VwwctvLi8lHf/da6NNPwV0bi9ifgHdYgUIi1NMjqNzc=;
 b=EIBeEYY2yhUsbJAOKt5U1/d/1MGTWP0Wu6mumsxJ8OOBETK0J5JmqCKSOrVFkQi5Hx
 9+nHtg9hXewtzJYxl2ZvpAeDtFe21a7j9zCVNza+SfSIoKH/4ZbLer9FF/l11pN60uwd
 RiT2i8u12Q9drs2Qxqq92mxznZsTa/2W4mLhZruLkIJyi4k96dzxSsFdVw6740byHgBL
 gdPqvCOea67CHT4POfUBfsiWCRr4FO/3q3y7gdp6AvrzMK7xXwrWyUkdQJsmOYHT5D8r
 0t+OGx8mHvXkxqlVdw6nNsOpxCIcOvDQ3kzM090yG9uVeOtTK/OzlAnVAodLSwWRdzzc
 ZZzA==
X-Gm-Message-State: APjAAAVWmMzoWTopOECpEA+PN2OxCbGMyWct4wymU/JheS2V4y3FaByI
 Vn64l/sLpxK1kILZO6iONAhoSxhW
X-Google-Smtp-Source: APXvYqx8C6F7hrf+pam/MfyUykBrSZUYAFI9ERx/B0RRW3eYtT9Rrb1y/B7S1A0tuYlm4UVs1vDZlQ==
X-Received: by 2002:a6b:8e56:: with SMTP id q83mr12770670iod.295.1558641198620; 
 Thu, 23 May 2019 12:53:18 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id w194sm206638itb.33.2019.05.23.12.53.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 12:53:18 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] MAINTAINERS: Add entry for anybuss drivers
Date: Thu, 23 May 2019 15:53:13 -0400
Message-Id: <20190523195313.31008-2-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523195313.31008-1-TheSven73@gmail.com>
References: <20190523195313.31008-1-TheSven73@gmail.com>
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

Add myself as the maintainer of the anybuss bus driver, and its client
drivers.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1cac53bced08..68d49623186f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14910,6 +14910,11 @@ M:	Sven Van Asbroeck <TheSven73@gmail.com>
 S:	Maintained
 F:	drivers/staging/fieldbus/*
 
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
