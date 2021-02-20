Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F24320661
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 18:23:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49CCA860C8;
	Sat, 20 Feb 2021 17:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PnmylQV5M0A; Sat, 20 Feb 2021 17:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1777C81BE2;
	Sat, 20 Feb 2021 17:23:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4851BF4D8
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 17:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 726C28375B
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 17:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NIWBIC5Q26Ia for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 17:23:14 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 1F99183661; Sat, 20 Feb 2021 17:23:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A62B18367C
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 17:22:49 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id h16so6330788qth.11
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 09:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R0A6YOTC5OENL7axcZ+QpFZ8S/KWCKBZLWbggOyg4tU=;
 b=nUksVtlGmG2giMPchAu/ssZ/ot36wJafNSX9iiXZvnSADLAE/yl8rlPaQXhff5ufx2
 jz8xxma8IvwnfgMJDNGK1jQO0RIU9a2FNs8lcCvDv9rwveWz1QoY93X1ni5DmH7yyPnu
 zRMqOeB3ypAnl6WsGPLvVa8pRsihkt7wGIom/ZJoTA/C8WxaNT0ZYt1RZeUNvH7W46Dn
 0EsmIbJ4RuxHZD0/djWiueJx6IXOmX5/Kfa0B9IZFWBhDn1S2rwruEdsflr3pQAUx7KK
 77JJBplnJPA1u7TG6B+YiPbp6ztSaTaOoTeGGmEqDb8g4N8PVSZTBsPwGUPUMkLCzVGK
 4zig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=R0A6YOTC5OENL7axcZ+QpFZ8S/KWCKBZLWbggOyg4tU=;
 b=r6Zm4mv6cUmCVGHLA9lK9lAe/ZzcAmsLy/4IvMxb/oJbfixqnAf/kpBXA8/uUgDPkg
 ywwG6Spq6qP322s3Kqfv6hyC8FnON+HKf9HvRnIdT8eJHqLoE3nVNETUBUGKvufH9xMF
 hKsyBdiGx+dV40ZUyGNPVtQBWJIvAaNatpbGmS0PrLsutiER39m271Mk/Vx5Lcx3h8Gx
 mQAnQMksScfDJImOCKMs7/iAEteFS6+49Ynkdbx3GATDgTAZTQP5tMIOt9OeVckQ7Gge
 J0NHID+5+5GRK/mHj9K47JmsoLhYH2BiuPGv+MzqNx3QehhPs/gb0QtmlMO2y+dd/lIh
 Iztw==
X-Gm-Message-State: AOAM53003CLP4fJ+ydxb/MWRLBCXDfEjmAKu7FFVbxOiVCILLqHoQQuA
 /QUqkVBSvqpExYyY6xAJrrg=
X-Google-Smtp-Source: ABdhPJyBSt/Uf47WC79Gf+MXiDIPX9YElY5QrMheyVFzM85zZggudjy9Ny2qUze4d+k6cqhI9ssKOg==
X-Received: by 2002:ac8:6b57:: with SMTP id x23mr11069661qts.278.1613841768284; 
 Sat, 20 Feb 2021 09:22:48 -0800 (PST)
Received: from ubuntu-mate-laptop.localnet ([208.64.158.253])
 by smtp.gmail.com with ESMTPSA id i5sm7685949qtw.3.2021.02.20.09.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 09:22:47 -0800 (PST)
From: Julian Braha <julianbraha@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v1] Staging: rtl8192e: fix kconfig dependency on CRYPTO
Date: Sat, 20 Feb 2021 12:22:43 -0500
Message-ID: <4036376.6NakBfNh49@ubuntu-mate-laptop>
In-Reply-To: <YDCz/6gQgp07NGw2@kroah.com>
References: <8483722.hVsnvgcxvV@ubuntu-mate-laptop>
 <YDCz/6gQgp07NGw2@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From fd949b204eeb6b685bbf5dc9a329c931fcf8b0da Mon Sep 17 00:00:00 2001
From: Julian Braha <julianbraha@gmail.com>
Date: Sat, 20 Feb 2021 12:07:30 -0500
Subject: [PATCH] staging: rtl8192e: fix kconfig dependency on CRYPTO

When RTLLIB_CRYPTO_TKIP is enabled and CRYPTO is disabled,
Kbuild gives the following warning:

WARNING: unmet direct dependencies detected for CRYPTO_MICHAEL_MIC
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]

WARNING: unmet direct dependencies detected for CRYPTO_LIB_ARC4
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
  - RTLLIB_CRYPTO_WEP [=m] && STAGING [=y] && RTLLIB [=m]

This is because RTLLIB_CRYPTO_TKIP selects CRYPTO_MICHAEL_MIC and 
CRYPTO_LIB_ARC4, without depending on or selecting CRYPTO, 
despite those config options being subordinate to CRYPTO.

Signed-off-by: Julian Braha <julianbraha@gmail.com>
---
 drivers/staging/rtl8192e/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 03fcc23516fd..6e7d84ac06f5 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -26,6 +26,7 @@ config RTLLIB_CRYPTO_CCMP
 config RTLLIB_CRYPTO_TKIP
 	tristate "Support for rtllib TKIP crypto"
 	depends on RTLLIB
+	select CRYPTO
 	select CRYPTO_LIB_ARC4
 	select CRYPTO_MICHAEL_MIC
 	default y


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
