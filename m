Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E82EA3683
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 14:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E4EC20459;
	Fri, 30 Aug 2019 12:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GPFRw+-AJhj; Fri, 30 Aug 2019 12:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79B5B2649E;
	Fri, 30 Aug 2019 12:17:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FF1C1BF25B
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 978FD8714E
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e2hnHAyQjiVN for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 12:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EE5D870CF
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 12:17:07 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c81so4535751pfc.11
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 05:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=QBDazDOM2X7FA70xO+freU9rlh5XTVJr8JINQl4RCWU=;
 b=pnDI0maV5Rv5WyuaigzZDWVEE/YsPTOr9eMvQv6PwGZwmIjmVvxfGwPWbHoo4LFHva
 7YtBD+fIbpmozffoEBVqOmjqJXt5IT28CIbqgxQD+D3gQisUzlViLcOOf3xBVec8rZwM
 2rbQsHVBcDDYjlR0HBxNtvIMSs/0f1jEL6i1Ah5Be+AeR9QbYPXdU6ChynJY0OFhXfYA
 Fd4QqS2TakHZSqvV93f6J6SG2odRRThP8TKVEF05j+7ZcOgt3Fn/Po05MEjOEuAnsRWz
 EzH4f1XNKjy5hLf2CQgvNH1a5GJDPpdLT4SPtWPlq5BhlAOevbsK3Mqna0Yr2inVxtRH
 FarA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=QBDazDOM2X7FA70xO+freU9rlh5XTVJr8JINQl4RCWU=;
 b=mQFiRVET6+uih+KBTHvaQo11WNhQYAWTYUH+bC8LyTTINYjHDaj5FQNv8m7QBP2KkT
 10epuIgf17tIeKgUjDfhdt79KwtadCsm4LsgrEkUVkE20Wk1CmFgO4U47QDMg17tdOwu
 kHR0O05NXZ5+HXgq2Taa0cczioVbW1qNEdRY0gIzuCfDB7d6br45dtyEonNUpoRJ4O+A
 8h2t9cWP0XOg8EKl4LFzdthY1HZjM5i1oxxQ/ncyzW4nMTWu5t/MvzUw7z9dGTKNnL9N
 LHMKuFUQJ88vswku03+gnnhE2eft9vE/HJ2cXCTyPsJlbBLtMZ/BLHagLsaH10IefgHV
 wotA==
X-Gm-Message-State: APjAAAVjaeCqnL9jIQ3IuaWsTlILm7S06/zkiNqI8EiA1g2awr35fkR1
 6Cj9LFp8lw9Yvo2737rZk8s=
X-Google-Smtp-Source: APXvYqwChWOcfo60hRIMcjlLwn5Tgn1YVlHJTG1f190hzOo1p4I5EaJPzMWI+NmzZ+qKzQVb9ULp0Q==
X-Received: by 2002:a63:394:: with SMTP id 142mr12773017pgd.43.1567167426427; 
 Fri, 30 Aug 2019 05:17:06 -0700 (PDT)
Received: from MeraComputer ([117.220.112.100])
 by smtp.gmail.com with ESMTPSA id i137sm6827671pgc.4.2019.08.30.05.17.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 05:17:05 -0700 (PDT)
Date: Fri, 30 Aug 2019 17:46:56 +0530
From: Prakhar Sinha <prakharsinha2808@gmail.com>
To: gregkh@linuxfoundation.org, kim.jamie.bradley@gmail.com
Subject: [PATCH v2] staging: rts5208: Fixed checkpath warning.
Message-ID: <20190830121656.GA2740@MeraComputer>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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

This patch solves the following checkpatch.pl's message in drivers/staging/rts5208/rtsx_transport.c:397.

WARNING: line over 80 characters
+                               option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;

Signed-off-by: Prakhar Sinha <prakharsinha2808@gmail.com>
---
Changes in v2:
  - Re-structured assignment to solve checkpath.pl's warning.

 drivers/staging/rts5208/rtsx_transport.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..e61bc7c6ac33 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -393,10 +393,9 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 			*offset = 0;
 			*index = *index + 1;
 		}
-		if ((i == (sg_cnt - 1)) || !resid)
-			option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
-		else
-			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
+		option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
+		if ((i == sg_cnt - 1) || !resid)
+			option |= RTSX_SG_END;
 
 		rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
