Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67D22440
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 19:33:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3C9E87E07;
	Sat, 18 May 2019 17:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LicBk8GeTyd; Sat, 18 May 2019 17:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0B0987CFB;
	Sat, 18 May 2019 17:33:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0D71BF5DE
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 17:33:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B1AB863E8
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 17:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ZQqIcNhW3E1 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 17:33:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 71F26863D9
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 17:33:37 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z3so4769746pgp.8
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 10:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=pBUOpcZZhVnAEMzK2Qi13gp5BqUlujzgGPYXraDy+LU=;
 b=auLY2NMGRP93XGfuqVGmCFv10ilgSNvE32chNovFfE3hNYk+VsNegdj6oqOIFK73I8
 nyRJu8ucZYf9s/GnyxmcyL1TYCVAB8kgcSbw2EBPUo1O27isB1yk6MS1MoqMAXBD4tyt
 0o/2CbJmzo8YtOYlwlReJ2LTMk3330zP9twY45DZrszNfoE33pyL5rUYIYgZeKd9XUmD
 wdRxsywK2ENZRtEyaBQpGCWr5teezmZIRu83oMej7Cer77vKEQdQ5jv8UIiba4yaFrVK
 ZbheqtkH6gSt8mF/FDGh0HjKmeHUgjwWuD/oHMX52RIBM0oCj3XQz2PH6CtLkwnzARoT
 blZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=pBUOpcZZhVnAEMzK2Qi13gp5BqUlujzgGPYXraDy+LU=;
 b=XoduJCLk0Hpb+N0K+yq/9sfKiq4wNmzSjnL2WuHw8O+FEUYGEWx2prs8JrP+z2Mw/9
 R+xbvNVMCCuuhok89g3+uwmctJ9VICxNvrQgjCcVCovFG8haNrFgEVcsdqUbn7VXVR12
 6B6lPlNKKz4XxXMJhMBcBssxTNYtH32sHY4ODR3x/81+Orfihf5A7nt3B+6uytR5eWvt
 ZQOMRcVn+bpZGtVDAeIKP0gMx/lBtK7t2QKeMSRQLokjLl1FfTtCjI7iUYvXRonbrImA
 J5EiUuB/jhGdivgLsmLvczPAlEw0mHk4GWEkzXvTKtiazFHA0B/Ho0c7GmKnxPmpDX+e
 ietw==
X-Gm-Message-State: APjAAAXq/Pqdw9wJICaXAZagDLN+w5YBa1/xdLF1fyUvnIZwL6fkFsRX
 hVkPK/9AQqFkqm1lcLDsTDc=
X-Google-Smtp-Source: APXvYqxWJTJIdCpHS0U/FnQzuWH0oWUVKu8hlU6RfRmLRWX081s6/gamZSeSuCmsOfOw34bD/oX0jQ==
X-Received: by 2002:a63:c54d:: with SMTP id g13mr65078775pgd.376.1558200817033; 
 Sat, 18 May 2019 10:33:37 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id n21sm15160229pgf.28.2019.05.18.10.33.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 10:33:36 -0700 (PDT)
Date: Sat, 18 May 2019 23:03:31 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
Message-ID: <20190518173331.GA1069@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below warning reported by  coccicheck

drivers/staging/erofs/unzip_pagevec.h:74:2-5: WARNING: Use BUG_ON
instead of if condition followed by BUG.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/erofs/unzip_pagevec.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
index f37d8fd..0f61c54 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/unzip_pagevec.h
@@ -70,8 +70,7 @@ z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
 			return tagptr_unfold_ptr(t);
 	}
 
-	if (unlikely(nr >= ctor->nr))
-		BUG();
+	BUG_ON(nr >= ctor->nr);
 
 	return NULL;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
