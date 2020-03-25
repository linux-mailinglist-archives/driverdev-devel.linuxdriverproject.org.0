Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15412192AB3
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 15:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B281687FCC;
	Wed, 25 Mar 2020 14:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olkmPGhh8JE2; Wed, 25 Mar 2020 14:02:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23B1F87F61;
	Wed, 25 Mar 2020 14:02:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95B921BF33D
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 14:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8ED75884CF
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 14:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HscW8Vt5cfPH for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 14:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E026884A0
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 14:02:53 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g2so840606plo.3
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 07:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hPei7KKSdldCeCCsKO5OWNthcsFfdP9+OayFNsIx/2U=;
 b=Gk1sq/UJs8brD9KtcK2Ggj9/1+LHC7Rc7ObOoo4MbaTZB28viRL5bKcXESZK6p3mDF
 wklCCsF7b2+0pmrix3I0KYDKDP2zp65JzLItfn7UHmfis8J2Yl090nnmqV/QFFs29IlM
 RIlcRH6Ucgf45velQiOnaAX5/8RqmIUqtxXsG0Lpqvf8nqT1/mL323xUo0Qli5SyvdNp
 crlJiEMzFhTeGWBlFRccYuUMnOb1Iyt1K9z7a+v+WgQnni/mI+QFl8Sg73Lp4EhlHZs3
 ZxTgOxJl/EFHRH3TLDPnnGjXfBOPGrI21dG3v8rYXpjSDaipdbHm1jmx7sk0xIS7/0qe
 29IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hPei7KKSdldCeCCsKO5OWNthcsFfdP9+OayFNsIx/2U=;
 b=d5b7ohj2MLdE9U+Iz0w8ReMXfKt7bYXLcjZFEFlAbYZk9waUMBAcIEag0vEG3R8M3L
 ADz9xQ4evCSXMkfOZxioJ4A2M3A7AoEyZHusCdad2dsU3C7oJolgHKvia5RnVYYorEbc
 98X0EdtV9Ct7BmXhE4PM3yCXasQnr87w7BszX4QxS0AoGZ6bn/6RXPuVZEoKdXenxOPW
 pRQPa56Vfsb8PJ6seyQUpQHjpd2pDuxfCgTRqqkxigRwhclKGca8W+BC0XPaz6zRCOYi
 EiSyOs5RXy5VgLSiMTY18d1b2K/XMj6Izx+EaxwcyOpNS61kZ6dqD6jbxyzBGezQ6Dyc
 H2Bw==
X-Gm-Message-State: ANhLgQ1wocByRNLB7nvV5Vb/NyT1BnC9/nkxuAu5qNFPtszG1mOS3YZo
 Rstr4Nxm67VvX+pv7xhBDwI=
X-Google-Smtp-Source: ADFU+vuCDtacPWakvILyOWambzGgVeVvCnBOdFdO7oVQqymfM8huy9lkpkaZSI6cr1yw71rm9Tukqg==
X-Received: by 2002:a17:902:b68b:: with SMTP id
 c11mr3254418pls.186.1585144972528; 
 Wed, 25 Mar 2020 07:02:52 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 r186sm19048448pfc.181.2020.03.25.07.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 07:02:51 -0700 (PDT)
Date: Wed, 25 Mar 2020 19:32:45 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary braces for single
 statements
Message-ID: <20200325140245.GA11949@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

Clean up unnecessary braces around single statement blocks.
Issues reported by checkpatch.pl as:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index bdb6ff8aab7d..de7d15fdc936 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -43,9 +43,8 @@ Efuse_Read1ByteFromFakeContent(
 	u16 	Offset,
 	u8 *Value)
 {
-	if (Offset >= EFUSE_MAX_HW_SIZE) {
+	if (Offset >= EFUSE_MAX_HW_SIZE)
 		return false;
-	}
 	/* DbgPrint("Read fake content, offset = %d\n", Offset); */
 	if (fakeEfuseBank == 0)
 		*Value = fakeEfuseContent[Offset];
@@ -65,14 +64,12 @@ Efuse_Write1ByteToFakeContent(
 	u16 	Offset,
 	u8 Value)
 {
-	if (Offset >= EFUSE_MAX_HW_SIZE) {
+	if (Offset >= EFUSE_MAX_HW_SIZE)
 		return false;
-	}
 	if (fakeEfuseBank == 0)
 		fakeEfuseContent[Offset] = Value;
-	else {
+	else
 		fakeBTEfuseContent[fakeEfuseBank-1][Offset] = Value;
-	}
 	return true;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
