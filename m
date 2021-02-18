Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1278931E655
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 07:31:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A67F6605F5
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 06:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdYyyERYQGcx for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 06:31:20 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 71822605F0; Thu, 18 Feb 2021 06:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E50460592;
	Thu, 18 Feb 2021 06:31:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47D741BF395
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 06:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E25486717
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 06:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UirDzMUMkvJZ for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 06:30:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B8D718672F
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 06:30:51 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id s16so681275plr.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 22:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KYip4fwriZ+R8/UL+CCJ++KKQonk0PCFu8VWhzBzWzI=;
 b=f5VT2H4UjeBMIbMTT1Jrl9nCy9MAdnuOgVCayqulGBCNiu4gRgMZgDxYmG+5FjsJXn
 oIQquRxOvcRw6CFw1FXbYdHIFa6rTsIt4tMTBqa7a+VW5HX+di8BQoOfC2UVODKbMC5/
 rBdLvMfcKvQzSM0V/aZqXF6QCzc+oDdoXB6hftvWcY5I0uGfKqkY0RQgJ5AtgPQ6HUI5
 lFHNRe8+uWJOlEM2P3oD/19LbyRjdcuDnBU8QXLq2izH4S9lGRGT0KCddkfxgamKYjUa
 sj4gj7Eq0ou5u6XPILWEiN6yC1pmhnSy6vsTip3BerC3FVXgYs5OyudiJORWtbS4hJO4
 809g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KYip4fwriZ+R8/UL+CCJ++KKQonk0PCFu8VWhzBzWzI=;
 b=qG2BYpxDL6UCURvjEvfoTnwCcMy9LmYA9OkKX5Ks6JiRQTAujFn6SjdTusBDhSCxlA
 eGDJSeSCOHzDiXFsVn5fIzVOsCCw215Iu96OtlXUMQ2S/0oDWeX5dxUvIIzgLUU3aTl8
 y3l2fEacvJc06sTeLTA+QTgVPPMdtyj5fJkHv1WRYgNrvVMeh+T8Kj/jCZhbndbq6PmR
 fRn+FzGye/nkky0wrPzvzFy5vNreuldaFAr3bnqZdBYi5CuLYf8q3UBF+rHHbJOvbRbq
 RG4OXhLXaU9Ew/YNds0iJ1I1jWJYebRClSSElxJFwk9jUsgpijn/YM+btmM6PlHWTKwq
 q4Vw==
X-Gm-Message-State: AOAM533h5aCB0VO3O0VTaNEkwhm03l6wHZxl5i8W6QP0A9bNYFdb2KHw
 e0dbcgWw9CT3pFDc54udilc=
X-Google-Smtp-Source: ABdhPJwaiObq10hAQqM6lpbAlOng30r2w2hUC1KZpWjqF4PbSsNIhpL7aX0soYcloPwd6VObRGVi5Q==
X-Received: by 2002:a17:90a:194b:: with SMTP id
 11mr2612660pjh.100.1613629851309; 
 Wed, 17 Feb 2021 22:30:51 -0800 (PST)
Received: from localhost.localdomain ([27.61.13.38])
 by smtp.gmail.com with ESMTPSA id l25sm4224067pff.105.2021.02.17.22.30.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 22:30:50 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: comedi: cast to (void __user *)
Date: Thu, 18 Feb 2021 11:58:40 +0530
Message-Id: <20210218062839.32650-1-atulgopinathan@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org,
 Atul Gopinathan <atulgopinathan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolve the following sparse warning:
drivers/staging//comedi/comedi_fops.c:2983:41: warning: incorrect type in argument 1 (different address spaces)
drivers/staging//comedi/comedi_fops.c:2983:41:    expected void [noderef] <asn:1> *uptr
drivers/staging//comedi/comedi_fops.c:2983:41:    got unsigned int *chanlist

cmd->chanlist is of type (unsigned int *) as defined in
"struct comedi_cmd" in file drivers/staging/comedi/comedi.h

The function "ptr_to_compat()" expects argument of type
(void __user *) as defined in include/linux/compat.h

Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index e85a99b68f31..db483cc698fd 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2980,7 +2980,7 @@ static int put_compat_cmd(struct comedi32_cmd_struct __user *cmd32,
 	v32.stop_src = cmd->stop_src;
 	v32.stop_arg = cmd->stop_arg;
 	/* Assume chanlist pointer is unchanged. */
-	v32.chanlist = ptr_to_compat(cmd->chanlist);
+	v32.chanlist = ptr_to_compat((void __user *)cmd->chanlist);
 	v32.chanlist_len = cmd->chanlist_len;
 	v32.data = ptr_to_compat(cmd->data);
 	v32.data_len = cmd->data_len;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
