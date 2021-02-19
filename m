Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA77831F8AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50C8C86D9F;
	Fri, 19 Feb 2021 11:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P0gsct942dXl; Fri, 19 Feb 2021 11:55:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1448A87108;
	Fri, 19 Feb 2021 11:55:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5711BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6753F873E0
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tNPpMwgH042y for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55E4C873D4
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:55:47 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id w18so89118plc.12
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u5F72tWqz3dbWWau6aSsgoog6J6+mBzVvjp77XY1zTQ=;
 b=bnhJnZCVVadNmQB5sOL7ZM/ZAdqzqMtFtbY5cN6REFsNgBqmxSXvyWW/lyTddeY5x+
 h1LlIOEHvA01/yXxdVZarFluS4Namz5a63spNdbhD66iI7R/9rgw+50ff2tzvdVn1CZe
 jc4m2cOOjQJzb4id5yIWi8cCNvuxDkxH0IjUTZVJvsVMvHk+vGc4eUhB0eHrpfg2duqB
 YjZeb2NfUEvUp1tyadlfMEDf71yYZ1ukuQZOHegogXP0M4U8uAW2DVT3c4LDQYGIgt+f
 gKknb39ndjWfobU7R9jAiYhLPj2/JmtHidAGhufgTuYILMyfTLAbyOOOfnbEr2XskCxr
 5HNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u5F72tWqz3dbWWau6aSsgoog6J6+mBzVvjp77XY1zTQ=;
 b=W4bDkNCGHJJO4m7EVZC0zMhIXoeftwAOIvD7hXqU4yTamHaKKzRFmMe2+QlIZz2vPq
 W5msO379mqCl/JSITJJwgaCSwBG+p4IVmn9HVN3kTkcCQG1QCMV0lsEQe9XTXe27YDbH
 gbAZTq2uvw2BFjnBqiwK95MALrNw7UKK2Fc7OghPgRn4HSKeaKEPjKQVwgggTmVPoN5K
 CD2Iin0PFtEha1vAz0xQJ8j7nuEFGZrYKoFsnz7Ahwf5bwGAkO6ANPVFoAamZp614WWg
 K/GYSRHG4TEgXnL3Jgv77fprOLH/v7CIyoMWH/tcwNUWKzGrXdXgsSKWnMpwC+f3nEdw
 ODhQ==
X-Gm-Message-State: AOAM531LZCOTLebIlxA2QM9XDS7Fh0o0zUIMcQtR75huF5p5vWW0Hdud
 hP0PLJ3ZOQu8m/vyC3BxLMw=
X-Google-Smtp-Source: ABdhPJzJP8W2s8eQgQUFdZ8phsPNpcB/lADvbZd4+kjVyNWDlFnKAYgrBaVKNEgWjfVCmYG3W9bDGA==
X-Received: by 2002:a17:90b:1a87:: with SMTP id
 ng7mr9064212pjb.211.1613735747028; 
 Fri, 19 Feb 2021 03:55:47 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id a5sm8957224pgl.41.2021.02.19.03.55.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 03:55:46 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/2] staging: rtl8192u: fixed coding style of
 r8190_rtl8256.c
Date: Fri, 19 Feb 2021 19:55:41 +0800
Message-Id: <20210219115541.6420-2-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210219115541.6420-1-ducheng2@gmail.com>
References: <20210219115541.6420-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Du Cheng <ducheng2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove the unnecessary return at the end of function
phy_set_rf8256_ofdm_tx_power(), reported by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 3e6bd6caf9da..54747fda552f 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -291,5 +291,4 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 		}
 		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 	}
-	return;
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
