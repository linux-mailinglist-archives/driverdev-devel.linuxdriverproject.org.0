Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE8C56FFC
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 19:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED7BC861B2;
	Wed, 26 Jun 2019 17:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1i3RItp3UbEu; Wed, 26 Jun 2019 17:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A926886194;
	Wed, 26 Jun 2019 17:52:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 214701BF326
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C30D2156F
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYj8nMNWVOrz for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 17:51:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D6FC20405
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 17:51:59 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id p184so1735047pfp.7
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 10:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PYRuyD1HElut26s/f7k9wlmyAWeFCl38SzC1C9BI8tY=;
 b=XDlX7aiZwQokBsiCMdvUOmEJQsIlxeCrOI3mc84lr5R7kBNv78OIPHppyWoDe5UeNH
 QGAj8tK1u83UflPF+m0lb+fllt8uoyjJhH1wQi218pbhA1yZMinKQjkB4S3O5xksopTG
 ts9als020BCHH6PJmv5n88nInO2k+zonOtT4BxxwdVE3mUCqBWV7rKjA5Rt1K4W6ANYu
 s7I8Suz73D05eUsDH6sQN9+k/6S9yjHlerk5gCLWKy0CAnbU5E1jd9bdUgUtUdEUMEaD
 E8rD4vUuwZrvESBgAwV5b+aYt1BMHx/4vYJd8TVsrAcLZBVdBHEwZ62DinJDao4tNWn5
 jkVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PYRuyD1HElut26s/f7k9wlmyAWeFCl38SzC1C9BI8tY=;
 b=AsrZWpAFPhnsyU5xjVgRe3FADMOf4DYCu66CldYPo4R+F9nNNx0kXbw4MQVeXHZ0ps
 VXcIptUhix75o8YzW954MIQQ5p4hHsF0jHodfBi4HdMo8P2Xmw4UxltYYnmnUd3uDbSQ
 s8SZCy9oBkCChJZVmIhWWPUCfs+UKlUmflaJPx1+IAw3Lsqdlp9X7PGc3dKGASYL522o
 rDvN4ffADQKawZ91lj8LZ2MrXSiOk+bj27Iu60LSMgMDMOGewscVMXHOK6HEMtV85w9Q
 MNTw0M1b+9y0JdPGxMfmC3y4VVos9jdcbA0dgq2JzWe6cdPa+D5MrMUd9KFMAow/8kbn
 Khlw==
X-Gm-Message-State: APjAAAXtS7oxHz7ebXp8j4hHCwpCeVehu43DUKpgnLz6EfcBm7bOhpb3
 NO9x9P8ianXTyu7Gb8oKlyo=
X-Google-Smtp-Source: APXvYqwTJk2prCUh4y+T1TfDWS6E+syxqfxVUP1FpSbpCkIQJbYVwja7RnF65f4XO2fpa2hhxlGJCw==
X-Received: by 2002:a63:1723:: with SMTP id x35mr4053469pgl.233.1561571519161; 
 Wed, 26 Jun 2019 10:51:59 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id s9sm2465026pjp.7.2019.06.26.10.51.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 10:51:58 -0700 (PDT)
Date: Wed, 26 Jun 2019 23:21:55 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: rtl8723b_rf6052: collect return
 status directly
Message-ID: <20190626175155.GA9162@hari-Inspiron-1545>
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

Remove variable rtStatus and return phy_RF6052_Config_ParaFile function
directly

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
index c205345..d0ffe0a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
@@ -194,7 +194,6 @@ static int phy_RF6052_Config_ParaFile(struct adapter *Adapter)
 int PHY_RF6052_Config8723B(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	int rtStatus = _SUCCESS;
 
 	/*  */
 	/*  Initialize general global value */
@@ -208,8 +207,7 @@ int PHY_RF6052_Config8723B(struct adapter *Adapter)
 	/*  */
 	/*  Config BB and RF */
 	/*  */
-	rtStatus = phy_RF6052_Config_ParaFile(Adapter);
-	return rtStatus;
+	return phy_RF6052_Config_ParaFile(Adapter);
 
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
