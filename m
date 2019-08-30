Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA50A3069
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 09:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06BC92636C;
	Fri, 30 Aug 2019 07:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XT+VIJaXBo6s; Fri, 30 Aug 2019 07:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FD2D2631D;
	Fri, 30 Aug 2019 07:11:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14FF81BF34A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 122EB891E0
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRElnJIKCWqG for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 07:11:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A8531891DB
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 07:11:55 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id o3so2903424plb.13
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 00:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zGXEjPktSO6/eCakesqWqwUsuQP/GfUPtsfF6K82e5g=;
 b=YB1NsLBLEhmD0oNselr4ivtcFAkIpTsQyXY8vV2ci3dxFZlPdQOrUdftyHVPuBIcGi
 A8CjH5QGbEp36b0D3NtQ0PN/e3nlDU5HtnzDcappEjeXv6b0YdhFlTWVM/B8ILDNTj8p
 a/71OE9Hk+34UQ+4y2NUjS2g+GRxnk7/QFbAh+IB0hvVyJE3kA5cI/TzB3IdoaRM8q1M
 Yb2DNeLkV809OrvsNpoaliyRyx1A05ZiO63XsbpKCdNOQLRDL11+Vg9LRzhwoNq9RzuD
 lE9e7lHlgjr8WlrPz8PUQZTC7BN2gOT+FwB70oPTkpy2NdUMCXAEze/vUW+Ur9fTfCVs
 vfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zGXEjPktSO6/eCakesqWqwUsuQP/GfUPtsfF6K82e5g=;
 b=DXGidFSRcvgjl2H2ZNpxhNNIMRJ55UHOBGpc95bRNQuSEyLKu3Kk7vV2WyjkgIKYHI
 1iZR+TIODmO6rB4jbHN09gpeItHDuihiHSsb+jlNDfqfY/0pdyRdHA4HIm8/t+/kpfS8
 NNGrY9G9p3rQoMOB5R4wCRCibbvnuDGSbxEB9UtLNSyzdXy77N/5UPgp1481Q6tG43bL
 oZb/zUl9wNLZlsyJZroWMzHd3Dsne+n8V/H1vFd85zXGIRDVKWPHJr2PKrSUR7RKASHJ
 Zy6kYNr+PpWtzEO/qIzdFbhP5AnsSaywfrZ0+ICKAsfS/cw8OnwesdCrnOe1URy/jC58
 bRvA==
X-Gm-Message-State: APjAAAUo0mba86/R/KwJFyZpejbpsQUH/wgWCyegCiDoyTHLDjfGkPLR
 eUXGVM3COO78MXZMdkfwkqs=
X-Google-Smtp-Source: APXvYqy4/8ZGIXdnPqiFeBroCo7zDWSSo61cs6V5zAkV0r8nLFChBSZVvz2SPCX5X4SaRy0OXCeW2w==
X-Received: by 2002:a17:902:e592:: with SMTP id
 cl18mr14104977plb.291.1567149115174; 
 Fri, 30 Aug 2019 00:11:55 -0700 (PDT)
Received: from MeraComputer ([117.220.112.100])
 by smtp.gmail.com with ESMTPSA id 143sm5614739pgc.6.2019.08.30.00.11.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 00:11:54 -0700 (PDT)
Date: Fri, 30 Aug 2019 12:41:44 +0530
From: Prakhar Sinha <prakharsinha2808@gmail.com>
To: gregkh@linuxfoundation.org, kim.jamie.bradley@gmail.com
Subject: [PATCH] staging: rts5208: Fixed checkpath warning.
Message-ID: <20190830071144.GA29987@MeraComputer>
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
 drivers/staging/rts5208/rtsx_transport.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..3fc83875fe7c 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -394,7 +394,8 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 			*index = *index + 1;
 		}
 		if ((i == (sg_cnt - 1)) || !resid)
-			option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
+			option = RTSX_SG_VALID | RTSX_SG_END | 
+				 RTSX_SG_TRANS_DATA;
 		else
 			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
