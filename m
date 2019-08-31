Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 636FFA41B4
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 04:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56DFE87FDC;
	Sat, 31 Aug 2019 02:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tjpL4iiYhN7f; Sat, 31 Aug 2019 02:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7453F87FBE;
	Sat, 31 Aug 2019 02:25:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 918BE1BF317
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B5B289343
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDeU8Y3Jtr84 for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 02:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0647089339
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 02:25:32 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n190so4426911pgn.0
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 19:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=7GGohDtFIzadHRK9qlBFqyaUQq3IDsI0G9jsiYfLeIA=;
 b=RoHZR9AOQVftWcIO7bJGMrXpE/nIQAT8sYbyqtg2OX3OIHuU2phYl0hwHj4mdbiT0a
 TNsMxoc/4q8mV7q0Xoey9q8Xe6Wle8Q6ON3ZLZa6vp0DmpMJv6MeQ6ft1k7Xsv2WiXEM
 TebXTKo2jnj03IX2x/qJoITVMqBgG/0wv4wkccAgpVdQWluZUGlspulf1nvMXTp6bGY9
 aJQV6Q9OUheeO/VEhKnjWsZRpRElyvTVGP6yd4w/rbr/QrpYYncrWdw42YMqsarxdakS
 rGyZ2bC9+g9TKghXv/05M+7KWnGZDe2j2v24mz5uZJVJmg+k9BzuAaUhT/l507oefGhM
 giZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=7GGohDtFIzadHRK9qlBFqyaUQq3IDsI0G9jsiYfLeIA=;
 b=JPx5Xw1WF9UHPNpW7f0vY47jPTcj4ItYuHQqd9YCYgwggr17USYI8pgh9S52jEZjzK
 +8+1CVKPJIIDDTWdDq+u0Nxs5fuOs/1rWaKcUOJtdUkd1ZM41gSYZKaiHoeLfteLlqbA
 CWfW0Old18F0lAMpdlP8vVWvsWmwWlv4zy9EabwYcQlO4uEEIThR7+Sa8ogjj5DfANXN
 rqqai4P1EvAfUXdgpxvjM0JT2plWjcXT0uCJ3GW2sF8G+ebM8/3vb6/nACUYnalM3IzL
 051fQ8PxbICMHQSdiqPyNSKHNpTlmS1usqTpiwc3wCtaPFb5xPwvyBcBq40L4+Sc18Ah
 +rmg==
X-Gm-Message-State: APjAAAW8lvriZYNL8m0FmIwcIUE9llOiuU6aMOy3GBm5LW02/PR72QbE
 XM0MbOIVu+3YzXRkIQ6kFt4=
X-Google-Smtp-Source: APXvYqwf/18nVOeRvdxzV0EYlJDBqTSPZ6dykzvlguaUwp12T3UpnfvaO5EsS7NXZ6aoekiVbIatOg==
X-Received: by 2002:aa7:92d1:: with SMTP id k17mr20872378pfa.160.1567218331386; 
 Fri, 30 Aug 2019 19:25:31 -0700 (PDT)
Received: from dell-inspiron ([117.220.112.196])
 by smtp.gmail.com with ESMTPSA id s13sm8076449pfm.12.2019.08.30.19.25.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 19:25:30 -0700 (PDT)
Date: Sat, 31 Aug 2019 07:55:15 +0530
From: P SAI PRASANTH <saip2823@gmail.com>
To: gregkh@linuxfoundation.org, kim.jamie.bradley@gmail.com
Subject: [PATCH v3] staging: rts5208: Fix checkpath warning
Message-ID: <20190831022515.GA4917@dell-inspiron>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpath warning
in the file drivers/staging/rts5208/rtsx_transport.c:546

WARNING: line over 80 characters
+                               option = RTSX_SG_VALID | RTSX_SG_END |
RTSX_SG_TRANS_DATA;

Signed-off-by: P SAI PRASANTH <saip2823@gmail.com>
---
Changes in v3:
 -Fixes the following error in da59abd45efc
  >> drivers/staging//rts5208/rtsx_transport.c:548:4: error: expected
     ';' before 'rtsx_add_sg_tbl'
       rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
       ^~~~~~~~~~~~~~~

 drivers/staging/rts5208/rtsx_transport.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d78..3c67656 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -540,11 +540,10 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 
 			dev_dbg(rtsx_dev(chip), "DMA addr: 0x%x, Len: 0x%x\n",
 				(unsigned int)addr, len);
-
+
+			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 			if (j == (sg_cnt - 1))
-				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
-			else
-				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
+				option |= RTSX_SG_END;
 
 			rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
