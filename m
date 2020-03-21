Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9DB18E1B0
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 15:04:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48CFF88D67;
	Sat, 21 Mar 2020 14:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YS2db8ai753m; Sat, 21 Mar 2020 14:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CC5A88AFD;
	Sat, 21 Mar 2020 14:04:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F32D1BF83A
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 14:04:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4463A20430
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 14:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nFmO1O3z0lP9 for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 14:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D114920381
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 14:04:36 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id ng8so3778537pjb.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 07:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=J9eGr1XRuuMVhT4BB0OXqzh8ZUNEQwk5lWfXIehE4RU=;
 b=skHcS7F3YJWvMX4rRiycVWZ7L8rACzYJkh6R1+nulg0+KzXQS2OcNPrqfQjZgnJGVX
 +O1jF/a7lmk/2Uqx76M+eoKLfgwz2chvOz0q68gUN3liu3cBVVSKVgSSCX8scFOxnzhB
 im1AMBM/pu+fA1VJbHiqLkgAnLuurIahr8G/2YOAUeZg32wzUuFpofhTcffvbDRBhMMH
 Lyb/7HhK1tsbzfAraKZ+jmap7FQCec8AI7vfPZF84S1hr1fKn9JmguxcTK+YOfCM+Rou
 HFBedKFyAGEapSfaHZsKonbU4NdBwAw1T5GQfkgyXvwWqT2dh3J4Yfpfj9IYRYb6EZIx
 0qIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=J9eGr1XRuuMVhT4BB0OXqzh8ZUNEQwk5lWfXIehE4RU=;
 b=CwZe5UTV46MbjkUTFzVTxgJEgjhFnzIzMTqhyD3HesV7xKAckwQaBvpyV6ETYGK2sp
 +8JnbFtLu1lJUQfaX39/afQElzsOv6DSxlBAvg9WLl2rfzc/ibIOcrpjU9N0rnV+qrCX
 TwdkXnZIoYcY+/PH8rYBMWSvv1sR5XOYFrM9z6qvLDsakuASJ7pYQSs1i6mXmIgUgPkH
 unW5xHkDTJI4cQR6xRNAq0rt9HY1FA1OnFIxLpmil9Cj4JqRepqAX+wvIFEa5WuRUNCF
 H70iXlf4XrJCPWSHVcQrEfUTx5TXMyGkc7fCTNMMur05HCHubj4GmrYXxVOSVcoWS8Mm
 2wGg==
X-Gm-Message-State: ANhLgQ0Nz4xAeqqKjNqjhHADh182T7YXTTlHQx6JbLBMgxbzI1r/AK2e
 pol0LspzV71x+p0UHQNdgBY=
X-Google-Smtp-Source: ADFU+vtB7XAaobJC3/csU7xutUniWUS8W0WcjIp6L3ZMJMv3TV0R1Sw+EZWDGWdeo36fv9M/W0cQCg==
X-Received: by 2002:a17:902:7b87:: with SMTP id
 w7mr14025772pll.214.1584799476391; 
 Sat, 21 Mar 2020 07:04:36 -0700 (PDT)
Received: from simran-Inspiron-5558 ([14.139.82.6])
 by smtp.gmail.com with ESMTPSA id g2sm1257540pfh.193.2020.03.21.07.04.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 07:04:35 -0700 (PDT)
Date: Sat, 21 Mar 2020 19:34:31 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org, jeremy@azazel.net,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: kpc2000: Removing multiple blank lines
Message-ID: <20200321140430.GA18933@simran-Inspiron-5558>
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

This patch fixes the checkpatch warning by removing multiple blank
lines.
CHECK: Please don't use multiple blank lines

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index cb815c30faa4..f1fc91b4c704 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -6,7 +6,6 @@
 #include "../kpc.h"
 #include "dma_common_defs.h"
 
-
 /*      System Register Map (BAR 1, Start Addr 0)
  *
  *  BAR Size:
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
