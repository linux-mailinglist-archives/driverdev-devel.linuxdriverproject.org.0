Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C184193236
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 21:54:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59877882AF;
	Wed, 25 Mar 2020 20:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3AYOzTIgsOWk; Wed, 25 Mar 2020 20:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AAA988258;
	Wed, 25 Mar 2020 20:54:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0A01BF568
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 20:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 090E588253
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 20:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oOWC+AYBIXnb for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 20:54:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8ADDF88223
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 20:54:24 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id x1so1284192plm.4
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 13:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=almAkzaBjE6PHygh3j1m0Jqz/97wbN8tJnv57jeXwQc=;
 b=KIGFOiRtaenwOUhFx39py2v7EmX7BUwo3SCdsyEJxUPfzD8eoy/NdfyQA8+uwb7bWa
 iAoirmcu5wcto705bhC9zap213StzfO4QMCGHTxXUw70sjm7TJHG+WEP6aPK5l3BLmau
 PoOYOzvUjdNalFo+t6+0gSmvEiIM96S30EE8K9x4G4XqgH+ABVZokGVXXdeSc1+5YhQx
 UUG3lbbnvwH7LhkSVP604+H3uemrI4dXOCay26wLKkq+2wyS8zW0pawyvh+XqUz8IIZ2
 7g7qbG0i1ct3FOxkI4Xu7FyADDd63TxIW+6Ze8U475qNjkBEF1z/xvQUSX4hazxkeQT1
 pMYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=almAkzaBjE6PHygh3j1m0Jqz/97wbN8tJnv57jeXwQc=;
 b=ClkvRcmxhGv2ZET/UF87OYX4iAuTGUl68BB9ib7564HFxA2o9mHkOmUyHxWsUUzjiM
 ijc46DJle4YGfJC2vdJObRr3MZthTTg1gTF+K8w7qAGW+1sI3M9wzYpactAvNGJDx1o9
 DWcwZUfeI6BR8Ln+3vKjd87jHsU83qSW/n0/oIpmvx580R4c8/vXptdbHIyzd+O+9m5E
 7HrEpdGF79Y5fMC8D98bzECY+LSz35KKfi6vUNhOUJsZ98VEkl2eLSf7WxZt6AN+1Du6
 EXPAX9050Qdhda3yTO7Bju3B8a8IWBlLjGlzn4SZpHMGyBcv1R0RkhCaWb1WkMazapT8
 MyDQ==
X-Gm-Message-State: ANhLgQ0ydBziWqGk4jC6bd9PtV9BcUtxVFlQ41J/cetQg7/6PS7LB76v
 oG5Uw2TUzyxz9Jm0RVuS6VCGb0Q4J4o=
X-Google-Smtp-Source: ADFU+vtaGycFMwnQbZvkxx3l0lWZyeIR6/zzWaRVb/hGmjpAu+Gt3uW6+uVcvqiFaA290wWxPgoi7Q==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr4694982plj.51.1585169663924; 
 Wed, 25 Mar 2020 13:54:23 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 132sm26209pfc.183.2020.03.25.13.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 13:54:23 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:24:18 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: rtw_efuse: Compress lines for immediate
 return
Message-ID: <20200325205418.GA29149@simran-Inspiron-5558>
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

Compress two lines into a single line if immediate return statement is found.

It is done using script Coccinelle. And coccinelle uses following semantic
patch for this compression function:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index de7d15fdc936..8794638468e6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -266,8 +266,7 @@ bool		bPseudoTest)
 	/* DBG_871X("===> EFUSE_OneByteRead() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
 
 	if (bPseudoTest) {
-		bResult = Efuse_Read1ByteFromFakeContent(padapter, addr, data);
-		return bResult;
+		return Efuse_Read1ByteFromFakeContent(padapter, addr, data);
 	}
 
 	/*  <20130121, Kordan> For SMIC EFUSE specificatoin. */
@@ -319,8 +318,7 @@ bool		bPseudoTest)
 	/* DBG_871X("===> EFUSE_OneByteWrite() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
 
 	if (bPseudoTest) {
-		bResult = Efuse_Write1ByteToFakeContent(padapter, addr, data);
-		return bResult;
+		return Efuse_Write1ByteToFakeContent(padapter, addr, data);
 	}
 
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
