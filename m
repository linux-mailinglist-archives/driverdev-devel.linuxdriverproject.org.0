Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C971F2A24A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 03:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E63A86E92;
	Sat, 25 May 2019 01:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55Bg2oiMIsuF; Sat, 25 May 2019 01:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E78F086E66;
	Sat, 25 May 2019 01:27:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D8D71C1639
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 01:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A0B186E66
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 01:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDl9y-kDmaOK for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 01:27:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 034E986E7A
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 01:27:01 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id b18so4135445qkc.9
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 18:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AzraHFE6wMYG71k7o5b4Wv/r7uKs8Bdv2wavFnwb5sY=;
 b=MXuSHxcr3kQqN04w7FF8uyXbTEVHLiCIpTF24nNdD1DkgKtq4oZEUKBLzMBYaAnOpM
 Nkvo0yWKSG7UIR+R2dqYJAOt9B5sRcVwgTE1jNBecCp/MrT5MP4nXgUjYTX5RZMAce1U
 3kSRtBR+86x293fBDv0c1OAppdvGKTE6TjbA0SSVmvod5tRFAiivgvoXSszotzPhNaD1
 z+f7NHDoR5zaAp0LSM3vpKHqz4dcLR01qbcJwSS0PMVW1JfllZiBXWbTXMbKtfTXB9V3
 51iMreCGM2wfy3kE0z/M882zlV5w2Cv+YS0ktUenT7dz4ndc/ukU2J//ESIw0H9/ZUqZ
 sGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AzraHFE6wMYG71k7o5b4Wv/r7uKs8Bdv2wavFnwb5sY=;
 b=XVqK21vYmbVbXMw1JprpCA3Roeerrs4JZ350fenKUOcnymef8HT407IyidL3zqG8No
 /X2le/zL9+TmAdllB72NJFCjmsdOD/Wfd6nMw0pLfWp3QOKW90mx0hPFWm3+E0SvyVsr
 cEsNk+Mw11gJ2W21ksZt8IrA5v3o25a4Mf+/ZUeEL2iELODiB2XzA3NzvdlFa+7JS8mE
 Bbc03fi+rcUHiZtm0XIwPtNBLXVNsDpP9Ltb1gBxWr+nBQhYXVJY3abG2H685rUhrdPm
 jCoMDQG7ao2Na85VG1oKwyTj9Mvk+ukUeIyNsn1pcXO9qvI/sn2VTxicmLy9zL7/KWaL
 hMEw==
X-Gm-Message-State: APjAAAWou9m5G3IcQ7gIGDYc0EnyAbMCe1UJGNY35H3dTzpHEA+fvEQf
 8WhNt/mkUD3+B+JPOCy3aN8=
X-Google-Smtp-Source: APXvYqxp0RKzd8fLOKxLWCeIvyLUlr6GJyUlqGQb8MD83JBEVlGRLQnd7AOyRANibvoyirIffixJew==
X-Received: by 2002:a0c:d023:: with SMTP id u32mr28733854qvg.23.1558747621134; 
 Fri, 24 May 2019 18:27:01 -0700 (PDT)
Received: from renatolg ([186.220.0.156])
 by smtp.gmail.com with ESMTPSA id j14sm1461656qtp.40.2019.05.24.18.26.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 18:27:00 -0700 (PDT)
Date: Fri, 24 May 2019 22:26:55 -0300
From: Renato Lui Geh <renatogeh@gmail.com>
To: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
 stefan.popa@analog.com, alexandru.Ardelean@analog.com,
 robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 2/2] MAINTAINERS: add entry for ad7780 adc driver
Message-ID: <7ccb64ba4da8f24981009187e975d71372d62fbf.1558746978.git.renatogeh@gmail.com>
References: <cover.1558746978.git.renatogeh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558746978.git.renatogeh@gmail.com>
User-Agent: NeoMutt/20180716
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds a MAINTAINERS entry for the AD7780 ADC driver.

Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 54c8e14fae98..d12685c5b09a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -880,6 +880,15 @@ S:	Supported
 F:	drivers/iio/adc/ad7768-1.c
 F:	Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.txt
 
+ANALOG DEVICES INC AD7780 DRIVER
+M:	Michael Hennerich <Michael.Hennerich@analog.com>
+M:	Renato Lui Geh <renatogeh@gmail.com>
+L:	linux-iio@vger.kernel.org
+W:	http://ez.analog.com/community/linux-device-drivers
+S:	Supported
+F:	drivers/iio/adc/ad7780.c
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
+
 ANALOG DEVICES INC AD9389B DRIVER
 M:	Hans Verkuil <hans.verkuil@cisco.com>
 L:	linux-media@vger.kernel.org
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
