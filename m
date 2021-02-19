Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A47A32019F
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 00:15:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F428401C
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 23:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmRTBzd1rkIF for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 23:15:30 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 5768E84032; Fri, 19 Feb 2021 23:15:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D66F580FFE;
	Fri, 19 Feb 2021 23:15:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BBD11BF28A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 23:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 496586059A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 23:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szXNNiEHk93r for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 23:15:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 96DB76064C; Fri, 19 Feb 2021 23:15:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com
 [209.85.161.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BF5960585
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 23:15:03 +0000 (UTC)
Received: by mail-oo1-f45.google.com with SMTP id f1so1659236oou.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 15:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FokzymhQLiyG9lWtimk6QhqigfPpSjreUpNCE9+O32k=;
 b=cSrWn5Z4ZzSVM6OOht5m5nb0EGf6LWC5pS1Bj2PMUNb65V/kRb6WZG5nc/2oetHbT+
 JRJWpwH9g6mEJ2NQbo4aCayaK+0sNY9y6TtphL0j3MOhbbfuEwFdG3FWZmrNKUOLuw9X
 B3m+KKUKzU+zH0vcZH6eHItmixlxg+Pkzk0jzCcVbJ3KdqF/CMWIc++V1KSU6vf7bMO5
 MOdCWeyQ5jN2lWTwbM08uDDEO0DFx5EcUFyO7SlOzJTjCk7zLjL0N95U6CI3YMKREoBX
 wEZbyXjS1UUSP1y5wdtxM+TCxGh3Uu+2Ub9Efj3wjXpakYkSZq8jMCjjXXEWZOGRG+ei
 rq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=FokzymhQLiyG9lWtimk6QhqigfPpSjreUpNCE9+O32k=;
 b=m8uZ+0POb89lhwAgZcTNmwCdAZ5Vso0Oyj9PQLSswwupZTIPuo9JTsdZi0eL/SSJsQ
 h1WQcpuqe5aMESAk2ai0FC51wGSelNCWHTEOkb1uGvQoJQY7ir9+l1PutxNGN7kqi2sj
 6B4T+apkSfMBLhRW1T2+doZSMhg9cGGDu+J8IuLVoCIQwSCYFvtNcJzR4scnTsTlOUgu
 NebQ2r4Nr7EEQpi6IAvIHDwAnIXQvbGjzKq8uRgP3FVPGiW8MbsFUTqCemi5/QqutoZE
 e9x0xbkPGt+/GK7fZbLKF0uJR/nmWmR3p5rtpLyyIMo3PYRgZrjRCy8TGUFxnSaBD7+h
 db8g==
X-Gm-Message-State: AOAM531f7rjGM+WfQEPj+KpMy3qZNe714gLv4cF3waVa/lNaxFCu3hP4
 nqlJByy+hLrnKCS8wmgxCvU=
X-Google-Smtp-Source: ABdhPJx4UhnGK92AFwLqDi6ieNtkEaXF+yBN6kVA5iNPerBPgS70bvnHHJTeWWAaTAx7yJpXyjD25A==
X-Received: by 2002:a4a:be01:: with SMTP id l1mr3889892oop.89.1613776502420;
 Fri, 19 Feb 2021 15:15:02 -0800 (PST)
Received: from ubuntu-mate-laptop.localnet ([208.64.158.253])
 by smtp.gmail.com with ESMTPSA id f29sm2012467ook.7.2021.02.19.15.15.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 15:15:02 -0800 (PST)
From: Julian Braha <julianbraha@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8192e: fix kconfig dependency on CRYPTO
Date: Fri, 19 Feb 2021 18:14:57 -0500
Message-ID: <8483722.hVsnvgcxvV@ubuntu-mate-laptop>
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

commit 1a3f343027d7f5a6475a019aa20be89795b8c8e0
Author: Julian Braha <julianbraha@gmail.com>
Date:   Fri Feb 19 17:02:24 2021 -0500

    staging: rtl8192e: fix kconfig dependency on CRYPTO
    
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
    
    This is because RTLLIB_CRYPTO_TKIP selects CRYPTO_MICHAEL_MIC and CRYPTO_LIB_ARC4,
    without depending on or selecting CRYPTO, despite those config options
    being subordinate to CRYPTO.
    
    Signed-off-by: Julian Braha <julianbraha@gmail.com>

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 03fcc23516fd..6e7d84ac06f5 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -26,6 +26,7 @@ config RTLLIB_CRYPTO_CCMP
 config RTLLIB_CRYPTO_TKIP
        tristate "Support for rtllib TKIP crypto"
        depends on RTLLIB
+      select CRYPTO
        select CRYPTO_LIB_ARC4
        select CRYPTO_MICHAEL_MIC
        default y


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
