Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3998A94B04
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 18:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 704AC864C5;
	Mon, 19 Aug 2019 16:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09GmDMs+7Vhz; Mon, 19 Aug 2019 16:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1ED1486786;
	Mon, 19 Aug 2019 16:57:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 031BA1BF867
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 16:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F40688674D
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 16:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ju5yi4SxOvJj for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 16:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8256B864C5
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 16:57:12 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 196so1495635pfz.8
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 09:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=xvTcLjnkXNY0U7N5Qvkal8m7tS4ZRCcCLTcZeCRTKcY=;
 b=clpDbHtFXRz8wQ42Owus5HXV6eB12cbtxeUFbAmP1rI1qnofmD1sep3gbAuSeJS1J5
 b2Y21NFpBsGAhu8l8CvlkSHk01w3VGAsShMeLQhtqOCZtaogmezWlA1r0rM5I72t+yZ7
 ETNpYUpu+oDlrYaWYPAq9pGhgeT1UXkWnn1q0H49bzfU0nmRHkd0/XuS030FYl1VN9+X
 ixdUOHp+ckMuJCWFhBQCsK/3dj5Ru3Sa0ORxdzu/fJNeBvyGGImMrGO2EhaOoRm2K5Qt
 /fheNLNhhBD3Zq0Ua3LL5M7DfU2Qgd2J19wzA4MyfcjGaTNHHJI/VDoCnc0cjsqochcu
 0XXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=xvTcLjnkXNY0U7N5Qvkal8m7tS4ZRCcCLTcZeCRTKcY=;
 b=X6FLkfDEDMUjSYg5+hhfamI9r8gPSozuTDP8UEZEd/ZF3HWbZSJDjiMK1OWvkSoRwJ
 I4Lzq6FOxi0379YFvCW5k7LR/wG8BGBClzXOl7fUYCf7FjMGA7R+s4PBZRX8/IPvvUNy
 Hp9EIdor2nu4CB5XJeAlkmbO+3aVCU48ydsmVJWgAP/9EJpLIzyaYGdhpmrz0+Tp8FTz
 n1fccf4dub1++wjrWRA8cpyh0HdYVv84Mh8jh3OJJq/fmCqhxXQSFBRs/XCqhB1k+uwk
 yVJROuujmOe4ycfs+xaj4zQ9TmWoQM6BPlunsbNcaDXjxRRk74reyHJLfsVYQssBtp0l
 fCpw==
X-Gm-Message-State: APjAAAU4pHntJZM23KecI8aZiwPfAnDy28kYHz1fFGZRKXX/1VGUQyuA
 hgoUpfdZMU9t4Msqip2Lrn4=
X-Google-Smtp-Source: APXvYqyPx7OIhsMLPg+yGcZQQHQ2HDF0QCfz0tvt6kaxvDEHNghyC8WRB/jSyI1Mt5vJ4v5REPeqLg==
X-Received: by 2002:a62:764f:: with SMTP id r76mr24583727pfc.149.1566233832013; 
 Mon, 19 Aug 2019 09:57:12 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.90.246])
 by smtp.gmail.com with ESMTPSA id m9sm17412035pfh.84.2019.08.19.09.57.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 09:57:10 -0700 (PDT)
Date: Mon, 19 Aug 2019 22:27:05 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saurav Girepunje <saurav.girepunje@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: Remove unneeded declaration WFD_OUI
Message-ID: <20190819165705.GA5782@hari-Inspiron-1545>
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

Remove unneeded declaration "extern unsigned char WFD_OUI"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 02f5478..6d18d23 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -13,7 +13,6 @@ extern unsigned char RTW_WPA_OUI[];
 extern unsigned char WMM_OUI[];
 extern unsigned char WPS_OUI[];
 extern unsigned char P2P_OUI[];
-extern unsigned char WFD_OUI[];
 
 void init_mlme_ap_info(struct adapter *padapter)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
