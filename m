Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE61EE370B
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 092D1878DB;
	Thu, 24 Oct 2019 15:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KTIEiegmaB55; Thu, 24 Oct 2019 15:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 856D7878B0;
	Thu, 24 Oct 2019 15:53:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A9B01BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33A0E86980
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BwDDSfpkNu5T for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:53:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C2DE8697C
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:53:48 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFrlka009595
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:53:47 -0400
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFrgsm020133
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:53:47 -0400
Received: by mail-qk1-f197.google.com with SMTP id g62so23792680qkb.20
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=Xhl3yPOVTS2L2RYtPzBM49DHpAh9fTsOmofvxnsaE1A=;
 b=i6qschbhe/0kFSV9kDRyWVgOklT/A2k+yrajOlbMUx+rL7Rfns+hg7kxS9npJYwPtj
 znoFskT7WCG8ypCpiGV8iJ7cdT97LIbvMeTRJjgN5/OpjqmEeKMigo22KKUJFKull/DX
 E6Xydad/lC9k6frMJ9i+FsPXsehnU/TnNJQ9c5XaGflH/MgorxiEiRXxrQ52Kozq5ofM
 bLKQHb8G8203bR3xU2lZ3x7FE4fZDMa31LCaeAtgiYQ2B351xrStEvhTk0bmXh9KA5kX
 /komwYf1I0QcPlgyGPk3CVvuOV8wIdvMJMHO7Ykjb0fdwNLFabjVGQ6ssCjdjaWENGiy
 hx/w==
X-Gm-Message-State: APjAAAVZWzsQp6BrKwbM6zOCDHb2LC21AZ1bt8MrXDZxHImWeWd8j8S4
 xqoK5wvLnr5u8cLj/QnWSmRUpR9dagjWUiUxMc2APvC6np4DbWuNEtey9puWbqu4oydNiujBAIP
 dl+GGzQb61nERC8XhYvw1KbNh5WoC8s7C
X-Received: by 2002:a37:2d45:: with SMTP id t66mr14451077qkh.259.1571932421753; 
 Thu, 24 Oct 2019 08:53:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUv24uQguHXg4C03DgpvZQ5tzq4FGlK1SUvQChOMriwm2Q3/z3HIw7lT52ZNonLIB5QOV5vg==
X-Received: by 2002:a37:2d45:: with SMTP id t66mr14451045qkh.259.1571932421394; 
 Thu, 24 Oct 2019 08:53:41 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.53.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:53:40 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 00/15] staging: exfat: Clean up return codes
Date: Thu, 24 Oct 2019 11:53:11 -0400
Message-Id: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
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

The code had its own non-standard FFS_FOO return codes. Go through
and convert them all the kernel standard -EFOO codes.

Valdis Kletnieks (15):
  staging: exfat: Clean up return codes - FFS_FULL
  staging: exfat: Clean up return codes - FFS_NOTFOUND
  staging: exfat: Clean up return codes - FFS_DIRBUSY
  staging: exfat: Clean up return codes - FFS_PERMISSIONERR
  staging: exfat: Clean up return codes - FFS_NAMETOOLONG
  staging: exfat: Clean up return codes - FFS_FILEEXIST
  staging: exfat: Clean up return codes - FFS_INVALIDPATH
  staging: exfat: Clean up return code - FFS_MEMORYERR
  staging: exfat: Clean up return codes - FFS_FORMATERR
  staging: exfat: Clean up return codes - FFS_MEDIAERR
  staging: exfat: Clean up return codes - FFS_EOF
  staging: exfat: Clean up return codes - FFS_INVALIDFID
  staging: exfat: Clean up return codes - FFS_ERROR
  staging: exfat: Clean up return codes - remove unused codes
  staging: exfat: Clean up return codes - FFS_SUCCESS

 drivers/staging/exfat/exfat.h        |  24 +--
 drivers/staging/exfat/exfat_blkdev.c |  18 +-
 drivers/staging/exfat/exfat_cache.c  |   4 +-
 drivers/staging/exfat/exfat_core.c   | 202 ++++++++++----------
 drivers/staging/exfat/exfat_super.c  | 269 ++++++++++++++-------------
 5 files changed, 249 insertions(+), 268 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
