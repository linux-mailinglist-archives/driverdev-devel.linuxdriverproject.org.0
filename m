Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CB77EC91
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFA9088498;
	Fri,  2 Aug 2019 06:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWsK10Dra1zw; Fri,  2 Aug 2019 06:24:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5860F88415;
	Fri,  2 Aug 2019 06:24:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE7741BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB0418615E
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4sYheuNssSHY for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E9E686103
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:24:57 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t132so35528459pgb.9
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=59h+gUge6S8yVn91fbWMnosNPgFcMjEQHfc/i+SvB9A=;
 b=BbQtyr+16tz520xTKI6yvVAcWK3A5pu9ntkIo68KZQGHKKmvI5xNPt7qKVaW3yHImn
 eOFRWwtKxyczBdhfXd/IENhmXqDF1jgsFb58bVsUGNJO2Lp3ueYYSJ24xkOmeQCz7vny
 CS0/RFTcQ/DTeJZgJdtKEZzjCygWBpCac7U7phmLbgEYT+ta+KJOHOnCbFQiydh+lq80
 WnnV0/X6Df/kMCzy/A8yPV0IlFn9k90AdT0TzOcE//VUkxk7ZReU+Zuux16swwWv45GN
 UKSql61w/uRD72iyYUT7/HctLuO4v/M/Lv4KDBKyRRndkP5PCGWeQONTazbxLue/cxiW
 LtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=59h+gUge6S8yVn91fbWMnosNPgFcMjEQHfc/i+SvB9A=;
 b=Rb5YU1oWGQIZdRPHRJRRMXbmODXu9nybGTs618B20Xm4Q4cyyVZZmcK8kQXX4drKEs
 EWV1jW+YJVzZ43ddPuQu5jE0U/KPxqMWc8HSjC9ROYdi23CExfn2tcN3r5axPXr8bLBW
 FuM1enqqWteYKp/rQY46QFQ7Pog6zUT+NYCXsquuqxblSJ2UmIS6fL0JzQqDOYyn4Ug4
 iFzBHgNVM9W57aKoAxktyeom4FLiahD3eGN8bC77B3gvtJqEBX5Uz/qNTtu+Yptvs2lA
 L7GRTU5CdwEkGuAukAPeI8+KWQt+pEWq8gbaeS5JXl36gUSPVVXEC8kA6DQG27OBlabI
 W+JQ==
X-Gm-Message-State: APjAAAWtmFyjyWBhGoMUw3FMxwHB+2+PAMskj7lhdRKoFTP1+0B2gqLT
 09TeIcfW0RWD07VG/1+tcCM=
X-Google-Smtp-Source: APXvYqx498KIJAxgPXsDT7m2yHk1MT60JXSy8sZ7d7KICMeQ9EV3WbgeU9Tp3cjoPZjnowZs7jO/AA==
X-Received: by 2002:a62:fb18:: with SMTP id x24mr56517987pfm.231.1564727097275; 
 Thu, 01 Aug 2019 23:24:57 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id r15sm80249986pfh.121.2019.08.01.23.24.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:24:56 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/4] staging: rtl8723bs: Change return type of
 hal_btcoex_IsBtExist()
Date: Fri,  2 Aug 2019 11:54:41 +0530
Message-Id: <20190802062444.30384-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Change return type of hal_btcoex_IsBtExist from u8 to bool as its only
possible return values are true and false.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c     | 2 +-
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 8987b5f892c0..73f3d93d2d1a 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1335,7 +1335,7 @@ void hal_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist)
  *true	Enable BT co-exist mechanism
  *false	Disable BT co-exist mechanism
  */
-u8 hal_btcoex_IsBtExist(struct adapter *padapter)
+bool hal_btcoex_IsBtExist(struct adapter *padapter)
 {
 	struct hal_com_data *pHalData;
 
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index 6f7514be998f..a91116e5c549 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -22,7 +22,7 @@ typedef struct _BT_COEXIST
 void DBG_BT_INFO(u8 *dbgmsg);
 
 void hal_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist);
-u8 hal_btcoex_IsBtExist(struct adapter *padapter);
+bool hal_btcoex_IsBtExist(struct adapter *padapter);
 bool hal_btcoex_IsBtDisabled(struct adapter *);
 void hal_btcoex_SetChipType(struct adapter *padapter, u8 chipType);
 void hal_btcoex_SetPgAntNum(struct adapter *padapter, u8 antNum);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
