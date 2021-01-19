Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF182FBC18
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 17:11:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AC4023265;
	Tue, 19 Jan 2021 16:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uppidd5r+cAW; Tue, 19 Jan 2021 16:11:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF8902107F;
	Tue, 19 Jan 2021 16:11:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4D801BF576
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1C5085C6F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBpz4jC5rK4M for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 291A286FA5
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3B48A22AAA;
 Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611072651;
 bh=nEeEvrRLh9lNcaUoTdN+s8gNyA0TJfHuL3xy6iPuWW4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M3reI/bbAECeKdfwwW5cCX8ZoxncIHoMDIX0NxAu95xt5oOSX83M0nzeRgM/pVCJ9
 S8+6TynZG0u2w3hMhviC110uIqyBBV5NRbK4Pzc+tJNA1tstyX/cGV00h3TVBXGrUP
 kZT7M3xZi8r576v475nx2eWGI8biBxal1gZvEZxpEUZmCoT9TQnyaRcD1OJfVypi7e
 pBDczz1hvSauRtneXoA/twlO7jFzrkRcI53XaTCwcxIl4CF29lamSHh9ZyPphlXKRh
 B/fn/VAABh/RJnB8HC5/sY3Fy5MMJzkltPc52oOac3wUYSTaMS1iZdwRceoddv9pax
 suB38wxMKL7aw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1tai-0012bV-P7; Tue, 19 Jan 2021 17:10:48 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 01/21] staging: hikey9xx: hisilicon,
 hisi-spmi-controller.yaml fix bindings
Date: Tue, 19 Jan 2021 17:10:27 +0100
Message-Id: <1eae3c243fac993d9a4886d94ad6ae506d88fe06.1611072387.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611072387.git.mchehab+huawei@kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a few warnings produced by make dt_binding_check.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../hisilicon,hisi-spmi-controller.yaml       | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml b/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
index f2a56fa4e78e..21f68a9c2df1 100644
--- a/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
+++ b/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
@@ -26,14 +26,22 @@ properties:
   reg:
     maxItems: 1
 
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 0
+
   spmi-channel:
     description: |
       number of the Kirin 970 SPMI channel where the SPMI devices are connected.
 
 required:
- - compatible
- - reg
- - spmi-channel
+  - compatible
+  - reg
+  - spmi-channel
+  - "#address-cells"
+  - "#size-cells"
 
 patternProperties:
   "^pmic@[0-9a-f]$":
@@ -43,6 +51,8 @@ patternProperties:
       are documented at
       drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml.
 
+additionalProperties: false
+
 examples:
   - |
     bus {
@@ -51,11 +61,14 @@ examples:
 
       spmi: spmi@fff24000 {
         compatible = "hisilicon,kirin970-spmi-controller";
+        #address-cells = <2>;
+        #size-cells = <0>;
         status = "ok";
         reg = <0x0 0xfff24000 0x0 0x1000>;
         spmi-channel = <2>;
 
         pmic@0 {
+          reg = <0 0>;
           /* pmic properties */
         };
       };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
