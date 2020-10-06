Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2E8285319
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 22:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA941214EB;
	Tue,  6 Oct 2020 20:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0sGkr0kT7LDA; Tue,  6 Oct 2020 20:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 59D3C2107A;
	Tue,  6 Oct 2020 20:29:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 017501BF28E
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 20:29:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F08FA864FB
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 20:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkQpS4LGHx6c for <devel@linuxdriverproject.org>;
 Tue,  6 Oct 2020 20:29:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C4ED8669C
 for <devel@driverdev.osuosl.org>; Tue,  6 Oct 2020 20:29:08 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id u8so16523257lff.1
 for <devel@driverdev.osuosl.org>; Tue, 06 Oct 2020 13:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:cc:subject:message-id:mime-version:content-disposition;
 bh=/mtugB3eJpyIDsDQWTsWaRCuOKG5/5/BmB1XvAxGCm0=;
 b=qwzZOCKYimmfUnBsUrCcujD3ub16wyhUJUO3q+wsp3fNxdDZ/SuDHCnczA8zaUdmRK
 YVevZqbZ7iIhQcfIhITdqrIAVR7BKpO7NnEIRQ5bsmhZ+U0w5gZNn598YVbIjw8Po6xr
 pDZBsVsWYi7xmx/6ol0TAMUQVOf4F9f+VPY/uOnIlRQgG3kAJN2a3u725fx+DTiZ/+gs
 JbQ0MbyVCBgKxB1+RB7oYRG1Hy8VMBktMllPU0RSTOaDQBWsrmg4bxN4A1zJyuShZVvL
 c1XCDKf0LxFkrP5cRiY2Lj38YziSosvu8jVJiAK7PnC+00XQJB9zyHcmf6P4iBFiCckW
 ANOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:mime-version
 :content-disposition;
 bh=/mtugB3eJpyIDsDQWTsWaRCuOKG5/5/BmB1XvAxGCm0=;
 b=nTGsv6uKYpgGfIUdm0dGc+bI2p05zqxjgyRFqtPOdYjQmFaEzckvjAm1GDrX7kv5nJ
 9wiWwo5YCGD0RBu4V+rm6bxB4nOcx7vkxSPwIY89soC16F/znwkN+Piagx6l6SpLfl6L
 9qCIRNUCZkJGVmCC5jFzMWCw+7nvivMqXALFJSVWrarZJfly83fb8hYhAEUIpVQJ0q0V
 TflRU3MOQUQyIKLDj/LOXqrdjlYrjUoQHVMVm9utm0FmjR6d2cncKXOGgsaaL2ZNBKYQ
 KQUsjF1iv+mECq82Jjr0CIRBbheypgjkcxw9BvfaDekA32T1xI8E6uIePml/ApV34MVe
 h14w==
X-Gm-Message-State: AOAM530Iml4/LA64ZmLtHPFUfs2LMKZGKPTeVXBXVSu2SgCtknWH8fhV
 8d80I7mdjmDUuNYg0n5BEIE=
X-Google-Smtp-Source: ABdhPJwEWZf0/uTKQvZhiTzZbFP7mYa2rbczBGdn9OD85tMXtLTfU+4xR+LGTugu57qmNkoQqFj/nQ==
X-Received: by 2002:ac2:4154:: with SMTP id c20mr999157lfi.236.1602016146126; 
 Tue, 06 Oct 2020 13:29:06 -0700 (PDT)
Received: from linux ([185.17.130.128])
 by smtp.gmail.com with ESMTPSA id m204sm4331lfd.307.2020.10.06.13.29.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 13:29:05 -0700 (PDT)
Date: Tue, 6 Oct 2020 22:29:03 +0200
From: Leonid Kushnir <leonf008@gmail.com>
Subject: [PATCH 3/3] media: staging: atomisp: Corrected error handling in
 function
Message-ID: <20201006202903.GA8346@linux>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 leonf008@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes check of a result of 'power_up()' function call in
function 'gc0310_s_power()' to do "error handling" instead of "success
handling" as Dan Carpenter noted in his comment on the previous patch.
Lines 'return gc0310_init(sd)' and 'return ret' are swapped, and direct
value of 'ret' is checked in IF statement now.

Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
index 8201c15b5769..d170d0adfea4 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
@@ -874,11 +874,12 @@ static int gc0310_s_power(struct v4l2_subdev *sd, int on)
 
 	if (on == 0)
 		return power_down(sd);
+
 	ret = power_up(sd);
-	if (!ret)
-		return gc0310_init(sd);
+	if (ret)
+		return ret;
 
-	return ret;
+	return gc0310_init(sd);
 }
 
 /*
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
