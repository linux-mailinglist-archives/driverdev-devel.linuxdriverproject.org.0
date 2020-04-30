Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC2B1C07B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 22:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E95BD881BE;
	Thu, 30 Apr 2020 20:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VkBOgSfzb5q8; Thu, 30 Apr 2020 20:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B409881A6;
	Thu, 30 Apr 2020 20:19:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B8741BF3A0
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 20:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0863887EB0
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 20:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3N8I6GOZfSTK for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 20:19:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E89A087EA6
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 20:19:31 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id AF458955; Thu, 30 Apr 2020 22:10:08 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz AF458955
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588277408;
 bh=4cf9tT90g9qSpx1yKh9/vTGX84c71O8el/wErQ+Rsrg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wht5aty/8Slp8yZqhzfsFPBExwbkC4LgTdU2F7K9sgtdCRhzBKp7ekfU25/ipMn0F
 PV5AtI3CtRYuuMMW3+VhH6C+DCIX4IgT5IErTSYGCx/l39IyoBxKtpVCjUmSDSU+Ni
 IEAol/CAiSpMHrncTZgE1zGulCackz+Hc7TUwFX0=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] staging: sm750fb: add missing case while setting FB_VISUAL
Date: Thu, 30 Apr 2020 22:09:24 +0200
Message-Id: <1588277366-19354-2-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588277366-19354-1-git-send-email-mdujava@kocurkovo.cz>
References: <1588277366-19354-1-git-send-email-mdujava@kocurkovo.cz>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Switch statement does not contain all cases: 8, 16, 24, 32.
This patch will add missing one (24)

Fixes: 81dee67e215b ("staging: sm750fb: add sm750 to staging")

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/sm750fb/sm750.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index e478290b60a8..39e610cc3c06 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -900,6 +900,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 		fix->visual = FB_VISUAL_PSEUDOCOLOR;
 		break;
 	case 16:
+	case 24:
 	case 32:
 		fix->visual = FB_VISUAL_TRUECOLOR;
 		break;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
