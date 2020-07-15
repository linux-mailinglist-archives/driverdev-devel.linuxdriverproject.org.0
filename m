Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CD622125A
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 18:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23BEB8967F;
	Wed, 15 Jul 2020 16:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dZ9WjwqCHfJd; Wed, 15 Jul 2020 16:32:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BCE58965A;
	Wed, 15 Jul 2020 16:32:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4A0C1BF3DC
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 16:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B839F883E1
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 16:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MGJ9E981o9Wj for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 16:31:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BE0088713
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 16:31:57 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id m16so2602690pls.5
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 09:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=wp4UOgJ9IaPMlVofUUpLKOTdSoidBDOlTFMjlw713KI=;
 b=qp3X2aNnYkvFCE1oEmrIHZI3GMt4s2CoW6RgLUsUDKN6rLZdo6uiAf6fx4sane/mQi
 dYks0Zb11VL93pUV7JKGPL8aMHeTHRdgexhsyKSgZoIb+jeg8iWJCa1V/tgVjbq/L1cr
 GDLO+VIEhGDlISgw040caYyDOAvHML7RK/M8HKqpeeJJlhS/fsXn5RHaPF447zdBtWe5
 3B+j8IwDX6/HgBh/64LOY/IrWj2abQ7J/VwFaKaOEhoTycS1d7oshGMo4F0K1J4oNeeY
 AboaylwzIrUeDkyaXh7ENnS4iaWHA8G8jPIE3Z5Rj5BQlpzeYSkKirIquKxp/ghEoneL
 Q6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=wp4UOgJ9IaPMlVofUUpLKOTdSoidBDOlTFMjlw713KI=;
 b=FlU4SeCTTh5GBlyubQQDruN5lAvpLOGqyBcJUw/d4v+Dyn8JcHZDPwpZlcR5r7hrHM
 szEwuvh7/qDnDrUtP+A87Kc08lHwngt7WxXuMEbkMcOz73gja8bJH7PBZwkjLfriFfob
 9ZPVXA/1UWHaBoN1MWCICXxKjGdG5pfLZTB7gPDTetUepR8Wvha0E/mhCNuk0RN2jqUY
 8QXoFdxByRskBGhbmcL6ZcKSn4rsXkxi4Fw+/ldjl3iVTWw2L4Eo0GRXI1m9q6eC4xx6
 7PjK47b7+zbR358YYNemJWF+sFCMBAGvok8iaZiInR9eR3FQwCYOdZO00i6bpBR7eGsm
 E+Iw==
X-Gm-Message-State: AOAM530xgbvlpw1XV2jbudd6X2zHTDRXOwJFm1mpgE4mIJMBnRdr5/dC
 JfAeoLHytybe9dUiy/efTkxKwVEgtsse9g==
X-Google-Smtp-Source: ABdhPJzygY3bmGTRvfgK+usYtOc0rXBqEqeemhGEsrGlIVj7rCLex3fcm5KJ3w7p0w+pctnwd0d55A==
X-Received: by 2002:a17:90a:3525:: with SMTP id
 q34mr474785pjb.192.1594830716800; 
 Wed, 15 Jul 2020 09:31:56 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([171.49.224.17])
 by smtp.gmail.com with ESMTPSA id h15sm2739368pjc.14.2020.07.15.09.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 09:31:56 -0700 (PDT)
Date: Wed, 15 Jul 2020 22:01:52 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net
Subject: [PATCH v2] staging: rtl8188eu: add blank line after declarations
Message-ID: <20200715163152.GA10190@rahulg-ThinkPad-T450>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added a blank line after declarations in
drivers/staging/rtl8188eu/core/rtw_security.c to fix a
checkpatch.pl warning

Signed-off-by: Rahul Gottipati <rahul.blr97@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index f9139f72b3a7..bf1582598f1c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -840,6 +840,7 @@ static void next_key(u8 *key, int round)
 static void byte_sub(u8 *in, u8 *out)
 {
 	int i;
+
 	for (i = 0; i < 16; i++)
 		out[i] = sbox(in[i]);
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
