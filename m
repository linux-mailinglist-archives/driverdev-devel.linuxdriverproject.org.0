Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC7A319AAE
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:44:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9237F87591;
	Fri, 12 Feb 2021 07:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pPkN2-6ymsT8; Fri, 12 Feb 2021 07:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CFDE87300;
	Fri, 12 Feb 2021 07:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31FF41BF33F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17FD46F654
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VmMUyKU8AjWJ for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:43:58 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 01E346F677; Fri, 12 Feb 2021 07:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0D426F614
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 07:43:38 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id l12so6821860wry.2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 23:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m10UBKJBthWio+4ksO5Z9Dkd3ZlCqAP161BEeEUt8Io=;
 b=f6wLsGMhI6Z139SNVZQLqJAe8av558XjZ9b+fCIV8LGKgJGDIqEm/JBW0XvqPUOZqY
 KhoNVH7rL5FKgf2ucb74TDsPs/quFx54Kr0Dq2UzfLiCg+0lOjNHXjpaZe7sx+b+fZ9H
 Tm/r0EslGIH59r/DifvnA9QSqMz80zjReZb0wN80MvJSxhPHB6ZIB5vYogw/pQZQpgm7
 IaHaDDj1A5KZUfBi8cnC8mfOJpN3k/FAfyTfjQjPLse9Tq9/8qLtzPq4L+oqw0E8g5Mj
 ulStsPewdShNTd3s87dSx5RnTLeU3Zpgxm1jfmIESHh5HXNmyiieSAisFkOqRNqMMGUX
 Me3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m10UBKJBthWio+4ksO5Z9Dkd3ZlCqAP161BEeEUt8Io=;
 b=UVQSUfBQuxK9TN1H0slVpS94IfpMRo7gB4w7SV6pHHKCH0tCQWuhkxwKXiABTd9tyr
 82E4Ozsht7cyBWqvX/BiKFZrB/JX/H1QSIwXzkBiOfzo+yl4b/09XZK+iCU23ymI4neG
 gkHmPtJid+9fJ9vqPB++Z8ZVdEErTRZ/548Ug5EToydrQmV+DYnnHSJKTaDwZmG+qYyx
 oX2kT/8g58lALIHnBIRLd6iYyqvCn8qyDPpzTyCJGxUA8nazKdMUbcdSbXA0lZCAXL+d
 40p0JMXcDmPb/yM4WWjjMWzCKINVTABqUYdG2VyUg9PMQWr7fZfQ76Z1Cxws2BBLCca5
 pmjg==
X-Gm-Message-State: AOAM531c6CZdlkIdYXK8b3Qif4Kp0wwFld1Bft8eD77vHqM1p+z7YGAH
 JD6kM0nHddU5ukoj3JKjlGzqhIAhuS7LMA==
X-Google-Smtp-Source: ABdhPJwaIyU5WDqbb7ACB6YCXWk2H6LmrqTYmJsjC1DVjAHVYfNpHIqezw+x0S7+W3tzYbES0hVX0Q==
X-Received: by 2002:a5d:6807:: with SMTP id w7mr1921499wru.0.1613115817029;
 Thu, 11 Feb 2021 23:43:37 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id a17sm9663858wrx.63.2021.02.11.23.43.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 23:43:36 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [RESEND PATCH v5 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Fri, 12 Feb 2021 08:43:30 +0100
Message-Id: <20210212074330.4650-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212074330.4650-1-sergio.paracuellos@gmail.com>
References: <20210212074330.4650-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 clock driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f5eafee83bc6..f0c51d9760ec 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11247,6 +11247,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
+F:	drivers/clk/ralink/clk-mt7621.c
+
 MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
