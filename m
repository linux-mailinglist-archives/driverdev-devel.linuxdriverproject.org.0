Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6F131FD9A
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 18:10:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5471787494;
	Fri, 19 Feb 2021 17:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QD6dp2-fifxs; Fri, 19 Feb 2021 17:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADD81873DC;
	Fri, 19 Feb 2021 17:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A92A81BF577
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 17:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5979873E0
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 17:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QG9zXtyhpW+W for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 17:10:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D5EF873DC
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 17:10:50 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id k22so3702014pll.6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 09:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3T+n7MMMkPAgUMPVgTYwVKGO+36GBsdg6t9UxvEW8XU=;
 b=aJSnAHAcvGNM1IohGEapLVzbb4l+X+BOyFYNsk/U6ofrMj0C+AAGKf0Cz5xfmN7Y5/
 mqeHF9a3m66uSEI6wJMMKXb1f7yn3Gs04+Smq43gJoFewF7RtEQSWIleSIyc3vz+AdND
 ZxVIMAK8fHLWnPjwN09l973MQ8lR8gLarZX3+hRqDBY641vX1IQjTttnDM1uVsk6df7P
 ik3Tp7yLxOIGuEIU0HaUrD5pASz4l83S/xNisQYN7qD2kIRfscn+FlNIKSe3UWbA5bD2
 AftaaHrvNev1sxALlqu3RSXdgx63pjQ8bB6fDWd4TPld436SJ2uCqblTXrEuLHmB94cm
 8JJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3T+n7MMMkPAgUMPVgTYwVKGO+36GBsdg6t9UxvEW8XU=;
 b=WpcDiQstWk0tNG4ldVs4nsp/zQHLgXtX4puL/raLcN8io30RWXWeErNmLN+WvjhGjT
 H9lQ/mu1pgq5gbODyEr28R1jmZWHGPT3SPCUJxQ3vByzusCS+S4xT3CQQr3z+XkSoYik
 43wMxpXCOhE/sSkyxb9FF4cJ3n8ijlfKUZhgMhbrAAR/HDuiBfD8xrpTqj7vU/AJ7tDs
 REG1v/8JB8B7IqwqScDmnBSZwFXRf6LaUYhG9sfF+UKS2t67iY2mASRGKgw3DganwcEj
 2yCxsqcfBtbbVUSd2AWzQp+rXeX0gffp83MXReWRDFlLdETukaFsPqzYZDLG7AwcrtgY
 IexA==
X-Gm-Message-State: AOAM533hKFN7TWWzz432fsxVZoQcYXlmGn1efpf64U/bAo/meLSRK31t
 Q8ghwG79vGg0RKg9MH57sE+joyxeLRZOjA==
X-Google-Smtp-Source: ABdhPJxT1R+K3Hl7k1Uv6dL2RXz+cPBeNRMe37JCn17iaOGOUgcxogqAU/37T0Ato3pkcDWaGgK3Xg==
X-Received: by 2002:a17:90a:ba02:: with SMTP id
 s2mr10253477pjr.53.1613754649304; 
 Fri, 19 Feb 2021 09:10:49 -0800 (PST)
Received: from localhost.localdomain ([106.51.140.97])
 by smtp.gmail.com with ESMTPSA id x13sm10042387pfq.34.2021.02.19.09.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 09:10:48 -0800 (PST)
From: Shreesh Adiga <16567adigashreesh@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: octeon: cleanup unnecessary parentheses in
 ethernet-spmi.c
Date: Fri, 19 Feb 2021 22:37:37 +0530
Message-Id: <20210219170737.1138083-1-16567adigashreesh@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

checkpatch.pl reported issue of unnecessary parentheses for the
expression. It has been removed to fix the report.

Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
---
 drivers/staging/octeon/ethernet-spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-spi.c b/drivers/staging/octeon/ethernet-spi.c
index c582403e6a1f..699c98c5ec13 100644
--- a/drivers/staging/octeon/ethernet-spi.c
+++ b/drivers/staging/octeon/ethernet-spi.c
@@ -202,7 +202,7 @@ int cvm_oct_spi_init(struct net_device *dev)
 	}
 	number_spi_ports++;
 
-	if ((priv->port == 0) || (priv->port == 16)) {
+	if (priv->port == 0 || priv->port == 16) {
 		cvm_oct_spi_enable_error_reporting(INTERFACE(priv->port));
 		priv->poll = cvm_oct_spi_poll;
 	}
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
