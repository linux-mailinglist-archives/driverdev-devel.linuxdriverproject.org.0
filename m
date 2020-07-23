Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE43A22AA1E
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 09:56:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F5E389AB2;
	Thu, 23 Jul 2020 07:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N1dzWJWS2YD5; Thu, 23 Jul 2020 07:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D3F989A9A;
	Thu, 23 Jul 2020 07:55:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D03B61BF350
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 07:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CCEDE879DD
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 07:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ghMHzzRavNUV for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 07:55:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1AD96879A3
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 07:55:46 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y3so4202801wrl.4
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 00:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YYiA3UwEeiLQemkL/9iQjByUGIB29wIzr9SE8ieESv4=;
 b=U/HoggJKdye7uH+NKT/KmgJSF3B2iQN794CjYp4NyV5DAUziAOxxXKE3wQktPqsfw5
 eYE0rXP3eJGVYU9hAHH/4YdcatzZgHDzR4s/XDdXBHZ9cU3IyLo0gjViev8kLUjfc5oM
 OC/+q3as2EyfLmzKCImYm8yPA1rDdW2TEc642SNg5X6gvG2Zjw2t0nL+p2VugG5HaLBu
 yyXNPUWmKuxRgNoRSIfRDu8ihdiMKWgZ6rRODswvIoTN9Zvg9ZEGePxI3cKHH92mNrOa
 ZPGBZZ9w0rGf/FvxpT6LIp0btCcpr6zmlHuRqR1+SNN5SqB48MS5PibSl6FSWNIuygan
 rd1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YYiA3UwEeiLQemkL/9iQjByUGIB29wIzr9SE8ieESv4=;
 b=PrLthQhS/A+NPaVGlYbTEw1ffcPcKRJ6ZOV4LXvaDG8sCx9y6qo7vpyEb6IzczSaYU
 OC/jPyPxmIrnD2SeY06bHrRGPjN4WswyM8nOJ9n723C0zjnDy+ojMbTJGakjzTTGaAid
 JDrEnhBexCT2Pmbpw1mPC7EDcRUWXvenUqRoDj/gdZlacNbr3jYvyz0zxqVR4xChsRTu
 ACb58mmRgSiSxpfqrXqNwRnHP2R40AQ3XZhcD8j1HCv2CfBPBeZDTMeM9DAM0P3IdnWk
 Qebzy3wkdleve1butZ86fX4ix1lZ7lqcLAGRI4sC7S0/QGnC/4T7KiosSBErJD/HzGcu
 Zqsg==
X-Gm-Message-State: AOAM5321jVg0ZF8zwP5E4xN5PMtaKVC/pWLqCCLhRX+RvpBjDwscg6cS
 vdZEvpy66qXlPlb0a4Tk/LA=
X-Google-Smtp-Source: ABdhPJyjQBWlA2gbvgFi8dz+i79hfadBVdFwhnb4BvE2LNDd/0B2rXIy1O+EdqgEYBzBk5tIc1+4GA==
X-Received: by 2002:a5d:4a0b:: with SMTP id m11mr2766059wrq.407.1595490944446; 
 Thu, 23 Jul 2020 00:55:44 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-164.178.006.pools.vodafone-ip.de. [178.6.252.164])
 by smtp.gmail.com with ESMTPSA id j75sm2816691wrj.22.2020.07.23.00.55.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 00:55:43 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: cleanup whitespace in declarations
Date: Thu, 23 Jul 2020 09:52:43 +0200
Message-Id: <20200723075243.21924-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200723075243.21924-1-straube.linux@gmail.com>
References: <20200723075243.21924-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace tabs with spaces in declarations to cleanup whitespace
in rtl8188eu_recv.c.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
index ab8313cf5bf0..7badfc2e45df 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
@@ -16,10 +16,10 @@
 
 #include <rtl8188e_hal.h>
 
-int	rtw_hal_init_recv_priv(struct adapter *padapter)
+int rtw_hal_init_recv_priv(struct adapter *padapter)
 {
-	struct recv_priv	*precvpriv = &padapter->recvpriv;
-	int	i, res = _SUCCESS;
+	struct recv_priv *precvpriv = &padapter->recvpriv;
+	int i, res = _SUCCESS;
 	struct recv_buf *precvbuf;
 
 	tasklet_init(&precvpriv->recv_tasklet, rtl8188eu_recv_tasklet,
@@ -69,9 +69,9 @@ int	rtw_hal_init_recv_priv(struct adapter *padapter)
 
 void rtw_hal_free_recv_priv(struct adapter *padapter)
 {
-	int	i;
-	struct recv_buf	*precvbuf;
-	struct recv_priv	*precvpriv = &padapter->recvpriv;
+	int i;
+	struct recv_buf *precvbuf;
+	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	precvbuf = precvpriv->precv_buf;
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
