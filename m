Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2487EBD948
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 09:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEA1586645;
	Wed, 25 Sep 2019 07:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8cpwoarfPfUC; Wed, 25 Sep 2019 07:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 937F286429;
	Wed, 25 Sep 2019 07:42:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 934011BF3D6
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 07:42:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8FB9586429
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 07:42:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u5qRLkNizBOA for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 07:42:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A1A5486410
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 07:42:51 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id a24so2741455pgj.2
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 00:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=puF3UNYaJSZMgESC66NJjpK9rhx4xQJhi0e+qQB9l2E=;
 b=GoMqTIieZ8SyZHDOYFDZjiSJ1Q0+ttpr9XBdWpqkHXC6f8iZwjejVQjwmtF1e/eR9S
 KYPnjF4TqQZExSS1xQIRCwTipc8F67nVv5gUt7Q5OMlBxnnsObBkGXCyso/3AtYfEt18
 NIxfXNPEDTWz2Xf+AyKsf6GzKFnXNrWmd0XmactZH8lcp6ijuCho5QQ7a9MR6YQ71T1C
 oTwPL62B057CtHlSR8s9d3wVve2pMp33fX/DTCO6x0DBTrJvftT00eAn3pCjHlCx63EN
 WybPM5C2BnK42hdPz8HPg41fl6/t1ZvzKjJaKGm5DNSRzsCiGRurK4pwPZtcNWS1hsiw
 DCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=puF3UNYaJSZMgESC66NJjpK9rhx4xQJhi0e+qQB9l2E=;
 b=FIJsyhkzgVZFXmH7Yg6C6adH0KNaO0G9k9fb6hi0FCAfxqrKYLje3kY1dpK2wJPKvD
 DYcp5jNichyoZO3fN8g+RBBDmuBjjg7/ZKCM+8uQu9JHC8sFACcAJX9t8D0psEC0k/Fa
 L/IAqC2J9149gK16UK4AxggLmKYSocDKLwHKeyING0loAHXC9yBDz1A2oVtUQZqIIove
 KBWyFCFFqSualFuriyAwRg20aaZ0IpJ7rMJyxLP3YAbyaf8QtoTPGHUoDcrx28Qtb2sD
 dAaSH4McLFG7hfJSflad6u/ZJf6AUzuVE3hUuUYZWc5NNXUkIZ0s2lotYuUFAn8ZxH0P
 55OA==
X-Gm-Message-State: APjAAAVr1jdxDYZQYo/cRL9i4jMg3+26AjaYF6GHezekvp3NSp+9xu6e
 1DvG8Uz3NSv9ZB//q40hOqU=
X-Google-Smtp-Source: APXvYqwUSHV12jCHjZxOw7gvGkcSMh0LGzZ9s7Q+jQ9p7Rthi1qBOlQRrXjdXbDjtrSI4faXBe7oZA==
X-Received: by 2002:a62:27c3:: with SMTP id n186mr8057476pfn.58.1569397371038; 
 Wed, 25 Sep 2019 00:42:51 -0700 (PDT)
Received: from compute1 ([210.200.12.126])
 by smtp.gmail.com with ESMTPSA id l189sm4896907pgd.46.2019.09.25.00.42.49
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Sep 2019 00:42:50 -0700 (PDT)
Date: Wed, 25 Sep 2019 15:42:43 +0800
From: Jerry Lin <wahahab11@gmail.com>
To: Jens Frederich <jfrederich@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jerry Lin <wahahab11@gmail.com>
Subject: [PATCH v2] staging: olpc_dcon: fix wrong dependencies in Kconfig file
Message-ID: <20190925074243.GA24947@compute1>
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

To allow simultaneous support for XO-1 and XO-1.5.
This module require GPIO_CS5535 (for 1.0) and ACPI (for 1.5) now.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Jerry Lin <wahahab11@gmail.com>
---
Changes in v2:
    - Remove the parentheses
---
 drivers/staging/olpc_dcon/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/olpc_dcon/Kconfig b/drivers/staging/olpc_dcon/Kconfig
index 4ae271f..d1a0dea 100644
--- a/drivers/staging/olpc_dcon/Kconfig
+++ b/drivers/staging/olpc_dcon/Kconfig
@@ -3,7 +3,7 @@ config FB_OLPC_DCON
 	tristate "One Laptop Per Child Display CONtroller support"
 	depends on OLPC && FB
 	depends on I2C
-	depends on (GPIO_CS5535 || ACPI)
+	depends on GPIO_CS5535 && ACPI
 	select BACKLIGHT_CLASS_DEVICE
 	help
 	  In order to support very low power operation, the XO laptop uses a
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
