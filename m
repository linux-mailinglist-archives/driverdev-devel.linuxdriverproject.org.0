Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DFE116DA
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 May 2019 12:04:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1ED4E87368;
	Thu,  2 May 2019 10:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lm3qIT-LD5W8; Thu,  2 May 2019 10:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC08C8736B;
	Thu,  2 May 2019 10:04:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5544A1BF40E
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 10:04:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FFFB87FCC
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 10:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aOZFnCNgnJNx for <devel@linuxdriverproject.org>;
 Thu,  2 May 2019 10:04:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F28A987FB9
 for <devel@driverdev.osuosl.org>; Thu,  2 May 2019 10:04:36 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id o5so774437pls.12
 for <devel@driverdev.osuosl.org>; Thu, 02 May 2019 03:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=b21nQs4hwdc7XpbVZxSzer3RlFLMwf7lrAQyyiOML0s=;
 b=AP7/MpcZ/LaYdNIMRQGWob+QB0uOoyFXCZOc2ppFmMUjMw7JuLWO23BZ4xCu/p2SyO
 CjMePr0F5iDM4Sc7RB7+ZefJf9RA5wa45ISOUP8fuOJgX+w44wS1iHzjRa8ykbdsgsTS
 E5LiN26HJdCJhLtuuDm6H0XxyvOJuydjLE62F9tH9hQXhq26tVg6cHZF+V1qFeyymJGG
 2WpIiiSTJAUWeD61HdAP4oXW854KCaci8/SQv9tLIyp2BXFVrectKFcIpg9BQ8peZFH4
 nq8Q0HM1bSlKfX6y7kzA4tqPcGqFF9lgmKyrsjFgU8ky4OBDCFuPMrFEwYcploV0lOCX
 mMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=b21nQs4hwdc7XpbVZxSzer3RlFLMwf7lrAQyyiOML0s=;
 b=eW/iGn1wvRnuiEVokFc9YLujKce2Zd1WXS1LZA7hIHb7VX02Vh0rSo+k7IM2djEpAd
 XwYrja31VnHjkKI1cD35ufBDgQq27WPzjY6ngyo5ZC+6JUA3TC6rpqnV1bng5fm2rCh4
 1o+NcWUV/aHd3tzMM8z2Re5yDcUHCd6JdGymLlDtLptm99xy1szsm048BmOJRaIKslxL
 lvi860AUzI00Pnfg5JtEoBrXqrtQSPUsUh9EmKXfYlMJWPNUJw3d4ovC209lkO6SA99p
 X/LP57W+ckUWMC0S9uOZytXA3x22PNKDbjP30jwoJM0HQbH56tXEh9FyfrTqeUsWepSB
 sOnw==
X-Gm-Message-State: APjAAAW5ORzSQp96wpjVzgyI4ys5Hd7goO02dDVHNbmAAJJu67GthUo2
 YBB1aS3fJ0dg4xzPmNXKfp4=
X-Google-Smtp-Source: APXvYqxlX61hSSz0HiSlUTgrCq6qMROgylXjxnMdE6nxG72EfvzoQN1YiGX2rxvuqTc1X/F1eCxBnw==
X-Received: by 2002:a17:902:8f82:: with SMTP id
 z2mr2887113plo.51.1556791476499; 
 Thu, 02 May 2019 03:04:36 -0700 (PDT)
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
 by smtp.googlemail.com with ESMTPSA id r138sm52386405pfr.2.2019.05.02.03.04.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 03:04:35 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Fix improper SPDX comment style
Date: Thu,  2 May 2019 15:34:12 +0530
Message-Id: <20190502100412.25582-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, mikelley@microsoft.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The SPDX license identifier should have the form
// SPDX-License-Identifier: <SPDX License Expression>
for a .c source file. File hfa384x_usb.c has instead the form
/* SPDX-License-Identifier: <SPDX License Expression> */
which is the form for C header files. Hence this patch corrects it.
Issue identified by checkpatch.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 81a6b0324641..6fde75d4f064 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1) */
+// SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1)
 /* src/prism2/driver/hfa384x_usb.c
  *
  * Functions that talk to the USB variant of the Intersil hfa384x MAC
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
