Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A24D2B22
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 15:21:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C89E885E8;
	Thu, 10 Oct 2019 13:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XrmuD4eqtIiA; Thu, 10 Oct 2019 13:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16177885CA;
	Thu, 10 Oct 2019 13:21:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 468971BF84C
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 13:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42E2586BA6
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 13:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tgvUA6Wux8A4 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 13:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B59CA86BA1
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 13:21:18 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 205so3910135pfw.2
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 06:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sNkcoz2qQQJzkBN7TPFJIs9Ujhr7nKC1loZQV/g1Ccw=;
 b=TThZtPzWNwtue6y9ZvOvLq6kR6ynBi2BIcoQKTknfEa20G6yABruMP0e6OSvYmKL1R
 xy0qmWhh+Dmj0wdywBiBYLDq5/efZroBtm0ys74wBJ363qjZH0aw/8QmT/GqT2lFbcKV
 xJl81Bb/6SqayixA/EZLwSqDCWirabUa8la2y3XTHjMI2l5KxKQ5FD9eNfwc/srsgnEA
 eOe8yAUdtzhVwqk+kSss+GeHaoy3FEx/gNw3paIOBUl4GsBPvxuWyEA4DwIMfOS4lbad
 y0APRmiuziMLmxPC/2afgJiUOqMLawyGSptp0hQerIjkLpff9qUJf9dsj+WDBxzOq23G
 YN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sNkcoz2qQQJzkBN7TPFJIs9Ujhr7nKC1loZQV/g1Ccw=;
 b=AfTzi3GyZ0YzOn4pFAsI7DAFqNlNTEyX46oYAubBqAOyuRn+3NUJZng/kJaaZO+W/D
 fVk9/FxMliClHMp8oCzA75pamNqlGDqEU4guH/gMXRk7dP8yZ+75XCDyKo0FQBS1uGp5
 PFgcjthOFbapOxIZpljQ/qpyULcx3GXW/1zPNymI8HXAINNjnzCjxOuI470Oxrzkv3cw
 2s/KQHGozPfXn992Zj90f9yr6YtYs197oQILqH6vHpxZr3GuihcHJ3AH0kd7srGDseZ5
 lLXpmSm3Oh1SzbwDVkFe1xnAqFXmkikKQPXOsQ/WqfKElTQkFsLYJTopINhknabcJd6D
 XwUw==
X-Gm-Message-State: APjAAAV1MlPyXk1zkZRaXeW4XaEFcw5xqfE49joDx+ALX7UhworL/gOG
 gKyxBZ675Z1Li33LL8mU1lHWqf7gUcRImg==
X-Google-Smtp-Source: APXvYqxxC4XA4qnMxZf6DlRr2Y8MbCIXklm2si2jFX3l34k7sQf8bVDhfMiWHlrhxWxuRU0PD4GJig==
X-Received: by 2002:a63:215c:: with SMTP id s28mr9934229pgm.302.1570713678298; 
 Thu, 10 Oct 2019 06:21:18 -0700 (PDT)
Received: from wambui.brck.local ([197.254.95.158])
 by smtp.googlemail.com with ESMTPSA id
 w189sm6619667pfw.101.2019.10.10.06.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 06:21:17 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] rtl8723bs: Remove comparison to NULL
Date: Thu, 10 Oct 2019 16:20:58 +0300
Message-Id: <20191010132058.20887-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove comparison to NULL in drivers/staging/rtl8723bs/core/rtw_ap.c:1449.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 80027ac765d0..7117d16a30f9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1447,7 +1447,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
