Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C5811FA53
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 64BF5204D6;
	Sun, 15 Dec 2019 18:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSFQJPV035nR; Sun, 15 Dec 2019 18:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D20320336;
	Sun, 15 Dec 2019 18:09:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9261BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5FFCD87BF5
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tfiM-trVPc6 for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:09:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F9DD87BD7
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:09:30 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id r19so4251640ljg.3
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hl/e7Xx4KZbxmi+G3Avli8jOk/vDtWO+9+LzOqRAwkA=;
 b=U8eKiJD7GI8YkXj0LqPLUKSt5Si2KlyhD1RnPwQIPw26jzGodMon42i/9cVB9Ae6oY
 8f7KQSB3I6wzl667PP32vTf6COJXl1q20fBUo/CZaypaKUzktB82cJlkIxRTTkk2BuOS
 G2ATID9TVIlrT3vshUwnJ3nD9JeJbxaeR+9JHM1UYcBw+y/hBlWjE/bjCjzFIA9m3HPa
 xp/h8YkocVgo0pRyYzjylHyATjru2FU/62RthGFKvWHeBoIV+bNV+pvesBFfNFD3qSHd
 vmVgGhfHpr4RLpOewcYabliKHdhoDs8NfmxsZ7Vich9W5g24mfNSs6hWFRvtUZiTFIni
 6c7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hl/e7Xx4KZbxmi+G3Avli8jOk/vDtWO+9+LzOqRAwkA=;
 b=DkVTdb2fhx4rGyV9lUysJIiUfaYAx4h63QMrQdy5yrhcN54x1qAM/YILDJ8jlfCQqc
 H4FygeMUM7bfrkGtGjfCl4HF7Pzy2ITQhMw+d/OBjMer7AHRyXHTxSHBEWCfS+4NcD7n
 pvBf4rDONkNZRlCGq0BVLy1naLuRcm8S3B8wSA/s3E4+3Mdt075kJb+w5lJtpl70JcBr
 C4pQ+LMVHq4uqydEwaZmK4X1gM8DspTOudrIqXbTMTx6mDm+8cFLNZ+0q+USqjQCmHPg
 HHFbp2zGIAuHD5gD3DFAsaXvkHK5RAl0QSHzylUba0xVlE9TyTPrpPx4ozQXdENes8E5
 hMqA==
X-Gm-Message-State: APjAAAUJX4MuArKP1hO2svl7nDmdLsPEI7u7YqS9Vbg0xJtC28poFglJ
 szpeQEG4Ci52AQwajLx8Jnk=
X-Google-Smtp-Source: APXvYqwCaChD81jN2RDNw/uKHzTKvFtTZTfMnsqbR67SuVkrf2vyYHzwu7cfXxnYeD4RFfiHxKWDCg==
X-Received: by 2002:a2e:824a:: with SMTP id j10mr17279552ljh.209.1576433368435; 
 Sun, 15 Dec 2019 10:09:28 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id t27sm8871875ljd.26.2019.12.15.10.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:09:27 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v1 1/3] media: staging: tegra-vde: Select IOVA unconditionally
 in Kconfig
Date: Sun, 15 Dec 2019 21:07:50 +0300
Message-Id: <20191215180752.5408-2-digetx@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215180752.5408-1-digetx@gmail.com>
References: <20191215180752.5408-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There were several reports of building failures due to IOVA being selected
inconsistently by different drivers. All drivers that are using IOVA API
should select it unconditionally in order to avoid the compilation
problems, tegra-vde is one of those drivers.

Link: https://patchwork.kernel.org/patch/11057831/
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/Kconfig b/drivers/staging/media/tegra-vde/Kconfig
index ba49ea50b8c0..0dc78afd09e0 100644
--- a/drivers/staging/media/tegra-vde/Kconfig
+++ b/drivers/staging/media/tegra-vde/Kconfig
@@ -3,7 +3,7 @@ config TEGRA_VDE
 	tristate "NVIDIA Tegra Video Decoder Engine driver"
 	depends on ARCH_TEGRA || COMPILE_TEST
 	select DMA_SHARED_BUFFER
-	select IOMMU_IOVA if (IOMMU_SUPPORT || COMPILE_TEST)
+	select IOMMU_IOVA
 	select SRAM
 	help
 	    Say Y here to enable support for the NVIDIA Tegra video decoder
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
