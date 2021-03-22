Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA688344739
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:32:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5328082FB1;
	Mon, 22 Mar 2021 14:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iE4Ffkbl0ari; Mon, 22 Mar 2021 14:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D49E582CDE;
	Mon, 22 Mar 2021 14:32:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 661AD1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5270960659
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DnRKdRvguhKa for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DFA8605C6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:10 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id b16so19627892eds.7
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uKw0Cn2bVUGNBja2BXUS2+diqo/9Y5C7FlOuogFpzRU=;
 b=OG+WbZ8x4tSEntH3GU6lZ9t+gPMinmyYorq5TPfaytK92P2Wu6+Jv/5COZfyrJ3pMv
 Y9usal3lsnmTndA2ej0y1P+thj901XSQebg7palEo3vif4Hxs48gcWnLHvUbjCgTl5rQ
 p3NvpuTO57xNWy0T9CXf5KqLbMxqGDv6luJFuU6de3r6friwp3GjP/0vqjw+3WVOqme7
 s/I8cjA4DWf7vsfIMs1qTGMkc6aK0wlad/oFfXJwzIik0Hg/zbCvFwH9LDbe4tmqHgl6
 t7ANNMYsqjMcXqJ5utFV1Ex6wLLPZYaVbC+NlKYxQ2YlqKH0Fv6R8c966NHQ808fWXeQ
 L0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uKw0Cn2bVUGNBja2BXUS2+diqo/9Y5C7FlOuogFpzRU=;
 b=a8cyaysNZ8DdVxD3Fd5t40Cx4Wv7CN/pmBifnW7hlYEyPMGJ/aW/4dfuEDpxqXlRNz
 5FAJ2r9SMGJjMo8szpeiBVDJB2pJ7Inv15ENTfG7URSJvcJyJjhf1kUdpt79FKpwr/AD
 LvCq+WHfNUcxH6Iz6go6ArCmHSfHwQx7L66tfHAftJRUOjKU5MITest0+v7bGMr5Q3DD
 tq3+ksFp05ElN50APfbmgbeMwCHfiqea0k6xjYSMZvWjEjfNQoTeGjr2VIx+UfK2sPMo
 emYhj4kCJyylF5ebCPHqFkPPPMBn2IicVmXpPzDZo1cEYQt53fGUSc6zq+BTqmp13jTc
 WLDQ==
X-Gm-Message-State: AOAM531k+Ado0pfNmrp2yu2GPQUoZTLyUTOBLXGwIDsRCxsIrp3M2AV2
 MFUNy0IKK6lFwgkg3FlnfHk=
X-Google-Smtp-Source: ABdhPJyt3djyirIo9/J1qUN7JFmjH/4EU7CmlNXB6FxLmUSlEjrsw3Mgf0b+O91RQXAVrnuW+x5esw==
X-Received: by 2002:aa7:d484:: with SMTP id b4mr26269816edr.63.1616423528964; 
 Mon, 22 Mar 2021 07:32:08 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id r17sm9948696ejz.109.2021.03.22.07.32.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:08 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/11] staging: rtl8723bs: delete extern declarations in
 core/rtw_ap.c
Date: Mon, 22 Mar 2021 15:31:39 +0100
Message-Id: <e48480113c7ffc5128d867787bb3f73b3eb505ae.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

delete extern declaration in .c file (RTW_WPA_OUI) and
fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
14: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:14:
+extern unsigned char WMM_OUI[];
--
WARNING: externs should be avoided in .c files
15: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:15:
+extern unsigned char WPS_OUI[];
--
WARNING: externs should be avoided in .c files
16: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:16:
+extern unsigned char P2P_OUI[];

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index a01b68274fa0..3cd9c61eec99 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -10,11 +10,6 @@
 #include <rtw_debug.h>
 #include <asm/unaligned.h>
 
-extern unsigned char RTW_WPA_OUI[];
-extern unsigned char WMM_OUI[];
-extern unsigned char WPS_OUI[];
-extern unsigned char P2P_OUI[];
-
 void init_mlme_ap_info(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
