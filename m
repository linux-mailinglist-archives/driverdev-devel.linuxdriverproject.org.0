Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1FAF86CA
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:13:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76DB1863DC;
	Tue, 12 Nov 2019 02:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oblZtqFPSsow; Tue, 12 Nov 2019 02:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AD6185E9F;
	Tue, 12 Nov 2019 02:13:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 668821BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F36F86B9E
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:13:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aeQF+vnPGDVT for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:12:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2D8C861D4
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:12:59 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2CwtE028966
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:12:58 -0500
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2Cr8G009669
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:12:58 -0500
Received: by mail-qt1-f197.google.com with SMTP id v92so19075226qtd.18
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:12:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=polEwBDR8XXLARzNp+HkpzWHOByZmMxX1iuAZdjZWhc=;
 b=VsNxv9y2nIOqDW96LNoLeM4uf27gDp2F/9XkhHhuDtwTbwUbWycnB/eU4nvA1lY8xK
 5TQwLqxYj76UfvE7qBY3BP39AMuMrnYx3ivHWJVuOpATSLypbh/Pa8VqUSw9TNFd2DD8
 2V7fMS6b74JfjecSqRy6lAhlO5NiP1fZX9X7+n1PFzAfHD97YlhGg4F+N/2oDbySFbu6
 To+FjEWAQ8XZxkz41Dd7RplegRQpYlTwWtf0IUFSnkj0MDDpbF5IVMT/J0l5QB42cw6h
 6MpkRNPeuK5z2GkMzv01jf6/efAZWOveJdOvMrkU2dLoLr5aPJplYII8bTEIeLyy95G+
 D+3A==
X-Gm-Message-State: APjAAAVh43TAHKVPrzmnr8hLf48sF/44jT+5aKdb2aOHWioM4QYR8BCx
 8I+iugrNyruKegQpyEEIUzd0JSs+eb1YzkfhrPN7kKVSVqY5vAKTpVXWaKdaAFDFoZjSuImVEVV
 4ImjQm+b0cPEiU5XiBOpS9tEptnXwC9Ls
X-Received: by 2002:a05:620a:896:: with SMTP id
 b22mr12855090qka.386.1573524773450; 
 Mon, 11 Nov 2019 18:12:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqwy3ab3YXg8NLEvbLnXy2wX6Wbxx2azYGpPT3/n2YbPGjWD4sfMc09fWFB7AQ+6oEC2HKezhQ==
X-Received: by 2002:a05:620a:896:: with SMTP id
 b22mr12855078qka.386.1573524773159; 
 Mon, 11 Nov 2019 18:12:53 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id v54sm9150233qtc.77.2019.11.11.18.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:12:51 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] staging: exfat: Clean up return codes
Date: Mon, 11 Nov 2019 21:12:42 -0500
Message-Id: <20191112021242.42412-1-Valdis.Kletnieks@vt.edu>
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
Cc: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the oddball return codes with Linux-standard values

Changes since v2:

Fixed the git miscue that left one patch fragment in the wrong commit
Dropped the patch that added EFSCORRUPTED to errno.h because that method
won't work on some architectures.
Rebased to today's staging-next tree.

Valdis Kletnieks (9):
  staging: exfat: Clean up return codes - FFS_FORMATERR
  staging: exfat: Clean up return codes - FFS_MEDIAERR
  staging: exfat: Clean up return codes - FFS_EOF
  staging: exfat: Clean up return codes - FFS_INVALIDFID
  staging: exfat: Clean up return codes - FFS_ERROR
  staging: exfat: Clean up return codes - remove unused codes
  staging: exfat: Clean up return codes - FFS_SUCCESS
  staging: exfat: Collapse redundant return code translations
  staging: exfat: Correct return code

 drivers/staging/exfat/exfat.h        |  16 +-
 drivers/staging/exfat/exfat_blkdev.c |  18 +-
 drivers/staging/exfat/exfat_cache.c  |   4 +-
 drivers/staging/exfat/exfat_core.c   | 202 +++++++++---------
 drivers/staging/exfat/exfat_super.c  | 293 +++++++++++----------------
 5 files changed, 229 insertions(+), 304 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
