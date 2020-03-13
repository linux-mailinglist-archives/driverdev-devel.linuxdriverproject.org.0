Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2812F184534
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 11:49:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75B0687210;
	Fri, 13 Mar 2020 10:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4IiYBbD5BzZf; Fri, 13 Mar 2020 10:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BBF78712F;
	Fri, 13 Mar 2020 10:49:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A87B1BF349
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3750D876BE
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4xxAc1cjm1ED for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 10:49:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9EB088AF6
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 10:49:34 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t3so4062158plz.9
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 03:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
 b=vbpA6qyCkQZysoUFRYL8Xxn2pnO4dRlSazfhuWfmQUOk9n6sko2frj+BH233MglTZb
 76MOtY7REhMlznesQtdgjfFmpKRwaUVV8WfwRISpiZ5opVQaboLUU3gEb9pvqpcI6Iss
 0wASXvaqSwh9PcouLcW3OCaniq4chLiNblYClT0UDpq3R7b+zTSjGyQvdQ06VZwZgDPf
 tbXcKCtTmSvOUWIv0a6U9tMW49xwSAIVjFsDnAFiv9Ie+5nCAWpBNzpsgh44t1dQiihT
 9xaQTakJCyH3KphdV7CB9fj4UIT5c2jQE5wgMbTPi+qWPmUnG2ka9bU1bXwL7AsjXxyB
 lV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
 b=N8pyg/DrOhMBa6RW14IDrYqqMgZP+aVYNP3vFnWzMlbGwitmb81Nl4Vn8QNPTArNCC
 tM35AUbUsfARyStk/1HOZLjb6vcbxkokgVaDLS5Aceg9NxCysXIDQ5rm6LrjXZk37K/4
 xY/lwdQVsWqiJkGBkCFiYzEgzxwUPxFyAcPKDjBTQehLEPnq9bEX/tBvFk9u6Xsy2g7w
 rSHwppWS4ak4r33OudaTWFEoS57Ak2Rndt7Ya6FUDTJztFAPxLzMyyVJs3wkLbzzdX31
 /SRoNwo2jCL6aNwTsEB3nhWbYHHHMwI4wqDSqzVyJR7i/Wh+LfInWF9moLsNf40XoIS7
 BLNg==
X-Gm-Message-State: ANhLgQ2rJNqqNkO3chFhJTit+iHuW3VVkueAaNQ7oiuPB5+7+Um9yzfW
 EfL5yS9jH/p7gpKgvmxJ0WQ=
X-Google-Smtp-Source: ADFU+vsG1QzFvwnpFiWnGkJfzVKicGJiYdRWpIUDd9jbdqYy1wC8kdBqYgh+gepJTEsfs1GQ0LVd0A==
X-Received: by 2002:a17:902:a408:: with SMTP id
 p8mr12893133plq.132.1584096574274; 
 Fri, 13 Mar 2020 03:49:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
 by smtp.gmail.com with ESMTPSA id
 gx7sm11718756pjb.16.2020.03.13.03.49.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 03:49:33 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, shreeya.patel23498@gmail.com, Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
Date: Fri, 13 Mar 2020 16:19:20 +0530
Message-Id: <20200313104920.19974-1-shreeya.patel23498@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove if and else conditions since both are leading to the
initialization of "valueDMATimeout" and "valueDMAPageCount" with
the same value.

Found using coccinelle script.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2
  - Remove unnecessary comments.

 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e813382e78a6..4894f7d9a1d4 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,8 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
