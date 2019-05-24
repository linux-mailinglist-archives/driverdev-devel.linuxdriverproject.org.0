Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C4828F2F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 04:38:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A89D822EDD;
	Fri, 24 May 2019 02:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aUdMtcNGvwOt; Fri, 24 May 2019 02:38:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 051F82268D;
	Fri, 24 May 2019 02:38:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F44F1BF9BA
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 02:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1645B87E30
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 02:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbFY0TZONnrM for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 02:38:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EEEC686FD1
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 02:38:32 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id w124so4793930vsb.11
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 19:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XvanOsup0AcZacIZGJvgzlGN6xUx2g80dRy7eje+QD0=;
 b=cmYexK4FBqetbwPK18QiniGVmZ92uhC8h0NzKA+MW8M9lhBSV+45GSAFcxRtZIZg1Q
 UvDSoqlMCROQMjHkPUZV9tzgmkqIFfSZJA/i0/U56ALxXVjbqfec2EkfufUOKkt7l8ks
 MRG0Sv9ahQvXpynLdRFo/JexHzDOdc6i4Vtqf89M2lJy0nKVT0V+9IQtgtCwvm3gJ4VF
 sdefjl8uGXBy81PeyKZwEQj7zK9eTOp2pT37lGGcFJcnkRatmiegLZNuwo4gC9P1htko
 oMWtQD9ffURCYeYK5xyiGMmmQjbYohgTbHKMwhz0lZkL6RR/TD4vxlm0XfYtwJgxTh9k
 28bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XvanOsup0AcZacIZGJvgzlGN6xUx2g80dRy7eje+QD0=;
 b=J+nP0FKwA1zCAziW2pZQhCnp3EqYO6HjCF1zwTxoTiHMgmkJhhoqulwgWsBjNlEbXW
 0wnU1mjCeHpA20/g0S8PmLf8Js3xf3H6Lm1BiUIYyrd99ifXHuPKzz1NfhUuLh8pc1O0
 67PvWMCkMwZKh59TatbhURoKkza8dvKJVS432DIjgr9hfGqdCJQih3nrXf3vKLNpd5Gm
 BOR3cdH1RcT0sNV5GIttcWi3DQhHn7YUZGSygFFwJKp8/vhsjSJRFHScFdy7knOmOTPX
 E7CN+1ADjagvW/kwLFXbH+Yv+eCHDvTJV9Wqo2EL/W9uxvaCuqaNQFsIa/baoCROY5Q1
 OfpQ==
X-Gm-Message-State: APjAAAX7Ygd9Zld8HAJ55pWGr13TgmxK7bwWKB9CFGiASSxz4OU6rHD7
 sonBe4Qb2VFYkAqCEDN3h9I=
X-Google-Smtp-Source: APXvYqw9cnoq7GyYprdKx3oHAf9Ae/BEpK8fSmDkRJyujfvyQ9MlKaM7QCjNSmucf080ymj9rutKhA==
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr6545291vsk.149.1558665511952; 
 Thu, 23 May 2019 19:38:31 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id p70sm361931vsd.25.2019.05.23.19.38.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 19:38:30 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: kpc2000: Add dependency on MFD_CORE to kconfig
 symbol 'KPC2000'
Date: Fri, 24 May 2019 02:36:36 +0000
Message-Id: <20190524023639.6773-1-gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523053643.GA14465@kroah.com>
References: <20190523053643.GA14465@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc2000 core makes calls against functions conditionally exported
upon selection of the kconfig symbol MFD_CORE. Therefore, the kpc2000
core depends upon the mfd_core, and that dependency must be tracked in
Kconfig to avoid potential build issues.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
v2 changes
  - base patch on staging-linus
  - only add MFD_CORE dependency as the UIO dependency has already been
    handled by YueHaibing

 drivers/staging/kpc2000/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/Kconfig b/drivers/staging/kpc2000/Kconfig
index febe4f8b30e5..ef0f4abe894a 100644
--- a/drivers/staging/kpc2000/Kconfig
+++ b/drivers/staging/kpc2000/Kconfig
@@ -2,6 +2,7 @@

 config KPC2000
 	bool "Daktronics KPC Device support"
+	depends on MFD_CORE
 	depends on PCI
 	depends on UIO
 	help
--
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
