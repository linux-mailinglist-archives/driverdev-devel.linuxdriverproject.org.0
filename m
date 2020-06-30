Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE0C20EDA2
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 07:40:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17BC221135;
	Tue, 30 Jun 2020 05:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6foTNKmYgR63; Tue, 30 Jun 2020 05:40:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 495FD20377;
	Tue, 30 Jun 2020 05:40:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56D731BF287
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 05:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4FA0C86D78
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 05:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPfZQb4j8RJs for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 05:40:48 +0000 (UTC)
X-Greylist: delayed 00:49:22 by SQLgrey-1.7.6
Received: from mail-ot1-f74.google.com (mail-ot1-f74.google.com
 [209.85.210.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 987EC86D31
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 05:40:48 +0000 (UTC)
Received: by mail-ot1-f74.google.com with SMTP id n9so8000696otj.18
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 22:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=vSqeEeckvpRbZGibNjwUaMyXm8VkQnSd56e/epMHyVQ=;
 b=gyNi5aATe8TqHE7u6B+wIEwHg193GUJBNOD+RzKybJOneonjln50tdgpwT43fJ/Ths
 8dFI5YKs37yghC22E/N+87q5OGQUfcGqRPEuzA2jrf8AQ+hlNUnYSSxNLePtmV7PQemM
 /YDnZE9BBFUxFo9T2OEttT/2WczcCMclSAM1gnLmg1VU2LbaUV0JN8t9ovWkuasnGbTe
 6RglnmmOKNPkyucnT56IJXlkjCwDXBUvd7ypX5cTWV1EdocXxIbZFOz6T63wT+Lh6KOW
 0JrJozUoxWuPBBQXzwzzBQai85mW3u1RNbD49V3jotfI9QHsoE0opMlsUwvXc72e0oY8
 Xn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=vSqeEeckvpRbZGibNjwUaMyXm8VkQnSd56e/epMHyVQ=;
 b=ZFtIerACdGeJlaiPqzYxHz42fL5g4xbarkJ1mgZlsY9XEWbNYTwwVT/6XQA0ljlmTW
 yETgR+HwtXvnkkpHGL91r0vbbGSGV72XamfLwIxVA4+LdvN4XvBQDS+826Y0qff2BK5n
 lYGlh1qeeHS5W/7oB6UVRJEGNUsABk+Au3FDm1jsTxPlNPDemUNiS9niI3qexYk7czzX
 hYx5yxTwx0p0qHz/PUK9RxJ5DgKHoPc4xMKn4pa1llPtv0vEWQmPaJsEA8i3UOcmD1aP
 obVc8IvTR4buxdSOM9buNXWHfNUPRkTV1l18L9GCwqRwWpxId6hLhcyjavixdJwzlw48
 l0kg==
X-Gm-Message-State: AOAM532BZ+N79qlMf1QrDRrBKvPRDPDqh3uHfS0iNldYF5LQSqLu25Qg
 n5oBzAwMh+AGnnjNJ2VpI8QXk8oCzJXQFg==
X-Google-Smtp-Source: ABdhPJyU53scu18O26IxLx2seqo1666FrNwEmW6JQE0uTUsyEEKPzVYVNeqyTCA7tMSuyMdT+nkhBbNQt05sKQ==
X-Received: by 2002:a25:f509:: with SMTP id a9mr32741555ybe.227.1593492328741; 
 Mon, 29 Jun 2020 21:45:28 -0700 (PDT)
Date: Mon, 29 Jun 2020 21:45:17 -0700
Message-Id: <20200630044518.1084468-1-davidgow@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH] clk: staging: Specify IOMEM dependency for Xilinx Clocking
 Wizard driver
From: David Gow <davidgow@google.com>
To: Soren Brinkmann <soren.brinkmann@xilinx.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-clk@vger.kernel.org, David Gow <davidgow@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Xilinx Clocking Wizard driver uses the devm_ioremap_resource
function, but does not specify a dependency on IOMEM in Kconfig. This
causes a build failure on architectures without IOMEM, for example, UML
(notably with make allyesconfig).

Fix this by making CONFIG_COMMON_CLK_XLNX_CLKWZRD depend on CONFIG_IOMEM.

Signed-off-by: David Gow <davidgow@google.com>
---
 drivers/staging/clocking-wizard/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/clocking-wizard/Kconfig b/drivers/staging/clocking-wizard/Kconfig
index 04be22dca9b6..69cf51445f08 100644
--- a/drivers/staging/clocking-wizard/Kconfig
+++ b/drivers/staging/clocking-wizard/Kconfig
@@ -5,6 +5,6 @@
 
 config COMMON_CLK_XLNX_CLKWZRD
 	tristate "Xilinx Clocking Wizard"
-	depends on COMMON_CLK && OF
+	depends on COMMON_CLK && OF && IOMEM
 	help
 	  Support for the Xilinx Clocking Wizard IP core clock generator.
-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
