Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B838B331179
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E2098372B;
	Mon,  8 Mar 2021 14:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CLqaw_TFn7S; Mon,  8 Mar 2021 14:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8AD82C7D;
	Mon,  8 Mar 2021 14:57:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1ACC1BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C169260710
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WUY3svtkRUr0 for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04EE9606A0
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:40 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id hs11so20961766ejc.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lLj7Gp4AXNBIRfM05Fb/npNKmdzGnIj+j8T+QIUmIp0=;
 b=GYwAt5N11Htctvk5vaStUU1oMV8AcHJat8k+JeWcUlAP6NIzKfpP2octcY7sipgk3Q
 q2JbUqobc5/wdXMc3ss58YGJM1/dfaYyxxVtxbzbXRmGPABKNLCY4f8p9dE17XRZWR4P
 G4eWbUvaydrHkOhcAKITzQ4XatIdcCRogDyorfkg9j9xZPTLwSBwVpPrx36/8lCWs64y
 AmnbbHYZYZRjlVXrAFO8UFbyNEm3nAGU280MlSxCdKPqrVn6TGqZM6/tk9WeB3xyULdp
 duSPWwZG4Bs2YEcTeTv9hOjWQC+g8vtDuFJLHkEArTfM+f7c3u1IiTVgSOgSM1mvqH1E
 MAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lLj7Gp4AXNBIRfM05Fb/npNKmdzGnIj+j8T+QIUmIp0=;
 b=Iv8iC5U8Cr/y2w5ereZd6aIUYfbyf4zyRmwBCKfq0nNSIqEG2/3FGwYpJh3mpJkE8v
 dE6TIxGVuX9C33EcjtDL6xI8XlqhhrOVxVIGVfMTfSPA9ZVEM9Ea0iG1sT8Y6XG9kEJY
 aBV9kJDy9h4MyTIlmq7ol+FCX3T2T+2Dmop6Ksx8zrNFXjGaO/7+jKOdZUCO65c4la4G
 P8mvt/J4IIXUmv8aNoE9cnYWGEzZAIlxlJrxkwDXpw2gWKUY52LmVMWw/1Y1k5k9ojPj
 c7oMlLSm+/FCFcRsrZHoRpC33GpxQPNR4Q57Lnv++IrkETAhiv+SptRzWggR7Im2eEtZ
 Ef8Q==
X-Gm-Message-State: AOAM533smC5P98uW20tEareN1vvGI9G+yPhdOUhiW8oHCXfnLA3WFuiF
 ERD7eTQXdixE1++Te8zaXGen7w==
X-Google-Smtp-Source: ABdhPJwujoxKBULC2TiDF0uTmZ725nCMJDdNLnOASHbIowxRxu7/T7o0BEees1GbdUH3W536CdvnxQ==
X-Received: by 2002:a17:906:2804:: with SMTP id
 r4mr15241523ejc.521.1615215339299; 
 Mon, 08 Mar 2021 06:55:39 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:38 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 10/10] spi: docs: update info about 'delay_usecs'
Date: Mon,  8 Mar 2021 16:55:02 +0200
Message-Id: <20210308145502.1075689-11-aardelean@deviqon.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308145502.1075689-1-aardelean@deviqon.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
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
Cc: thierry.reding@gmail.com, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, jonathanh@nvidia.com, broonie@kernel.org,
 ldewangan@nvidia.com, Alexandru Ardelean <aardelean@deviqon.com>,
 vireshk@kernel.org, f.fainelli@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The 'delay_usecs' field is no longer present on the spi_transfer struct.
This change updates the doc to mention the usage of the (relatively) new
'delay' field.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 Documentation/spi/spi-summary.rst | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/spi/spi-summary.rst b/Documentation/spi/spi-summary.rst
index f1daffe10d78..d4239025461d 100644
--- a/Documentation/spi/spi-summary.rst
+++ b/Documentation/spi/spi-summary.rst
@@ -411,8 +411,11 @@ any more such messages.
         duplex (one pointer is NULL) transfers;
 
       + optionally defining short delays after transfers ... using
-        the spi_transfer.delay_usecs setting (this delay can be the
-        only protocol effect, if the buffer length is zero);
+        the spi_transfer.delay.value setting (this delay can be the
+        only protocol effect, if the buffer length is zero) ...
+        when specifying this delay the default spi_transfer.delay.unit
+        is microseconds, however this can be adjusted to clock cycles
+        or nanoseconds if needed;
 
       + whether the chipselect becomes inactive after a transfer and
         any delay ... by using the spi_transfer.cs_change flag;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
