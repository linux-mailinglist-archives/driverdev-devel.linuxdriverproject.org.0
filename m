Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAD0321ECB
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 19:06:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78F4683829;
	Mon, 22 Feb 2021 18:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPp5JGQXIWXT; Mon, 22 Feb 2021 18:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CD6283641;
	Mon, 22 Feb 2021 18:06:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 767AD1BF983
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 18:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E68F881E1E
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 18:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wEbtCQJvSjb7 for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 18:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E48886F74
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 18:06:19 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id t62so13494403qke.7
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 10:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w/1v7qcxV6sXFq3hxXWf+zOxG2zTiP0+4CUMaFeTsMk=;
 b=hh90LbgHh4HvFm440ikVfcEEOikR/+r7DS0iYKRlzm9tZKNHikQxp8biTqRYaBhgYE
 8b6FdvJegN2lSjQhNg4sn8cTY+fYHfwRtZAV5wOfM3v7N0N8+9X2Ml6LcjOF1ZFv5cNa
 BGAHcVykRnvgR0eoUty0oE7GUYLECpZPcX5gY7gnwCtxsl1qh3lMBBJrBL+CpDL5cQfv
 WbmhA1qrC/WLJGy+c5pjRopHnWsW8rKzfsHVG6yE/wkm1oixSm1hEZwILhgBV1HwLAto
 9xGVj90eU5+zG/Mu+xuDR3O9hT98U0rG2/A7c04DkFOsIpYmJgSx4is9UGKEc6Fx+th7
 8BNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=w/1v7qcxV6sXFq3hxXWf+zOxG2zTiP0+4CUMaFeTsMk=;
 b=nWd7b5ozawCXVGnUB1dtX20u1M+up2X1UjauKDiy3aeDi2se7RzoYBZkbD/SxwL9jZ
 Z6JBB5CZQ76LxIxsw1J3Z+BzRO0g6uZcXlESwc0yVNn3eFm9R89auJzcvCM3ZPk49VcP
 GCPgm6IM98znJU2EPyQcJgM5Bk13kQ4bn/zpdEIHxY570dIZYwAfmtel1XtyXKTxwLOf
 xrGxevIDp0u2L5FSI9J6nao3Ha+6Dzr43Gekxh6y8KB14WIUMeAB33uVAIvAu0GAQMs8
 luH0K8WEd3FWnxNsTKjjVfpCm+akqduF97bNN+5TnFA3BdivY1tQNsJ11JqoWc21A3Vj
 4lzw==
X-Gm-Message-State: AOAM531qCpkILQjTAOJe1aRUJ5If71G9RggLXiDxjKitsi08V8TPHUUm
 mjCXwdCX9H4Y/OlLhYYOR/s=
X-Google-Smtp-Source: ABdhPJwz0uUQuS6SrOxnd9U5qO9ZiLgAHcC4GWDAyuSrpRSFXyQDaZW9Y29QL3L9YkZUF7/d+C+TcA==
X-Received: by 2002:a05:620a:e16:: with SMTP id
 y22mr2944198qkm.86.1614017178085; 
 Mon, 22 Feb 2021 10:06:18 -0800 (PST)
Received: from localhost.localdomain ([208.64.158.253])
 by smtp.gmail.com with ESMTPSA id c63sm13109242qkf.8.2021.02.22.10.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 10:06:17 -0800 (PST)
From: Julian Braha <julianbraha@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: fix kconfig dependency on CRYPTO
Date: Mon, 22 Feb 2021 13:06:07 -0500
Message-Id: <20210222180607.399753-1-julianbraha@gmail.com>
X-Mailer: git-send-email 2.27.0
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
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
