Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD880252A11
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 11:32:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F09168689B;
	Wed, 26 Aug 2020 09:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXj0WCF0PAbB; Wed, 26 Aug 2020 09:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F86B868C7;
	Wed, 26 Aug 2020 09:32:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 792281BF324
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 09:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7226A8704C
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 09:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+RKT-KALAOP for <devel@linuxdriverproject.org>;
 Wed, 26 Aug 2020 09:32:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3EF987034
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 09:32:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58A6D2071E;
 Wed, 26 Aug 2020 09:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598434337;
 bh=1uKAtHgq/9N9ximK/Z3MWdo14t/JYBeezQuBCqsx+Xg=;
 h=From:To:Cc:Subject:Date:From;
 b=zeaFssWIXmjAn2szjpkPkY3GWdKnO7C9aPjh4eih7wLsYCQ0ug4Llt63UuK1BPdKh
 MMy41Ikb2PKjN2PQa2p2XGS+uh8yVLv8YkcLc/oN8qrmraK+FyucdLKyKa0xmWmyLO
 L58xJ3ZLGoSPjQGKepgSL5lfYIUXHmKd61eO5mKE=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kArmx-002BZN-6P; Wed, 26 Aug 2020 11:32:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RFC] staging: hikey9xx: update references inside the yaml files
Date: Wed, 26 Aug 2020 11:32:12 +0200
Message-Id: <809bce085b0a9a9ede74d619d160e1e04723709d.1598434228.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The references inside those files were not assuming that
they would end at the staging tree.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---

Greg,

I noticed this when running ./scripts/documentation-file-ref-check.

Not sure if it is worth applying this patch, as this should be
reverted when moving those files out of staging. 

That's why I'm sending it as RFC.

 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml     | 2 +-
 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
index c76093f320f1..80e74c261e05 100644
--- a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
+++ b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
@@ -17,7 +17,7 @@ description: |
   node.
 
   The SPMI controller part is provided by
-  Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml.
+  drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml.
 
 properties:
   $nodename:
diff --git a/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml b/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
index b1cfa9c3aca6..f2a56fa4e78e 100644
--- a/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
+++ b/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
@@ -14,7 +14,7 @@ description: |
   It is a MIPI System Power Management (SPMI) controller.
 
   The PMIC part is provided by
-  Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml.
+  drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml.
 
 properties:
   $nodename:
@@ -41,7 +41,7 @@ patternProperties:
       PMIC properties, which are specific to the used SPMI PMIC device(s).
       When used in combination with HiSilicon 6421v600, the properties
       are documented at
-      Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml.
+      drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml.
 
 examples:
   - |
-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
