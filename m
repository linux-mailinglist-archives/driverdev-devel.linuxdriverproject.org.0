Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A235AA1F
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF081204A6;
	Sat, 29 Jun 2019 10:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y07k986yF0Zd; Sat, 29 Jun 2019 10:26:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8BD5C20499;
	Sat, 29 Jun 2019 10:26:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C41AF1BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF8D187646
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tE0iNWtNgESn for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:26:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57CA786E3A
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:26:18 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w10so3716422pgj.7
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ufreqsCqUEbtwakQjfPG4/XQRKe+4sPPeMiA/RmTprM=;
 b=Dho7eNQ35SIyPNTS5qQQ9O587OsHxdkVAYouk63JcVIwNEL9lPwUKJExKokYaLWNX1
 DZIlbYQghqtSNwrxpE6B5pAfwL5WOST9YHz6/WlIcI/ShbF32WL0kQ8Yi1nXihz0uBk1
 z18GmAc9Fl0xS57Jk9kN0X8jBwtu/bI1k7U4+PZHh6DOlKVZC2Ga+3C93TNvlUe+c17E
 9DChqt+1QCSJwtCQjR1vL9KaxvywQHt5CTQuky1vE5BYfe2XsX/zl3UyaVkK05i4HLED
 Aw0Mh5XjZqZzITiksUK49sZ04c0m1JrF8WEE+8etK9Y8jjIojdOXfumlOlcE16p9T+wl
 5eiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ufreqsCqUEbtwakQjfPG4/XQRKe+4sPPeMiA/RmTprM=;
 b=UGuU7WUe0xwr8qYfdlhgPTh/1BovqgEnu9lHS4pXL/UMLjiCaq4Xg2zRSNs/lPB5kf
 ibfcRFn7p7/Zmq+Q+jDrqxCilLEJQwQGqLkvl39E9LXGfA3NBpUOLUawA0MUsp3pmZEp
 9cfsqcAZbaCkSQOUa75wxsjv6znDvt1o0cYeGc7JpFBxZBCYMQ6L9pfWSpTnwmotpbZ4
 zC+l8vSCXur97qzXpdkd3lYfefnSJL34iZ1I9BvFkFWlI9k8wuWK2eOw4xheqwKgaU/8
 aAiHybk0xBmji2+x1wFK2pO2l5m1G+GW0nEneCYgtfsGnVvwAvMXzvW8RBTDC10Romzv
 2t1g==
X-Gm-Message-State: APjAAAXL9NWwI76IB3vpA0v8l2RqDHPKxR/5xhxeT6u82apACTQbEHfA
 mGNGxQVDJUuJ5GnVCrwknqFP6ISQ
X-Google-Smtp-Source: APXvYqwBKGNKE3vZ+Zq3TlQ7LCTTVgLrGQhenDVitR7CKr7vXXkcOv+Od0d+XRptoBRec8S7tS0MVw==
X-Received: by 2002:a17:90a:30cf:: with SMTP id
 h73mr18934769pjb.42.1561803978031; 
 Sat, 29 Jun 2019 03:26:18 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id x128sm13085346pfd.17.2019.06.29.03.26.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:26:17 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:56:14 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102614.GA15248@hari-Inspiron-1545>
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index a733046..7883b26 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -221,7 +221,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 		pCfoTrack->CFO_ave_pre = CFO_ave;
 
 		/* 4 1.4 Dynamic Xtal threshold */
-		if (pCfoTrack->bAdjust == false) {
+		if (!pCfoTrack->bAdjust) {
 			if (CFO_ave > CFO_TH_XTAL_HIGH || CFO_ave < (-CFO_TH_XTAL_HIGH))
 				pCfoTrack->bAdjust = true;
 		} else {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
