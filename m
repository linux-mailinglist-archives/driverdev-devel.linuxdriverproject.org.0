Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F144E38B6B6
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 May 2021 21:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68A488445E;
	Thu, 20 May 2021 19:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lvrbHKb1IgWN; Thu, 20 May 2021 19:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B68CD8444C;
	Thu, 20 May 2021 19:07:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF3B71BF3EF
 for <devel@linuxdriverproject.org>; Thu, 20 May 2021 19:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF39884448
 for <devel@linuxdriverproject.org>; Thu, 20 May 2021 19:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lOXmVhSA5i4Q for <devel@linuxdriverproject.org>;
 Thu, 20 May 2021 19:07:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0970F8444A
 for <devel@driverdev.osuosl.org>; Thu, 20 May 2021 19:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1621537628; bh=JiLdHkQqAQdc8HOZA+v+ql7U6+cmn/TOeYkHlqETiOQ=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=n0RHHpi8bnKbNjFI9S/jDI+fzODEugbKUc7D99zgbJ6sDq4M8HblPqGeWQCTNm8Wj
 sg3vQJ/WtGACzY7r9iUnFpU9SwX+FYSrxq7hQbXZfEL7DIQiyhD7AaJNgQvwsRsYL+
 e1poNQP+lIiBacww+INPquBYEOQ5R+YPMjiTQrSA=
Received: by 192.168.90.16 [192.168.90.16] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Thu, 20 May 2021 21:07:02 +0200 (CEST)
X-EA-Auth: tOCSZ/LojkyAZOiDcOe529g1Jjr+WHCGzdHhdSY5//DDCtwcnqbmy+J1DQaA4Z1Au3e83ekhUX/Z/VyknOLiCSxAX6jR6b5r
Date: Fri, 21 May 2021 00:36:43 +0530
From: Deepak R Varma <drv@mailo.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RESEND 5/5] staging: media: atomisp: code formatting changes
 sh_css_version.c
Message-ID: <2e2756e00db48165a42b38deaace7edf4feb1450.1619850663.git.drv@mailo.com>
References: <cover.1619850663.git.drv@mailo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1619850663.git.drv@mailo.com>
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
Cc: devel@driverdev.osuosl.org, drv@mailo.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Trivial code reformatting changes done according to the coding
style guidelines. These code changes overall improve code readability
and also address chackpatch complaints.

Signed-off-by: Deepak R Varma <drv@mailo.com>
---
 drivers/staging/media/atomisp/pci/sh_css_version.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_version.c b/drivers/staging/media/atomisp/pci/sh_css_version.c
index fa6de61e4995..f038c61a8499 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_version.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_version.c
@@ -20,8 +20,8 @@
 #include "ia_css_err.h"
 #include "sh_css_firmware.h"
 
-int
-ia_css_get_version(char *version, int max_size) {
+int ia_css_get_version(char *version, int max_size)
+{
 	char *css_version;
 
 	if (!IS_ISP2401)
-- 
2.30.2



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
