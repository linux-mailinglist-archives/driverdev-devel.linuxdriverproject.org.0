Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C010A18E51A
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 141FC86A10;
	Sat, 21 Mar 2020 22:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3unYo9sBDTii; Sat, 21 Mar 2020 22:19:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAFF88638E;
	Sat, 21 Mar 2020 22:19:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9DB71BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E68538858D
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbXY5DcV79wF for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:19:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72CBE885F6
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:19:52 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id bo3so4165214pjb.5
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Dcdv1o2OE9Dbud7mtcZE4La5oxeElzOfy/RpqBkNU70=;
 b=hVIRgwnpxdr69DeKdBTp+lmem0I+J1Srk0P5SlKdjskRkccRYyn8T7kWO43uveerfa
 /WlC//EaoG9P0xkUdAwMo1JOIcLFg3lZyM+OGAt06kQ2yF/kOlQHem+JTJzu2WEi45FV
 XqSUPnIvP/rAarBMKEySjJeyj9N6nShXt8DnGBpxbPED23J8HkBTgJaO85TlIyPlYzZn
 fllkCvtu3NwYUWgz0murvQmzEsdLr5peCBPXACC/ntu7On6jLl48TbtGjSnr8okcm8Iw
 gHxcR4NPlgVlcmLLMovEnYoYI32eQm4N07BMhtlmNqmJ5WQOTKDKYbgJpqyt3YMBeEDs
 xcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Dcdv1o2OE9Dbud7mtcZE4La5oxeElzOfy/RpqBkNU70=;
 b=M6ynQvJgo4l4/Vxy6KzHzsoqtHtzoQjhahHGcmF30oJ2Y5IdGqZg1LdyXZnuEkC/rf
 soVubziX8Ub45ZGCQo8U/cxPH/HPuH4Qk5vpl9jmAaogfabOnWGxOFIt+noTIW0/H5NN
 u10NgDb2wZ2ZPToflpQ7RqklOXDlKXM8hCOq8ytOPdFJwEIoQEzYO5m7AgwGNccLg1tY
 edKI958J9j+syqVCAadL4vJbxz4bOyr6QtHocNRUap/UmMYkubRcHJWqEpwuR9xNwsng
 2kTxwdvlRMmxcuxxetLdxkYyx/n2AfZDnQl4HF90t4ZNl4AHvRL9sUv6L7vox46Pd0Qs
 PP8A==
X-Gm-Message-State: ANhLgQ1IeMUSd9Y8ItBosRflGKVtOx+bqur3pJxqZoFeW0aeDUMREf4L
 WyLW+Ml5W8u9IKkKSEPq710=
X-Google-Smtp-Source: ADFU+vuGPpk2Oxq+TQ4+Lj0h3nCJ6Fdi7q+CLewZzExJF1znZyHMmVwkSjIPJmHvHmfMENT1DC2hVA==
X-Received: by 2002:a17:90a:cc01:: with SMTP id
 b1mr10480287pju.121.1584829191777; 
 Sat, 21 Mar 2020 15:19:51 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id k24sm8227389pgf.59.2020.03.21.15.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:19:51 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 00/11] Staging: rtl8188eu: hal: Add space
 around operators
Date: Sun, 22 Mar 2020 03:49:43 +0530
Message-Id: <cover.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset adds space around operators and removes
all the checkpatch warnings for the same from the files
present under drivers/staging/rtl8188eu/hal/ directory.

Shreeya Patel (11):
  Staging: rtl8188eu: hal_com: Add space around operators
  Staging: rtl8188eu: odm: Add space around operators
  Staging: rtl8188eu: odm_hwconfig: Add space around operators
  Staging: rtl8188eu: phy: Add space around operators
  Staging: rtl8188eu: pwrseqcmd: Add space around operators
  Staging: rtl8188eu: rf: Add space around operators
  Staging: rtl8188eu: rf_cfg: Add space around operators
  Staging: rtl8188eu: rtl8188e_cmd: Add space around operators
  Staging: rtl8188eu: rtl8188e_hal_init: Add space around operators
  Staging: rtl8188eu: rtl8188e_rxdesc: Add space around operators
  Staging: rtl8188eu: rtl8188eu_xmit: Add space around operators

 drivers/staging/rtl8188eu/hal/hal_com.c       |  22 +--
 drivers/staging/rtl8188eu/hal/odm.c           |  48 +++---
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c  |  54 +++----
 drivers/staging/rtl8188eu/hal/phy.c           | 138 +++++++++---------
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c     |   2 +-
 drivers/staging/rtl8188eu/hal/rf.c            |  60 ++++----
 drivers/staging/rtl8188eu/hal/rf_cfg.c        |   4 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c  |  42 +++---
 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c |  44 +++---
 .../staging/rtl8188eu/hal/rtl8188e_rxdesc.c   |   2 +-
 .../staging/rtl8188eu/hal/rtl8188eu_xmit.c    |  32 ++--
 11 files changed, 224 insertions(+), 224 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
