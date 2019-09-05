Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2ABAA43B
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 15:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF20223455;
	Thu,  5 Sep 2019 13:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZJa7kPoy0fD; Thu,  5 Sep 2019 13:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7283F220C4;
	Thu,  5 Sep 2019 13:22:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 623451BF9B7
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 13:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F46B885E4
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 13:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S36P2L6ZzOij for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 13:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40BD2885DB
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 13:22:26 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x127so1746967pfb.7
 for <devel@driverdev.osuosl.org>; Thu, 05 Sep 2019 06:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Kmwg/j7q73TFqFmFqMeNhhNrDOnYOhalsDeB4yw4+vs=;
 b=XehWYZb3mNOLnXGSlua70G0Wm91RFppcEsZluU8m+BUQ1X3mycksJ90GkAqytWXkgx
 2qCmA9coKtNOOD4bDrQs7fIjHDCylTn/3Imny1QaUDE+l8GgXik+w/U4p7/NMVrr/bmc
 PGL3n+VHl0EfqG3n1d44USwYzKZsHPJvxMtzc9GPteaLkThw+Z8rhwxlIII7gXpZzQKp
 YmbQgf8cCSPIWNlFxBnbubQ9ryZjjs8nqNQ/DHGHYcxDfcB+E0P6zoEiLyhISh0m7T8W
 T3UONG+8I+M96yN51sukp0D6nIvSbMWw32eRjis2/LCwTnmrqwu3O6MBmY0G4GjUWmrl
 /t8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Kmwg/j7q73TFqFmFqMeNhhNrDOnYOhalsDeB4yw4+vs=;
 b=kGNsSVa6OnpG+cDKYZThikkOZUb8Yh2yzgqunO3kEQq7V5Oa3fl9/FFi9y8ir1iMuU
 LTIvYWs2xAfsJj8N6cEjirwbkeci00Ra1rqpRtFY6xkOHTYQuCrPY8qF/37MW4fyHLxc
 HZ/p7X09e15t59VV2uKe68a7/4QWli/cbpjJK2x11a6MRdrGuWYpUyLy4TLlTVbIlZkG
 fBROJi3ARrePxauY0bTmPLz9Ioyyq8pTj5wDF2Qg2cKFfXMYgwMgmAVVPMesdqBloiiS
 ykI+EfE6YUNHv7CtV/hOLyzu/3NBkeGeRvvzxTXMb3dBLqOLYL3TgV2kuS2BqyRzP1F6
 57TQ==
X-Gm-Message-State: APjAAAWI/TAD6IcTuNFvh/mFmq5pRQM3ndJPiaU2CRZ6yHBOpcXyYVhy
 KmjbaewsvFA5/JzcRuNXv6Mfkcda55LM0g==
X-Google-Smtp-Source: APXvYqzModo5ATtURqaJh7+lvgwP576pG4CQOObuvEhuzIjYRyiC8llvs4Rjz+MHVIxGTJqvO9mdKw==
X-Received: by 2002:a63:bf01:: with SMTP id v1mr3071511pgf.278.1567689745319; 
 Thu, 05 Sep 2019 06:22:25 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id u5sm1368183pfl.25.2019.09.05.06.22.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 06:22:24 -0700 (PDT)
Date: Thu, 5 Sep 2019 18:52:19 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcus Wolf <linux@Wolf-Entwicklungen.de>
Subject: [PATCH] staging: pi433: Fix typo in documentation
Message-ID: <20190905132219.GA1004@SARKAR>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes a typo in the documentation.

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/pi433/Documentation/pi433.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/Documentation/pi433.txt b/drivers/staging/pi433/Documentation/pi433.txt
index 21cffdb86ecf..4a0d34b4ad37 100644
--- a/drivers/staging/pi433/Documentation/pi433.txt
+++ b/drivers/staging/pi433/Documentation/pi433.txt
@@ -14,7 +14,7 @@ until something gets received terminates the read request.
 The driver supports on the fly reloading of the hardware fifo of the rf
 chip, thus enabling for much longer telegrams than the hardware fifo size.
 
-Discription of driver operation
+Description of driver operation
 ===============================
 
 a) transmission
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
