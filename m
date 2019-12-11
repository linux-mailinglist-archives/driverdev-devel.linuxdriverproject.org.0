Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA3111BB38
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA96988611;
	Wed, 11 Dec 2019 18:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iI84SfWTJbKe; Wed, 11 Dec 2019 18:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6444885A3;
	Wed, 11 Dec 2019 18:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A04151BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9869985F5D
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oo5gd0CpL06 for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com
 [209.85.161.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E496586D26
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:04 +0000 (UTC)
Received: by mail-yw1-f43.google.com with SMTP id w11so9297132ywj.9
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q2LAtAr35fOxdHluyYQPMQ83B/l646nAWaVMX7Ww9lA=;
 b=svfgvcf5l0Q51QBfuqGqqVaa5t10/wiQRuxkxmKW7VSu244E0qnQHtPlbzdiqgvRQL
 XxpbD6bJiAqJmoO/h3tU1FOZ5XinalTLmNv9X/LreO/ci8L2j+D5KVri2/d39p+X6dSk
 ztDYX95hsMl0zcQlgQotcCrpHEEMDaRN3kDVeTLEQk+JhC3LkTYaPTtYvzEJskR6w3Kd
 hu9MMCLuSkVZhiAyvUgG7CB66L34grupVwcsvVp1btLbDAtL8VGOdYttDGrQTfFeAe5O
 SQP8NUL5QE+eP8y5ouPoqGqIv+prihfGe1uqeJuBbITrjKR6vmONidXB2uQ+rqAin4/0
 H8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q2LAtAr35fOxdHluyYQPMQ83B/l646nAWaVMX7Ww9lA=;
 b=k7GpN0+DO+9MwVv9ogQv6wsAg2vz+A+428gPtRjNDNs4Zcw0oNCA2bWZZu7FWy3R/O
 9NXW14nUYvC0ciW9jwIx6lpClZr//6yb9XMFYKJWuHorGSw7agL/d4YzGxnNG5+Fcx6+
 kSFUv8d1ZAMjmkuvMM0Otnb/n8yYesLV7tD1POqfADqxovuohLojA35t8E63jtqK4abD
 4bDhP3JPm4OTIOE1p5u67Mb43l248VAciqGOemUJ3/VR/4vFOMtp+4jOb4wfJoYWGns6
 Btmo7gDiy1potNhivpLjPK92C2N8sL4v5csdi3ds4N10RZsld5mqlU4du7eXHmwv1357
 mN/g==
X-Gm-Message-State: APjAAAX/bi5MUdQorkYMrmUZc8fMAKj2/murAqvHvAJrDRUEGOJQ/2da
 tjjL/3WUOZ6gZr5CwT7d52M=
X-Google-Smtp-Source: APXvYqy9RUld3P5NVjS7SATFBqmbXZHrOlPh6/SxjKxntUcO348d/pvMz2XOAtbY+VfOVGc4qzEQ+g==
X-Received: by 2002:a81:af04:: with SMTP id n4mr883522ywh.319.1576088103847;
 Wed, 11 Dec 2019 10:15:03 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id l5sm1277409ywd.48.2019.12.11.10.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:03 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 00/23] V2: Break up from one patch to multiple
Date: Wed, 11 Dec 2019 12:12:29 -0600
Message-Id: <cover.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I broke up the changes from one patch to many so each patch has more
defined changes. I also added a few other patches for formatting issues
I missed in the original patch. 

Scott Schafer (23):
  staging: qlge: Fix CHECK extra blank lines in many files
  staging: qlge: Fix CHECK: Alignment should match open parenthesis
  staging:qlge: Fix WARNING: Missing a blank line after declarations
  staging: qlge: Fix WARNING: Missing a blank line after declarations
  staging: qlge: Fix CHECK: Blank lines aren't necessary before a close
    brace '}'
  staging: qlge: Fix CHECK: Blank lines aren't necessary after an open
    brace '{'
  staging: qlge: Fix WARNING: quoted string split across lines
  staging: qlge: Fix CHECK: Unnecessary parentheses around
    mpi_coredump->mpi_global_header
  staging: qlge: Fix CHECK: No space is necessary after a cast
  staging: qlge: Fix CHECK: blank line after function/struct/union/enum
    declarations
  staging: qlge: Fix CHECK: braces {} should be used on all arms of this
    statement
  staging: qlge: Fix WARNING: please, no space before tabs in qlge.h
  staging: qlge: Fix CHECK: spaces preferred around that (ctx:VxV)
  staging: qlge: Fix WARNING: Unnecessary space before function pointer
    arguments
  staging: qlge: Fix WARNING: please, no spaces at the start of a line
  staging: qlge: Fix WARNING: Block comments use a trailing */ on a
    separate line
  staging: qlge: Fix WARNING: else is not generally useful after a break
    or return
  staging: qlge: Fix CHECK: Prefer using the BIT macro
  staging: qlge: Fix WARNING: msleep < 20ms can sleep for up to 20ms
  staging: qlge: Fix CHECK: usleep_range is preferred over udelay
  staging: qlge: Fix WARNING: suspect code indent for conditional
    statements
  staging: qlge: Fix CHECK: Unbalanced braces around else statement
  staging: qlge: Fix WARNING: Avoid multiple line dereference

 drivers/staging/qlge/qlge.h         |  43 ++--
 drivers/staging/qlge/qlge_dbg.c     |  97 ++++----
 drivers/staging/qlge/qlge_ethtool.c |  60 ++---
 drivers/staging/qlge/qlge_main.c    | 336 +++++++++++++---------------
 drivers/staging/qlge/qlge_mpi.c     |  71 +++---
 5 files changed, 293 insertions(+), 314 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
