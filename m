Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C7125B0C4
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04CB087285;
	Wed,  2 Sep 2020 16:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6lnVEK-iJEdW; Wed,  2 Sep 2020 16:10:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F7CB8717B;
	Wed,  2 Sep 2020 16:10:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79F861BF983
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76F928671B
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHJbCsduUCaY for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2217857C2
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9164E221E8;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=9dhD+Wjohk46Ke51HQQMWLMkqd0e9PqJih4Q6OfTONc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k0VEbQoNKyc2Yz9vgdO8iQB/m3f1cvgbKN/GG6tSlHCa+1ucLPHyBu7SXJhxPS+ke
 G2yA/i8zGXE1gKJBhz5n59/tgjpWS8VOyNLEttP07h2JOEXy+cjR1SHV185qjv78+1
 Niujss0KYm2fmxGeZEDRjEQqhXwa1gYSrLlaYAwg=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tBH-P7; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 34/38] media: atomisp: remove compile-time tests from
 input_system_global.h
Date: Wed,  2 Sep 2020 18:10:37 +0200
Message-Id: <8154b39cf94a2aca6dfea194a63cc5acc3e0c2d1.1599062230.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599062230.git.mchehab+huawei@kernel.org>
References: <cover.1599062230.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that there's no duplication between ISP2400 and ISP2401
input system functions, we can include both at the system
global.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/input_system_global.h | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/input_system_global.h b/drivers/staging/media/atomisp/pci/input_system_global.h
index 5929d529950b..1450964445f6 100644
--- a/drivers/staging/media/atomisp/pci/input_system_global.h
+++ b/drivers/staging/media/atomisp/pci/input_system_global.h
@@ -24,10 +24,7 @@ typedef enum {
 	INPUT_SYSTEM_ERR_PARAMETER_NOT_SUPPORTED,
 } input_system_err_t;
 
-#ifdef ISP2401
-#  include "isp2401_input_system_global.h"
-#else
-#  include "isp2400_input_system_global.h"
-#endif
+#include "isp2401_input_system_global.h"
+#include "isp2400_input_system_global.h"
 
 #endif /* __INPUT_SYSTEM_GLOBAL_H_INCLUDED__ */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
