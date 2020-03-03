Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D71177E8B
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 19:39:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17D4C85E43;
	Tue,  3 Mar 2020 18:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NsmGAlXQF0H5; Tue,  3 Mar 2020 18:39:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12C9185DE1;
	Tue,  3 Mar 2020 18:39:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54E2F1BF4E4
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5156B85A25
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XydMror-KVLh for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 18:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D6F99859F1
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 18:39:37 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id s8so1740414pjq.0
 for <devel@driverdev.osuosl.org>; Tue, 03 Mar 2020 10:39:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xnf0NI2/B51uk0B3K8Y5Ue/rYl7PH7wq6tazzg8etpk=;
 b=o41zjHXRMwWLInppoZq9nKOFbXjndU3IELvyEtzRhT5/u40bug7YIy0iqv4113hl/T
 g5caHKAt5EAlwhyZ+jMXEHUwmAXeMNo4qizkEyRzH0ZFWlkLn8IGyBvfprXLqpVOPty3
 X7XoKw03MhZTvvjtCLc7ENqb6Ycy7jt8xshVaqDjhHMP2U3CLX7D26tXQfPJ3P6rR+jF
 fRE8iNwYisB0+FZoto8TNX768cuXihmHJE9JQsLh6xf+90jshIDCuYi0oelXcnpvw0j7
 C+O5uR+M1x/HsqcEMX/R2aUafeyHPLUeK+HYwpHeXQ9W626tdAp1DKXVZQKcil74SC/I
 Wufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xnf0NI2/B51uk0B3K8Y5Ue/rYl7PH7wq6tazzg8etpk=;
 b=NWgml3HJMFdQgJ0Fra2qAI4tdUzuLNkqidsL8LjCuZvt4jyA5sFR8DV6dk98Pf7Ue3
 2l6zpdTTqWFS8anTZCaGTmPAud9eTEh1k64JQDhDuqPsLr5iCgLwpnjwwinFESyo31nf
 AR9UZaO1xxguXWsCCMGmSeKjR3BzP7ewuHY2C+nVdJaY1apupcfHE2gDRV9lIp3eK/Ue
 Nt/yG6t7W2NhPwYMvomCtrq8fZzrzY8QklyCrvYPnfsMQIMkKrxD7c35j0PPFmabSJSl
 P1xCANef+7zUnWxsD3yDNc0SCzAxLqJ+r1glSEwB9DUVtd3pjKhP/qCQtpQ/fZNrlE1x
 ygjg==
X-Gm-Message-State: ANhLgQ0Y9PpneJIbpZVBBXN5IrEDiw+qo4Tz5ku3Z3rMvnkqmAtAUrNc
 nB0Nds/+r0MNiLNhCSZSGsE=
X-Google-Smtp-Source: ADFU+vs4meEItvw+yprlIhr2eH+z7mYrPFCc8mdOqcGoxHq3P1Ck6MIovTiJN0IptWk3j9iKZD3lWQ==
X-Received: by 2002:a17:902:b28a:: with SMTP id
 u10mr5532832plr.1.1583260777414; 
 Tue, 03 Mar 2020 10:39:37 -0800 (PST)
Received: from nish-HP-Pavilion ([113.30.156.69])
 by smtp.gmail.com with ESMTPSA id d14sm3474291pjz.12.2020.03.03.10.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 10:39:37 -0800 (PST)
From: Nishant Malpani <nish.malpani25@gmail.com>
To: linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: adc: ad7192: Align with parenthesis
Date: Wed,  4 Mar 2020 00:09:32 +0530
Message-Id: <20200303183932.7051-1-nish.malpani25@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 nish.malpani25@gmail.com, stefan.popa@analog.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:

CHECK: Alignment should match open parenthesis
+static void ad7192_get_available_filter_freq(struct ad7192_state *st,
+                                                   int *freq)

Signed-off-by: Nishant Malpani <nish.malpani25@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index bf3e2a9cc07f..20fe7464da7f 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -477,7 +477,7 @@ static ssize_t ad7192_set(struct device *dev,
 }
 
 static void ad7192_get_available_filter_freq(struct ad7192_state *st,
-						    int *freq)
+					     int *freq)
 {
 	unsigned int fadc;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
