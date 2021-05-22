Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC5438D5B5
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 May 2021 13:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CBEA4037F;
	Sat, 22 May 2021 11:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxPoQcdLsVI7; Sat, 22 May 2021 11:50:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D89CD4019A;
	Sat, 22 May 2021 11:50:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 855771BF3F2
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 11:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7576283C2F
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 11:50:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id up984QAF3qqy for <devel@linuxdriverproject.org>;
 Sat, 22 May 2021 11:50:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0702C83B82
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 11:50:30 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id q6so12314828pjj.2
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 04:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EXEY1jCigdrt8od6A21PdE5I+uoRmWNmBz9ovEKdk84=;
 b=pIvPVO5tzkRXfxucA8+73KgiIQbs12uOZ7B1BB16/QZoAkxmT/8BJrnSYzB+G0/Qhu
 MpzcPoJcKGj9Qyu2jcXVb9L0FwIcFURPvoMQO6l9AsSWmzo0HofQ/7uKy4DV5UxUa0M9
 gyEDvBoMx/21hfLM3KNkxWZcnf9HPN/WgaLvjO8hYAiRiQYuBnL9OZgD1raorJIkYnFe
 5mCn1ZJhtXwMnrhsOuVYo8/cOkiIma1Fj2wxURdmhEVSMxM2zVaC8jhuINUCiOFOytN0
 3o6Qn24FzkqRHr+pS4AhFrW/A+fBJj3ibD7RMXGu8kiQ92/gJBiVrm6VtewmNmaHUzd5
 UCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EXEY1jCigdrt8od6A21PdE5I+uoRmWNmBz9ovEKdk84=;
 b=b1+ChSLk0uyL323nKLZ52/GThnfD0LlARJI8trBko6CLXcv1aC2PGIFyIAbkWF30bI
 A9a9Ve1x2C8Czs8QI67LgyjY8HSwwdIkJveib+yphDBaMuR2dzAwo1fLUIJpecjpZI6i
 x4DZN53/63MR1nn6vgYwoo3mUMTsXHV1OotOj+K6esEUE8hllUgm6hTFweQYhy/xEfgH
 RmJTzonRX9MUbnuWNT7yq1UBR4wqA/2dqoONHALRfpS/7kIXTcmolt8wdA0Vb0JEDcCw
 TFUxmb/+qlU5i+RoEAuinmKbBEYca05nh1wr8+TqMVf8ESABNj7BFVZYIec5MeIexIK+
 94Xw==
X-Gm-Message-State: AOAM531CCjbyAkFPoZYQi1AohqXO3JAKvNi/CuK0tO52RH+njBC8WkBI
 ITMesMC0/o6y7yxz/y/3IpA=
X-Google-Smtp-Source: ABdhPJz6uXgbEA7//HP1MZM/r7YUOfGZZeKKYaJU2+ZGkopNO5HhS9Zs7yAh6FMB9xeCG6TUNDaIhQ==
X-Received: by 2002:a17:902:b412:b029:ef:1737:ed with SMTP id
 x18-20020a170902b412b02900ef173700edmr17168450plr.43.1621684230469; 
 Sat, 22 May 2021 04:50:30 -0700 (PDT)
Received: from localhost.localdomain ([2001:2d8:ed38:3146:f546:7ddc:a2b2:92ce])
 by smtp.gmail.com with ESMTPSA id c195sm6823138pfb.144.2021.05.22.04.50.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 May 2021 04:50:30 -0700 (PDT)
From: tco0427 <a29661498@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Fixed a coding style issue - missing a blank line after
 declarations
Date: Sat, 22 May 2021 20:49:50 +0900
Message-Id: <20210522114950.26772-1-a29661498@gmail.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
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
Cc: devel@driverdev.osuosl.org, tco0427 <a29661498@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index e1a8f8b47edd..40d99644ddc7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1337,6 +1337,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 static void dynamic_chk_wk_hdl(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv;
+    
 	pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
-- 
2.30.1 (Apple Git-130)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
