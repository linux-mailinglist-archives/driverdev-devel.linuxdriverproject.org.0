Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28768F9BA0
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4104587364;
	Tue, 12 Nov 2019 21:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qjfNnhL+Cv5; Tue, 12 Nov 2019 21:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82EF487360;
	Tue, 12 Nov 2019 21:13:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 728871BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C087203F2
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Os72IfmWxKab for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id A116A20368
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:03 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLD2kq012488
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:02 -0500
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLCvFp006202
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:02 -0500
Received: by mail-qk1-f197.google.com with SMTP id q29so55500qkn.3
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=WJCGNCQuaefXamcTcKNT2rb/G1MBbPGc68q4Yzm/TOg=;
 b=WgMlrXAhMk3iygNoMbvaFOalSexd84nBOU8GPOj9fq42XTcijZBnJ+C1aOVR/I0xYo
 3Fzz7DvVCqsoVFJ0BWcetfEJvHUozqEUrdrYZ7eusWN3UpSJWbYOzcm08+5RAUdnkDbv
 pz2MZBO2YtB8OM9N0t6OX75v+SEK14QLktiG4G+A89Ao5DbTXbKGr/igJCYw4eUuGpsN
 /JKAN7ZqzrKLGzuZXOjeoKh6r6toq7Yf+KzMI/WHHE5nEt2Oa0urjDLWjq6y2HHirtcE
 6kuR5zovieQy2gqIyHMoMJGc2UZAiCHQoqXlFYzKIQh+kApim6wSU+9aStozD8TYzUwe
 +iVg==
X-Gm-Message-State: APjAAAWoo46vgNnYWPZXxX4CZqneM5VerJeET/mSlbXv66KiETFUgp0E
 AO58UclWWF/sOPXjCoRTog17MuhlThs8QCXpcIdBbrIvUMW5Jszyxag309TQm6nKvnnRB6mDGQB
 ibPDhEjxd8s0xAoJ/2Yc/Rbp6JRhxelio
X-Received: by 2002:a05:6214:852:: with SMTP id
 dg18mr31121805qvb.8.1573593177299; 
 Tue, 12 Nov 2019 13:12:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqxsliWtv6xDWsmrevBQ5GtlwQfk6b3uvCdFIZKa5oLiD2vzGoyheoUDQPh5rXVBdDUZpoLpDA==
X-Received: by 2002:a05:6214:852:: with SMTP id
 dg18mr31121782qvb.8.1573593176974; 
 Tue, 12 Nov 2019 13:12:56 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:12:55 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 00/12] staging: exfat: Heave FAT/VFAT over the side
Date: Tue, 12 Nov 2019 16:12:26 -0500
Message-Id: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <Valdis.Kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The first 4 patches iteratively remove more and more of the
FAT/VFAT code.

The second 8 patches make a lot of functions static, and
renames many of the rest to avoid namespace pollution.

Valdis Kletnieks (12):
  staging: exfat: Remove FAT/VFAT mount support, part 1
  staging: exfat: Remove FAT/VFAT mount support, part 2
  staging: exfat: Remove FAT/VFAT mount support, part 3
  staging: exfat: Remove FAT/VFAT mount support, part 4
  staging: exfat: Clean up the namespace pollution part 1
  staging: exfat: Clean up the namespace pollution part 2
  staging: exfat: Clean up the namespace pollution part 3
  staging: exfat: Clean up the namespace pollution part 4
  staging: exfat: Clean up the namespace pollution part 5
  staging: exfat: Clean up the namespace pollution part 6
  staging: exfat: Clean up the namespace pollution part 7
  staging: exfat: Clean up the namespace pollution part 8

 drivers/staging/exfat/Kconfig        |    9 -
 drivers/staging/exfat/exfat.h        |  160 +--
 drivers/staging/exfat/exfat_blkdev.c |   10 +-
 drivers/staging/exfat/exfat_cache.c  |  251 +---
 drivers/staging/exfat/exfat_core.c   | 1896 ++++++--------------------
 drivers/staging/exfat/exfat_nls.c    |  192 ---
 drivers/staging/exfat/exfat_super.c  |  359 ++---
 7 files changed, 595 insertions(+), 2282 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
