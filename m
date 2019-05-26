Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719E2A77E
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8104882A9;
	Sun, 26 May 2019 01:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89Xm1PhpiOR3; Sun, 26 May 2019 01:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4965A880A1;
	Sun, 26 May 2019 01:19:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62C481BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5FA2485FE4
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6ZWYFgkbRYq for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C653D85FD5
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:30 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id x8so8350078vsx.13
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PvvzFoJ2ck5oHxGDatOJeomVyH3WyqM7LMnChkSEXnI=;
 b=UjMnDA9wE57AVcTR9JMgVNO7ZEjWaLxR5EEP8MDA8Xue4hH2E2AoY694nTZF52hiY+
 r0up6C6XIeeIwPqQ7XSXi4O0oeE4VX64KsJ1ReMmpRrGIspUEWmg82ONk44bCLY5bLAR
 PMPVlMgYMb00ig4GxxwnGNgPdUGrFv3Rf8skBRRt2gTxlNiXxx3aMSEvbgeiut8TPlVG
 CGWHEQNrDA2bLmlW9bvDLWU/PTsbJOuTBxmhlH6wWpYikUTcKkyKCCXuocRGEmLV7i0s
 S0AuvpieyEzHfqX/Wn+75eAdPu13RgYpm2XqMWt5htXxBq1tG7QzblZEwDwkaxVldFpw
 Tr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PvvzFoJ2ck5oHxGDatOJeomVyH3WyqM7LMnChkSEXnI=;
 b=BH+64rvDeVs8MH11ND+HRSCQHlRXzZ2IQ1p2fmh7Q9LM4Ewx79ja13/NGzX4HNVm37
 RBO/EbeZC5Sy9wpl9JiXhzmCpOfTB2I9eVCzIilmn+tEA39nbbDmQtBY+oOJsTtNtMxI
 jM0D/zY549G1kOcykzyYG/HwHY0SYBeqPGecnj26g+Zt+EoClEDpQv4sdrTT+Js/ACXu
 LxlF4zP/H3x+k5Rdvvp4dZC7vMlfrUFoQKU6WXcdcdMTZZ5XjLCOjMkYcuZnAHGObhmX
 +YmbUkOJ1TGcSp/ZChOFzrrOd46OdG+bkfOWxYN0c+f3I+oUNl0CUHKPZNWte5qwx3Dg
 J72Q==
X-Gm-Message-State: APjAAAUX0G9aMAeYg84jA45gYoPDHiZDlCbmF4ybNqCcAFLkVlwKtORo
 9DYxQSNs4SHCsB0rzv3hVTg=
X-Google-Smtp-Source: APXvYqwLFbh0mFG92YhLGGaRgMd8hdvalz1VWjEk/C3Ybyusw24PKru80bf57vqoXtX+UOA+lwQj/A==
X-Received: by 2002:a67:ee96:: with SMTP id n22mr26950562vsp.187.1558833569750; 
 Sat, 25 May 2019 18:19:29 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:28 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/8] staging: kpc2000: kpc_i2c: assorted driver cleanup
Date: Sun, 26 May 2019 01:18:26 +0000
Message-Id: <cover.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series contains some patches aimed toward:

- cleaning up unused/unneeded parts of driver state
- a couple of small style fixups
- a couple of API changes
- better error handling in probe()

in the kpc2000 i2c driver.

Geordan Neukum (8):
  staging: kpc2000: kpc_i2c: Remove unused rw_sem
  staging: kpc2000: kpc_i2c: Remove pldev from i2c_device structure
  staging: kpc2000: kpc_i2c: Use BIT macro rather than manual bit
    shifting
  staging: kpc2000: kpc_i2c: Remove unnecessary consecutive newlines
  staging: kpc2000: kpc_i2c: Use drvdata instead of platform_data
  staging: kpc2000: kpc_i2c: fail probe if unable to get I/O resource
  staging: kpc2000: kpc_i2c: fail probe if unable to map I/O space
  staging: kpc2000: kpc_i2c: Use devm_* API to manage mapped I/O space

 drivers/staging/kpc2000/kpc2000_i2c.c | 33 ++++++++++++---------------
 1 file changed, 15 insertions(+), 18 deletions(-)

--
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
