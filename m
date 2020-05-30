Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 844F11E8E53
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 263E6884D6;
	Sat, 30 May 2020 06:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBDV2UJswZSx; Sat, 30 May 2020 06:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01AB1883F4;
	Sat, 30 May 2020 06:56:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4D881BF870
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1DD98941C
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLLu3fonUpH8 for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B547893CB
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EA3B208FE;
 Sat, 30 May 2020 06:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821763;
 bh=TIOaXsWSG7sEJuTqxa/iOgSPHzI2wAnWFU+P+tAaXCc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2s9qZ+SIeiWKPzz4kCdekqUzm8qgexQ3hDkY1GWOhRQ06gF9IzYxC8sdp1iJjc7SX
 4JxdLcNerHgxssA5wTc2peqilSvSnB34AMkW08/0ps4F3TKzmwHQxwp6fczH+0DNH/
 7GmqY7Yn/1UYaz674b1YVbrzhEnuYhAUcpZpwNAQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPU-001hov-Vl; Sat, 30 May 2020 08:56:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 11/41] media: atomisp: use Yocto Aero default hmm pool sizes
Date: Sat, 30 May 2020 08:55:28 +0200
Message-Id: <76f602ad6fcd43480976fde6e7dd7b4c6edfa074.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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

Yocto Aero driver has a different default for hmm pools.

Use the definitions there.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index d795fe49130c..b30a2e54067c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -56,21 +56,21 @@ module_param(skip_fwload, uint, 0644);
 MODULE_PARM_DESC(skip_fwload, "Skip atomisp firmware load");
 
 /* set reserved memory pool size in page */
-static unsigned int repool_pgnr;
+static unsigned int repool_pgnr = 32768;
 module_param(repool_pgnr, uint, 0644);
 MODULE_PARM_DESC(repool_pgnr,
-		 "Set the reserved memory pool size in page (default:0)");
+		 "Set the reserved memory pool size in page (default:32768)");
 
 /* set dynamic memory pool size in page */
 unsigned int dypool_pgnr = UINT_MAX;
 module_param(dypool_pgnr, uint, 0644);
 MODULE_PARM_DESC(dypool_pgnr,
-		 "Set the dynamic memory pool size in page (default:0)");
+		 "Set the dynamic memory pool size in page (default: unlimited)");
 
-bool dypool_enable;
+bool dypool_enable = true;
 module_param(dypool_enable, bool, 0644);
 MODULE_PARM_DESC(dypool_enable,
-		 "dynamic memory pool enable/disable (default:disable)");
+		 "dynamic memory pool enable/disable (default:enabled)");
 
 /* memory optimization: deferred firmware loading */
 bool defer_fw_load;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
