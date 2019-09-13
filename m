Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC74B26BC
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Sep 2019 22:36:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 175BB883B8;
	Fri, 13 Sep 2019 20:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2zaLbyR8M-Lj; Fri, 13 Sep 2019 20:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5F3588364;
	Fri, 13 Sep 2019 20:36:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 117C21BF20F
 for <devel@linuxdriverproject.org>; Fri, 13 Sep 2019 20:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AC3788364
 for <devel@linuxdriverproject.org>; Fri, 13 Sep 2019 20:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4RBufbjbMeL for <devel@linuxdriverproject.org>;
 Fri, 13 Sep 2019 20:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B392788363
 for <devel@driverdev.osuosl.org>; Fri, 13 Sep 2019 20:36:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n190so15854664pgn.0
 for <devel@driverdev.osuosl.org>; Fri, 13 Sep 2019 13:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Z0dOj7erolHZiw1ueP8ahOWvD/RxOwlZu4iI2DGsYgY=;
 b=JePFpv4jtqm3k75bUAhPaPeBOwPkjKb3EuMgifyS9dp25EFyVs80DCTRNwV71LN8JG
 q0HGjOttvImzdDcFSWsc3m3WRBF1Zuzsh3rf6fvIc9JA3STlrLCw/SbYb7GlNlsD0uAG
 pmtv2LqXsvijDvTfM7RnMcO/dcBPqAQEADVflXWerp9hLIPenzIMUMdiyoVlt8bazfMI
 pAH5O49V9Qqp/scpI+Ie50M4p3TCVeMtdph0WSJfYtrfvkwXlwM1YBkpOuNTUDrGWR67
 VJRFRWj/oPnnCdHoGQboYS4BfBd8KpMD9prEqCpFBJTtGSLFswCb8ayr//NRy7i1GfmS
 RAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Z0dOj7erolHZiw1ueP8ahOWvD/RxOwlZu4iI2DGsYgY=;
 b=cZvaYwDv8XfKFa6ElfAs4pKeOI6MSzkpkbL9jsTIVrR9Q3pEahb+e1o8+fOEfTudme
 HhS5wT8VhixC+TfabtBxAbh0JNJBWQOyg0McQfzXplxS64+MK8itw5bSsQWuIqcM77YY
 m90s2B9kgMlCJ1uG9nxZ/G9SJRpMkwMaoidx5HNmMy4s4gkG75buwBNsiwptZM65uozL
 S3xXaQkLKfxSfYnXwD7j3Z5YduQwTyN7tT3Osf6NZmmxFZIVCl+440rZvMKlBHdUaJDw
 sm5hmY81OJ9Abh4zfemAPR0Ah5bM+3DtdpWy9tSP1jGpjv/cqOi+I1p6z0zitib1f4Hu
 BtDA==
X-Gm-Message-State: APjAAAUgj/phy5/lu1yLawV0Q0ckOX1YpTmB95SrOCpaNgqhm0t8eKLS
 UpUpKBUq6Dj+WFfAwIIngAs=
X-Google-Smtp-Source: APXvYqzbYlUr99W7oZuQgWRIU0dwuUdr89WZOpA54Xc4iE0OSywy0WJV9EA3/sI4FKC424tlR62nRw==
X-Received: by 2002:aa7:8dcf:: with SMTP id j15mr48595781pfr.5.1568406992288; 
 Fri, 13 Sep 2019 13:36:32 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id u9sm30215333pfn.29.2019.09.13.13.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 13:36:31 -0700 (PDT)
Date: Sat, 14 Sep 2019 02:06:27 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, gregkh@linuxfoundation.org,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH] staging: iio: ADIS16240: Remove unused include
Message-ID: <20190913203627.GA1320@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Rodrigo Carvalho <rodrigorsdc@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Bcc: 
Subject: [PATCH] staging: iio: adis16240: remove unused include
Reply-To: 

'#include<linux/gpio.h>' isn't being used anywhere. Remove it.

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 82099db4bf0c..a480409090c0 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -7,7 +7,6 @@
 
 #include <linux/interrupt.h>
 #include <linux/irq.h>
-#include <linux/gpio.h>
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
