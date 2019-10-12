Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC541D517E
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E0F820528;
	Sat, 12 Oct 2019 18:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nZFykar5CSBn; Sat, 12 Oct 2019 18:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7131020511;
	Sat, 12 Oct 2019 18:05:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2940B1BF28C
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 23B6D20130
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 78s3S-iCGQ9V for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:05:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7229A20119
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:05:29 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d26so7644309pgl.7
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 11:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=duF6ZL+HCwryTSjDdcx8z2lA9a6wjYiYn4UO3glWalg=;
 b=pe7Upv5GfSHEXJ3lhjxOf3Fl+J1g/S58wZMBl9VhRB6wt2D79P8Rad6mBvV5OHm6eE
 iaXPrBRedzy5X6lCx+aD+JrD0P1mrRBxGODoMDXwRry1yh/7Gte1dkCAvpeVuhfMFK4g
 LR113Wq4elzpROMOqS/lWxhQr3sEoV6EzCzfImBXOl01Yoe0t9H6nuieu8b4DBZZ8dsO
 zEBDBzHmdeN02DKQo7J0j9RrkLnhAMiqpCFnyl/exqW0v89UKJBZFPcC2C3IK6Pa7bDs
 Z7j19LoEn0JwmY0ad5Rcww6hVOCaT/SlEfRkSsyDcaI7zDdnYiFrbkknDLQSGd/Wl8Vw
 K23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=duF6ZL+HCwryTSjDdcx8z2lA9a6wjYiYn4UO3glWalg=;
 b=BqhOwkjRdeNVYU38YMgwCKi79uSUiGz/LKzMigRNuFyetv9OB9bKHZ7P2/GFJ2viDl
 0Q2rXVfX5+T9dsEuTJ8CWNl0tOkS7CI3EYMIl/m2rqhwVfnvTDJjJxLa29caNcAwt7Rd
 d+NZUjZG+WJNhfDb1r8guWTlHYyVqbz8A5JXN0OimFXQax24IMpSZdvrCDBunzgpqZss
 kTxexqA8j77RC2miJcT1OyYJuIoyBORX25GYikEJ75ibcdI3xL9K1/ZaCBDHH9Vty5Nl
 nrDPskPJx5oJe5EnPAHIjMzmOrfGh/60WnyBLUOZoLRXNhufgooA+fB1UpmB1jIaqD2i
 CDlw==
X-Gm-Message-State: APjAAAX08JjaUNNG1MkVsB6KIIsp7DvgewbyUbOxf7DzDYpF+MxB1eF9
 2GZGbFZlVdo1AAj6xUj6YFA=
X-Google-Smtp-Source: APXvYqxyH2oAjlVd09KUjtf8fw9mfDuaJ59X4EJ14uuiV1wImxZE3GucWiwxaBXvXfI7x4WVNUopvw==
X-Received: by 2002:a63:541e:: with SMTP id i30mr23580760pgb.130.1570903528903; 
 Sat, 12 Oct 2019 11:05:28 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:05:28 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] Remove typedef declarations in staging: octeon
Date: Sat, 12 Oct 2019 21:04:30 +0300
Message-Id: <cover.1570821661.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset removes the addition of new typedefs data types in octeon,
along with replacing the previous uses with the new declaration format.

v2 of the series removes the obsolete "_t" notation in the named types.

Wambui Karuga (5):
  staging: octeon: remove typedef declaration for cvmx_wqe
  staging: octeon: remove typedef declaration for cvmx_helper_link_info
  staging: octeon: remove typedef declaration for cvmx_fau_reg_32
  staging: octeon: remove typedef declartion for cvmx_pko_command_word0
  staging: octeon: remove typedef declaration for cvmx_fau_op_size

 drivers/staging/octeon/ethernet-mdio.c   |  6 +--
 drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
 drivers/staging/octeon/ethernet-rx.c     |  6 +--
 drivers/staging/octeon/ethernet-tx.c     |  4 +-
 drivers/staging/octeon/ethernet.c        |  6 +--
 drivers/staging/octeon/octeon-ethernet.h |  2 +-
 drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
 7 files changed, 43 insertions(+), 41 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
