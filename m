Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F090ED722
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0B7F8956F;
	Mon,  4 Nov 2019 01:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3ZhH8TWUSD8; Mon,  4 Nov 2019 01:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09C5389573;
	Mon,  4 Nov 2019 01:45:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37E2C1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29D288620F
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CbUFh+Q8-1IM for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:45:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F7AB89E69
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:45:47 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41jjtj009840
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:45:45 -0500
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41jeGH017317
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:45:45 -0500
Received: by mail-qt1-f200.google.com with SMTP id 6so17367709qtu.7
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:45:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=RKwtkBIAams4QpcFBs9xpUD62iCs2qKNfP05u/piSu4=;
 b=Xpb9ypU196jdI2SRaLEjl8GT78J2bbD15UjVIWECL1yxyUxGvSjkDkYcc1VdoyP/O8
 iVck1YFgHC12qUEcV0yoIU7PMS2QCYch2zWzFQe+JclZyn+VFLKTaex3Kvzp58QRr/YV
 ZUJ+DmPghEjZTq+QRpH8Czui7GJo65UB3bzd/fSCUXO7pgOMt3DIyUtnE157l9r/KZff
 QtWHL+v3q59WCq/DSPyN8B9olzgzXOktxxwjM2wazkhfmWX42mRYTHbk2nfjwXgb2dRi
 VpZXnJxZZZqaEMYk3G0xgRXgeETN1AwcjWYqdHzsmcZNAA5pIFkiPPU0l1nx2TYeV23P
 gHYw==
X-Gm-Message-State: APjAAAWumiYgKjNhOZ12OfUJOiU4r6NZjiVaKIze4KQRqXKDkBnY+1B4
 IOvcs4BozNF6BMspTJnpMFQt8+FElZ4hi2csCSdy88dcIPfqtCYqedETc9rIE6hGYJvMRbhu8cW
 TM/Ebl32Wh3OCqPmKV4o4wEyqL15mQPWN
X-Received: by 2002:a37:4d88:: with SMTP id a130mr14181906qkb.28.1572831940632; 
 Sun, 03 Nov 2019 17:45:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRNhCq1LyO5YV8hnPJUKHf4l41tnhvU4mUKxlg/F79Zm3mhjkpCGchHCc3XPJ/nQRA2xMtoA==
X-Received: by 2002:a37:4d88:: with SMTP id a130mr14181892qkb.28.1572831940271; 
 Sun, 03 Nov 2019 17:45:40 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.45.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:45:39 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 00/10] staging: exfat: Clean up return codes, revisited
Date: Sun,  3 Nov 2019 20:44:56 -0500
Message-Id: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
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

The rest of the conversion from internal error numbers to the
standard values used in the rest of the kernel.

Patch 10/10 is logically separate, merging multiple #defines
into one place in errno.h.  It's included in the series because
it depends on patch 1/10.

Valdis Kletnieks (10):
  staging: exfat: Clean up return codes - FFS_FORMATERR
  staging: exfat: Clean up return codes - FFS_MEDIAERR
  staging: exfat: Clean up return codes - FFS_EOF
  staging: exfat: Clean up return codes - FFS_INVALIDFID
  staging: exfat: Clean up return codes - FFS_ERROR
  staging: exfat: Clean up return codes - remove unused codes
  staging: exfat: Clean up return codes - FFS_SUCCESS
  staging: exfat: Collapse redundant return code translations
  staging: exfat: Correct return code
  errno.h: Provide EFSCORRUPTED for everybody

 drivers/staging/exfat/exfat.h        |  14 --
 drivers/staging/exfat/exfat_blkdev.c |  18 +-
 drivers/staging/exfat/exfat_cache.c  |   4 +-
 drivers/staging/exfat/exfat_core.c   | 202 +++++++++---------
 drivers/staging/exfat/exfat_super.c  | 293 +++++++++++----------------
 fs/erofs/internal.h                  |   2 -
 fs/ext4/ext4.h                       |   1 -
 fs/f2fs/f2fs.h                       |   1 -
 fs/xfs/xfs_linux.h                   |   1 -
 include/linux/jbd2.h                 |   1 -
 include/uapi/asm-generic/errno.h     |   1 +
 11 files changed, 228 insertions(+), 310 deletions(-)

-- 
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
