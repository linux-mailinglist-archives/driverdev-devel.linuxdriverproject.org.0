Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBFA2FB525
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:14:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF4D08666F;
	Tue, 19 Jan 2021 10:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4o7VpGuugwlt; Tue, 19 Jan 2021 10:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 080BE861AB;
	Tue, 19 Jan 2021 10:14:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E2271BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B46186B2C
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DXu-NqfG8zn4 for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C533786BC1
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A15D2312E;
 Tue, 19 Jan 2021 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611051267;
 bh=nEeEvrRLh9lNcaUoTdN+s8gNyA0TJfHuL3xy6iPuWW4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bVhzSyvN3BHid174PZAImoA11IYv7/SgGp5/cHCmuNEjHdSv9uwsUn/k6A7HcVWpU
 WbSwFMWIEGzv1gl9a1hAu+9x3oHpldQ/d2mnisj1SGmHZNlMqE64dqND12MzjYfJA+
 /rrsDznEpPxGJFJWlOIW2sjLmlGO7xBg+Ycip40btCsrsRlg6rIEQlmEJQ3fi5YdAp
 /vLq/TWWNDWIF/2AxO+lgvOlTuYl2Patfs4DcJqnAUUifhe7PTc/qZ3cXpwTRjmJoN
 jpGS7vFh+xFP7Z69JgGs8o99alva4hBODWdbv1cJsrMfWEnnsRVH9fBHYWxlDhzguy
 TTCgxhJwELeHg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1o1o-000tOc-Gm; Tue, 19 Jan 2021 11:14:24 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v3 01/18] staging: hikey9xx: hisilicon,
 hisi-spmi-controller.yaml fix bindings
Date: Tue, 19 Jan 2021 11:14:06 +0100
Message-Id: <226ffb8b47818fc08885f344e7213a5f71be2ada.1611048785.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611048785.git.mchehab+huawei@kernel.org>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
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
