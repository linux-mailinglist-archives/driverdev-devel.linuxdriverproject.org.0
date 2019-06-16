Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C4F472BC
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 04:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E99972040A;
	Sun, 16 Jun 2019 02:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVgK1FrpjQlD; Sun, 16 Jun 2019 02:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85795203F9;
	Sun, 16 Jun 2019 02:54:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5ADE01BF5A4
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 02:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5163285992
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 02:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oz36JDPVEoHd for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 02:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCB6B8561D
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 02:54:01 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p1so2658039plo.2
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 19:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rSYojKKqNckbYG/tUygNLocVuWuVohmc/L+Qes76CYE=;
 b=azL1fWDj/VaFfL9a+EU3dyAzxR2XAIeqzYD3ZEfAEuIxBq8E23eXJQdpJkYc+Wx1BE
 97YGhEtWi9nx5NqEOzEdmY6Sv2Kk3iaf/A8kvtS7grPSrqU47tDOvHWxK8tRw2KgU5vh
 8iFGuRL9QJCe5fNSRXy6MR/ufNPt/qltALYE02ZfUDxkSFcDO+Snm0R/k+KOpkMHZsHw
 f+fwt97b2Yn6wU1xxB/nxl5YW6vvaV7Gc8c19T+NVgpWoxEUbrsAYUPoIOD/3r8dgI8l
 LonnMpdycxR5z7OC04Lt30qQat5TZ2uL+x6UswOzFsELE6q7YpJfJI2h+zNPU6lSFGiv
 5+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rSYojKKqNckbYG/tUygNLocVuWuVohmc/L+Qes76CYE=;
 b=H7OmPNfbSJG9WTDVOQkO1futkpwxgWL7J9mGuE8bvVFT6vkC0QzJcfHObs1EJ20oS8
 W5gQR5EVzGD3uX7U4AHb+wC0rDOBkavBqRsIoDMZFaNOZpJFgg9ymoJ2550lLXXLKtwm
 4vy6omNHv5fjJ8fWYnRV/ePd+C8oWs8Nt+1k/oYU1rxHmXXZWqH3+2ermUqo9re3x5Qj
 LnBFY8LMw/2ryZZtegxOiqeLFZiS3AvJ4c2IqBDAu89ZMMq6PTXPgoaEbNX5VUiklbc1
 nzYnfoEVteWjksVEFOZ2ahWyVCCeagGgQ6nEmUEBdxRzdSD+KrqD2g7+rX7XoZnki2oi
 Vsjw==
X-Gm-Message-State: APjAAAVHv6e24r6Szz4N9ai7e3WHI08Tp9oCD6xWu17q0gekiMZZMu2+
 NiIsTumlQPfkiD/I3t9gcOg=
X-Google-Smtp-Source: APXvYqysiXGChPoHpbyxkJa7fBtYWM9b/WTr83QA/2CtymmU9Hk/xLsaSFBSvknMGRD1LOjVz59NkA==
X-Received: by 2002:a17:902:a506:: with SMTP id
 s6mr26553650plq.87.1560653641324; 
 Sat, 15 Jun 2019 19:54:01 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id e127sm7464489pfe.98.2019.06.15.19.53.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 19:54:00 -0700 (PDT)
Date: Sun, 16 Jun 2019 08:23:55 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Himadri Pandya <himadri18.07@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [Patch v2 1/2] staging: rtl8723bs: hal: Remove return type of
 initrecvbuf
Message-ID: <20190616025355.GA12008@hari-Inspiron-1545>
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

change return of initrecvbuf from s32 to void. As this function always
returns SUCCESS .

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
changes in v2: break the patch for specific change
----
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index b269de5..07bee19 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -10,14 +10,12 @@
 #include <rtw_debug.h>
 #include <rtl8723b_hal.h>
 
-static s32 initrecvbuf(struct recv_buf *precvbuf, struct adapter *padapter)
+static void initrecvbuf(struct recv_buf *precvbuf, struct adapter *padapter)
 {
 	INIT_LIST_HEAD(&precvbuf->list);
 	spin_lock_init(&precvbuf->recvbuf_lock);
 
 	precvbuf->adapter = padapter;
-
-	return _SUCCESS;
 }
 
 static void update_recvframe_attrib(struct adapter *padapter,
@@ -435,9 +433,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 	/*  init each recv buffer */
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
-		res = initrecvbuf(precvbuf, padapter);
-		if (res == _FAIL)
-			break;
+		initrecvbuf(precvbuf, padapter);
 
 		if (!precvbuf->pskb) {
 			SIZE_PTR tmpaddr = 0;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
