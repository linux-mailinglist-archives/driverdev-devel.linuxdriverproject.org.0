Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C91CCEE0C
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 22:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C292A87C69;
	Mon,  7 Oct 2019 20:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id grNUJJBHuSIT; Mon,  7 Oct 2019 20:53:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D0D587BEE;
	Mon,  7 Oct 2019 20:53:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2432A1BF387
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 20:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C0CE81B82
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 20:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtjmyxGcCusD for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 20:53:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC24E816D2
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 20:52:59 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p7so866906wmp.4
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 13:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yGegubLDgRiHrQ9zNZeb9rG5UTn4EJm1O9mdTVGELtA=;
 b=o3TB8/x9LdCW2ttzTgWs1cgKCyWgZZ63WidwsCumjLdEXwnyo32PE0M53V8e5qz8ja
 cdiW/YmEW1QTPJTrJKK/AXCXz1sO4SJASGxG+ZRcvZnaLEVp/xPOMJL7YmjP0iPbBkjx
 L0Bpt/efowGvzV+TciIYTqOhQDBtLgdsIpYJfkckpTB45E67kz+t7Ta1KOOM+0rhiJcd
 fZy7hkZyRcwEE2BVXppOT1tPGk2w2KUf97b6IoaYCEdApLsMZipo18JKHQAfgyNLorol
 JycYwndVNqkkL9Hgem2dgVAfOVylD89MffWBqrpKtwvJVf2muSjQPD7HDm678mB7m5p/
 LNiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yGegubLDgRiHrQ9zNZeb9rG5UTn4EJm1O9mdTVGELtA=;
 b=m8AL1xCLJ6+j4395Bf6Se0hPTOzGYiM6h61Q2o3Hm20FcA3dPIkxQX7IbSBl2cZutO
 xa8emFEKe75wHqmXS7Xt1l8cxZRojmpurncYkP+QUM13AzHl+eK9Nnp+8501neFqXpsY
 DJ29kS7RxNikHEpA7sgHyc3M4+Td93Gnsv3XI9nus+vjWJBlIYTyG3K8XdE2lANCjzkd
 0uRwxr5D9iEzBbzFvFXLh1qjm2MSdigCwtktcJ3yJWlHgrQnxxF/57MSjx78S4OL80uA
 ym4XF/Z7GMq0eRu9DP3FgJNcOOG2TqaN9bXuTF/33Mx4vbib9XjmnOQHYkQUgjvvs01R
 SL+w==
X-Gm-Message-State: APjAAAXjaHHm7wPp3mO6pP1PhQ9IaYc5zu8PDFqK+u+gGh5iyFIsk7Lj
 RdhmEgFiOHGzSLfwsvdDxA==
X-Google-Smtp-Source: APXvYqxx/YEbzYqqGs2Fsl4qXw42a0w/gpz+TYtf+1oUyOQG1GGDhH7ruMO1XUXTfdXr0n8XHx5DTQ==
X-Received: by 2002:a7b:c10b:: with SMTP id w11mr854529wmi.108.1570481578097; 
 Mon, 07 Oct 2019 13:52:58 -0700 (PDT)
Received: from ninjahub.lan (host-92-15-175-166.as43234.net. [92.15.175.166])
 by smtp.googlemail.com with ESMTPSA id
 a2sm22961867wrt.45.2019.10.07.13.52.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 13:52:57 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Add comment to lock declaration
Date: Mon,  7 Oct 2019 21:52:48 +0100
Message-Id: <20191007205248.24466-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add comment to spinlock declaration to fix warning issued by checkpatch.pl
"CHECK: spinlock_t definition without comment".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index 0c4325073c63..960d8709aada 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -160,7 +160,7 @@ struct _adapter {
 	int pid; /*process id from UI*/
 	struct work_struct wk_filter_rx_ff0;
 	u8 blnEnableRxFF0Filter;
-	spinlock_t lock_rx_ff0_filter;
+	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/
 	const struct firmware *fw;
 	struct usb_interface *pusb_intf;
 	struct mutex mutex_start;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
