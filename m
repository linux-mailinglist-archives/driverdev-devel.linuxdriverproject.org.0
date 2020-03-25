Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAF01932F6
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 22:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0809C86EB9;
	Wed, 25 Mar 2020 21:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id roFQxgqc57yF; Wed, 25 Mar 2020 21:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B40786267;
	Wed, 25 Mar 2020 21:43:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BB421BF3B1
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 21:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 23EB98658D
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 21:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ilpa3UP8CdvP for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 21:43:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B385485EE8
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 21:43:18 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u12so1800366pgb.10
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 14:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=h0hI1ctK7evRWi0Tx3F+lFEp/ylOEoUVzXunsODTLdY=;
 b=K6CccuvDhDFg4uDguK3OiesQSTy4fN0R7L2ZKiBbN6KUB5W5JGjUjBeE8sAHEWaPX2
 w/HSgNcZUtbTEQ28K1Q8MlNo5DaOd8AscgJK5B3m5OeehiuaHg1US+Hapq413+gXZgxD
 pC/tsiWBNJEFkVFyevTpcfH7QZijl90PLmgGflSa8Fy7sXpNJtnKbfG++5ArAO6Rdaj+
 gDFnjrinuJIrGqgR5G4NygPWvjK7+oq7x6gE9H1UhL0UfjtPwT5biCQ+bEhxPvjmMzzS
 ZgkB+HD5/RSOurcjFBSUuP1KD5/ocn9MzxOEE4CNq1jVf5ZbdVHr3IrFWx1V8RBeCj3p
 fpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=h0hI1ctK7evRWi0Tx3F+lFEp/ylOEoUVzXunsODTLdY=;
 b=qLdN7QcltOz/RziJ+ksHZwwwB3XqxHD9We9ccgrm5qDPy+zeOjx/BIUfsyRDDZOiKX
 Q1RJsWyXIh035gX4MMS9nYwylDFaHOQUSkHtp3Lgy07bVYN7VGSsyeI3e91V++wfIWYg
 rCIvQeRkvb6VEqNGJsARZsaIZ4TOddSJcnNwnp8C5XHUqfcIAdpIdXHglVXNnGNuykhA
 liet7C5hd3/ydLMWa2A2wr6HfYNKA2Jt75vZkq/rGQZLQks9+Wu679G10hs/TMnKk6B1
 oW7NDJh+mJBL/yucysPr37jEh1eCRFVzFOdd++9Bmmv/950kv9BP/xQSsJxh4r3zRGN8
 KLQg==
X-Gm-Message-State: ANhLgQ1bF8Lvpuhn1KzJ4I6QxgnlV1rTvXzyCUgG13avfCBhg2oUEZNP
 UgIPX3dX7v9tLVDhMe9IiSM=
X-Google-Smtp-Source: ADFU+vswKqbNWwboFJ5F9a2l/B9QXa6IvqAjyDmNjtLiyGK2ZPZ2k32SjAAvPZlNAiOyyLKTauRU9g==
X-Received: by 2002:aa7:828e:: with SMTP id s14mr5336751pfm.15.1585172598186; 
 Wed, 25 Mar 2020 14:43:18 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 a19sm87724pfk.110.2020.03.25.14.43.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 14:43:17 -0700 (PDT)
Date: Thu, 26 Mar 2020 03:13:12 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: hal: Compress return logic
Message-ID: <20200325214312.GA1936@simran-Inspiron-5558>
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

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index eb7de3617d83..767e2a784f78 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1498,9 +1498,7 @@ s8 PHY_GetTxPowerByRate(
 		return value;
 	}
 
-	value = pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
-
-	return value;
+	return pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
 
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
