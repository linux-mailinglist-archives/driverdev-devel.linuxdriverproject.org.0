Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBEE2276F
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 19:03:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E868A22E89;
	Sun, 19 May 2019 17:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RId634skxSUB; Sun, 19 May 2019 17:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 243FF2266C;
	Sun, 19 May 2019 17:03:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B49421BF2F4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B194285BB0
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klkuo1o9TvVs for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 17:03:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3DC3B85B95
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 17:03:30 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w22so5607199pgi.6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mwcMY0VK0yx/OQxigRKnWF/1+9CrvrV9U/DB+F7KGAw=;
 b=gWa0lihcO1Y5ONlmmU0LQ1eEAIlhK6f/aJU1utdVeo0XCYYtEatwMTpEY5kr45Pi5J
 lfkS21DWq0pWC0tceRES+F56ZHsIKGTk5G5r2i5vuJhieEwMB3nXPsTKkUbnsyS4DhlY
 dc2RjJ3qf0rVLnhufld77d/RuyYe823BdKP0ljeDqd1xcKqUNX6EEctCYls9PeBumyXE
 MVz9YpBdJnsszIncMEyW7IFJjccQgZdiiW/9OQR/QJT4sa7s0KyNhCIri9/7dOs9jDsK
 pK+z0ICK82Sn/Mf9CXm24v1Ywe/SZkgk81kGWRDmv9aRHI+28b3IGw32LTkDeuT9b7NB
 ArsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mwcMY0VK0yx/OQxigRKnWF/1+9CrvrV9U/DB+F7KGAw=;
 b=FCFcaA5a3PGzTr5JVkG8vptAOmDeDvXc4VN5qqya2G2hmxerRwAQ+hiTbFUBwriZxs
 Mh0aggrT3d8SyvnLfx5wZU3ZzGenIKW7Bg8sOb9wrAkUrhlacdacU8a/3p3wHNkgY641
 uv6APVc9VNc8bnEwrCCilnKEDpbn+NElmN2G1FCmRzavbz6HkhhF6puYkRq60SDCTVcg
 oSDtTz+MWiy17t1Mb52r0SvB4DdfjlEwyG0WroAossVZ2g9Ewf9uuS2Dk0u8rct4JN4+
 /rg5GfnUp+cNsNG3aM05ztFGZf5ekpovHWZDhHu0CrYhC1aaEjknreLlVOHPFqOWXkhw
 ofKg==
X-Gm-Message-State: APjAAAV8ppZXyhE39QvbKAkvf1lrzuc+1/dR1bZo36QwZ0iMXqLHQK14
 UUMCIvLq2ucZ0GZyQyTZBHX2jj4t
X-Google-Smtp-Source: APXvYqwN11CwT/b0nxrOEpz3Q6XeVBQSUgejFOtkNHoJMx6vFIoAVi+3hhmQ2zsppRxBem7n3E4H3w==
X-Received: by 2002:a63:e94e:: with SMTP id q14mr69861840pgj.110.1558285409956; 
 Sun, 19 May 2019 10:03:29 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id l7sm13308033pfl.9.2019.05.19.10.03.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 10:03:29 -0700 (PDT)
Date: Sun, 19 May 2019 22:33:25 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] taging: rtl8723bs: hal: odm_HWConfig: odm_HWConfig: Unneeded
 variable: "result". Return "HAL_STATUS_SUCCESS"
Message-ID: <20190519170325.GA6982@hari-Inspiron-1545>
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

This patch fixes below warnings reported by coccicheck

drivers/staging/rtl8723bs/hal/odm_HWConfig.c:501:4-10: Unneeded
variable: "result". Return "HAL_STATUS_SUCCESS" on line 526

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index d802a1f..4711c65 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -498,8 +498,6 @@ HAL_STATUS ODM_ConfigBBWithHeaderFile(
 
 HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
 {
-	u8 result = HAL_STATUS_SUCCESS;
-
 	ODM_RT_TRACE(
 		pDM_Odm,
 		ODM_COMP_INIT,
@@ -523,5 +521,5 @@ HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
 
 	READ_AND_CONFIG(8723B, _MAC_REG);
 
-	return result;
+	return HAL_STATUS_SUCCESS;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
