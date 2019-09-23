Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB610BBC60
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 21:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA21B876A0;
	Mon, 23 Sep 2019 19:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3bOaGhvlyMyi; Mon, 23 Sep 2019 19:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 054218763F;
	Mon, 23 Sep 2019 19:48:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D50A91BF2A3
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 19:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A674C8763E
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 19:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FuhgSJDJglbA for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 19:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BED087634
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 19:48:42 +0000 (UTC)
Received: from mail-pg1-f200.google.com ([209.85.215.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iCUK8-0000jF-HX
 for devel@driverdev.osuosl.org; Mon, 23 Sep 2019 19:48:40 +0000
Received: by mail-pg1-f200.google.com with SMTP id d3so6313486pgv.9
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 12:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1S3tbuayATJvDzZnpsz9pe1S0VUYhd/3QByEuRe2Xx4=;
 b=bkUk0HVNQD3KdJCxqJh1kYW/CfcGwKwu6TJ4V1+rnPYC6XvUdwa04FKUvTyT6rWaxQ
 qjoWeM5LB/NBJYMkWN6yiWkG+Cs6O17f0MM3r7V5raukS3rGlu2Ti+J2j/SXlE45Ibqp
 Zqf/yj2Hjj0XgQYc22Uk27Ippf6OZ7u1AzTUid7Lnefhy0LJncwzB1AMl6zuXhXUuwoo
 rbJbDfXX/AVIY2gWnd7yxkX7Ys+bll42KttzMHrLq07tmDqdGQo2HVc+7Jb24pWaxAnY
 yDOJ7y505tCUi+HMe7MlrNijwkhlWpBQ4aCdYNwkAiJQy/UROmVGn090SUI6Nodtvwbs
 g3Vg==
X-Gm-Message-State: APjAAAW9DmDlVu0FgwfZeEzWYaKLK05NtDChpSddWc47lfrxqxSDkFtp
 o1cWOkYVfTvU5ui5ZT6LGIbZ+WT0RwmXtrbUQta9SBqQ5a1qiptkEEUlqhuPnEcEO81N982aNmV
 bioiyOxH8kDwN3CLl/uhVQLIJslyWtAGl2J8SX54=
X-Received: by 2002:a62:3586:: with SMTP id c128mr1393912pfa.105.1569268119373; 
 Mon, 23 Sep 2019 12:48:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIyO7oQ4DlmMEmBB+e51zn7In6laZj0i5/rIJzv56lsoRzXrY1pqufNNLtuyies+wIQgTOKw==
X-Received: by 2002:a62:3586:: with SMTP id c128mr1393900pfa.105.1569268119227; 
 Mon, 23 Sep 2019 12:48:39 -0700 (PDT)
Received: from localhost.localdomain (c-71-63-131-226.hsd1.or.comcast.net.
 [71.63.131.226])
 by smtp.gmail.com with ESMTPSA id g12sm16477924pfb.97.2019.09.23.12.48.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 12:48:38 -0700 (PDT)
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: remove dead code in do-while conditional
 step
Date: Mon, 23 Sep 2019 12:48:06 -0700
Message-Id: <20190923194806.25347-1-connor.kuehl@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The local variable 'bcmd_down' is always set to true almost immediately
before the do-while's condition is checked. As a result, !bcmd_down
evaluates to false which short circuits the logical AND operator meaning
that the second operand is never reached and is therefore dead code.

Addresses-Coverity: ("Logically dead code")

Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 47352f210c0b..a4b317937b23 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -48,7 +48,6 @@ static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
 static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer)
 {
 	u8 bcmd_down = false;
-	s32 retry_cnts = 100;
 	u8 h2c_box_num;
 	u32 msgbox_addr;
 	u32 msgbox_ex_addr;
@@ -103,7 +102,7 @@ static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *p
 		adapt->HalData->LastHMEBoxNum =
 			(h2c_box_num+1) % RTL88E_MAX_H2C_BOX_NUMS;
 
-	} while ((!bcmd_down) && (retry_cnts--));
+	} while (!bcmd_down);
 
 	ret = _SUCCESS;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
