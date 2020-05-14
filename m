Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DE31D3FA0
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 23:09:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 593AF89772;
	Thu, 14 May 2020 21:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWZkFsGjl5nx; Thu, 14 May 2020 21:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 831AC896B2;
	Thu, 14 May 2020 21:09:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD70D1BF31A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B5CE487B3F
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXBDNtb7qg8f for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 21:09:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8EB88784E
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 21:09:38 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id o14so5124303ljp.4
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 14:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U4VmfW4FL3g5XlbJ7YpirLFQQt9NUcslAtYnzd5so8s=;
 b=XlpwXMaxIZrQx6uVHwjc8KYucE0BHnbabhp3Vbk8ETeCpw9au5E/dyBe9A8yLyZ1FX
 PZPzK/ONNPTrgflbkIxAuLEDAwlJNiRFL2vrsSX8Bj0vUBdwCSHZAPOlVtn0gDf0Ghyf
 s5FSDiIRqJMoRzQdsKm8F7lvcIS81hYAHc2yM89523fj46Vgah7b8+++l7TH8i5jqACT
 sEAJjKdxIna17nNR6/JufmbRDcuZX7eXgiphG6vfR2j+FJJA0qwpmiyyFUOvcYjEqMsJ
 los5PhxSwrUn5CfV9EWNbo4h4UCOh4epva+BB7mimfcpcJTTqX/XvMv8gszBDqFdswfv
 KNbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U4VmfW4FL3g5XlbJ7YpirLFQQt9NUcslAtYnzd5so8s=;
 b=r1yRgWPPvJAGBRkbSEm3z1Q4S4r3Vd5FRI9uZf1VGoo8R0sTntt39B/PWTb04IZHjT
 JrczGlih33Lt22Xu6ANLsLVefKMHSnu8jwUt4B0gdOv/5K6Q0FjRUUFOlj/ZRdOSjCEh
 tB61xZ9F8Id5NPFTSw/OGRDehLc4rcT+W6UrrU0pYOgPrRRfySkv7TD9Nwu8FYF12wH+
 AK8NawulGL8R0vKBsPu417Uq7S3bqQH7oKfRSaFBROSOVgz3GZJ/Mb2NK080bUCiIMii
 ph0vYqllSNgGAWN9Z9MBMuDIx+um59zAYeXS4NqZOEszkZk6AdgcorfdCMlOWWA8LGyw
 9Oiw==
X-Gm-Message-State: AOAM533pyDFtjCWACMf8y1pDI8j5uLWHNb6s3/2biDpmnn5h7kiJcXFd
 SDW2SnU6S710Wd7fd2ndWGA=
X-Google-Smtp-Source: ABdhPJxSu9RwEUcnZ2Al2WFZnV8j+ZHOUSmmA55/vTsjJWZ6zbbqPO/J3cRtjZiXADCgceXZ5vZwbw==
X-Received: by 2002:a2e:8296:: with SMTP id y22mr124092ljg.194.1589490577063; 
 Thu, 14 May 2020 14:09:37 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.gmail.com with ESMTPSA id g3sm45215ljk.27.2020.05.14.14.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:09:36 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH v1 0/4] Tegra Video Decoder driver power management corrections
Date: Fri, 15 May 2020 00:08:43 +0300
Message-Id: <20200514210847.9269-1-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
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

Hello,

This small series addresses a Runtime PM issue that was discovered during
of Tegra VI driver reviewing by balancing RPM usage count on RPM resume
failure. Secondly it fixes reboot on some Tegra devices due to bootloader
expecting VDE power partition to be ON at the boot time, which wasn't
happening in case of a warm re-booting (i.e. by PMC resetting).

Dmitry Osipenko (4):
  media: staging: tegra-vde: Balance runtime PM use-count on resume
    failure
  media: staging: tegra-vde: Runtime PM is always available on Tegra
  media: staging: tegra-vde: Turn ON power domain on shutdown
  media: staging: tegra-vde: Power-cycle hardware on probe

 drivers/staging/media/tegra-vde/vde.c | 45 +++++++++++++++++----------
 1 file changed, 29 insertions(+), 16 deletions(-)

-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
