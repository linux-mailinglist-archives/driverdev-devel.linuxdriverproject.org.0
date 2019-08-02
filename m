Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E267EC93
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C41622EC1;
	Fri,  2 Aug 2019 06:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1WMwOTXr3tE; Fri,  2 Aug 2019 06:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C9FD920397;
	Fri,  2 Aug 2019 06:25:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F33061BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F06A6878F7
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id njKEJxytmyBF for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:25:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 466E687863
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:25:02 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i189so35480201pfg.10
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GWkEvQ9bruiPcQ7KRT0J4cW9TcBFeu+4E8Y/QnJoZ58=;
 b=uHplg+N97qiGeanIjMNdUCdWIECT5bKZlPG777G992ikFR9lNzDkRBYMUsyDwm6nmD
 DngBTE7aCyU9Xa0RiiDPHru/abD8hHSCeP6b0O9sv4b/yPiJ8TER3QkPH4HJUmqq6BH9
 80DtuYa1XHw1ikNqddQRRoxAeT5RoNVSIYRSZ34S99i4eJxlVMfheM2yCcM07hL4ywkH
 CqNeJJXL3FAs17UNxoMjtrt/35Ha/+JKooHTK4rf0N49Vye6ga8rgSDZf5zxBgqotwxK
 //dN4E22kU/V29O1SNahfkkZk0PMTPo3Cxv5HwrL+LDcZHZGbPXzy160/Da+GnJqKhLd
 WFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GWkEvQ9bruiPcQ7KRT0J4cW9TcBFeu+4E8Y/QnJoZ58=;
 b=AkoUkf96cqyJBRHjK35VFrKSeY3R22daoycPkNCsuq+N3J63gpTkqQqut3fBtaM0MP
 uvFgjKewysiv427z7XGO0lBn+8rZr1bhLc+CXmwWeW8dXbnttDvMX/Nhz/ZfwPpfxcRy
 dm3b+J0mp6ZPWD7ojlHjmdxip29qbzyzYOEIxmYfhbOA25gtq9iC/kAXYdip860YsG+r
 YDYHTdqNY1nnwdt6Sz4V1O9V+wQYnGkbf14ljbiwIT1xn1vP6QzyVAbMUmlJRCHCEj2o
 8eb/rEnIItIcaD+/I5B1VMbpvFnaW9/ij1lVfe7QYwwF50WAdfxHasrRES9Pvu/saNmt
 J67g==
X-Gm-Message-State: APjAAAVZ6YZ7jbFuXLkUoFfWV0aUo8ELv2Mx8jPbChmh/24edgmpsHtX
 oPd56ALhvr6hsUk/I6VRG6VMN2mZxQY=
X-Google-Smtp-Source: APXvYqxCrMftZrescKfSc2YQGv6w4a32YgqMiOFlG4ZcOxW8FtGhP97LGJWrP8NXW+fXUHXXSdH9EQ==
X-Received: by 2002:a17:90a:8985:: with SMTP id
 v5mr2697996pjn.136.1564727101973; 
 Thu, 01 Aug 2019 23:25:01 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id r15sm80249986pfh.121.2019.08.01.23.24.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:25:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 3/4] staging: rtl8723bs: Change return type of
 hal_btcoex_IsLpsOn()
Date: Fri,  2 Aug 2019 11:54:43 +0530
Message-Id: <20190802062444.30384-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802062444.30384-1-nishkadg.linux@gmail.com>
References: <20190802062444.30384-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of hal_btcoex_IsLpsOn from u8 to bool as the
function only returns boolean values.
Modify a comparison of a boolean value to false to instead check that
boolean value directly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c     | 4 ++--
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 85f5371d349b..d2147a65c1cd 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1489,9 +1489,9 @@ bool hal_btcoex_IsBtControlLps(struct adapter *padapter)
 	return false;
 }
 
-u8 hal_btcoex_IsLpsOn(struct adapter *padapter)
+bool hal_btcoex_IsLpsOn(struct adapter *padapter)
 {
-	if (hal_btcoex_IsBtExist(padapter) == false)
+	if (!hal_btcoex_IsBtExist(padapter))
 		return false;
 
 	if (GLBtCoexist.btInfo.bBtDisabled)
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index da25f8e98ec7..a0b502c34a25 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -48,7 +48,7 @@ void hal_btcoex_Handler(struct adapter *padapter);
 s32 hal_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter);
 void hal_btcoex_SetManualControl(struct adapter *padapter, u8 bmanual);
 bool hal_btcoex_IsBtControlLps(struct adapter *padapter);
-u8 hal_btcoex_IsLpsOn(struct adapter *);
+bool hal_btcoex_IsLpsOn(struct adapter *padapter);
 u8 hal_btcoex_RpwmVal(struct adapter *);
 u8 hal_btcoex_LpsVal(struct adapter *);
 u32 hal_btcoex_GetRaMask(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
