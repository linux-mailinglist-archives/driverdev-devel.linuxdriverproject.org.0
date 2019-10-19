Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCB5DD8F0
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8675D21563;
	Sat, 19 Oct 2019 14:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ewej+zT9p44B; Sat, 19 Oct 2019 14:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 850632155B;
	Sat, 19 Oct 2019 14:07:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EFAB1BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7149485E77
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nVw56HVDOzqK for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 752CF85E5C
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:46 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a6so8841434wma.5
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 07:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p7Q5YgxIlsTOJ6RN4Gx4aIi4gFkJcajKi+6SvF9kn/0=;
 b=u2z5pF250EIkte8lyu3Ud+41Bfg4Xea7dGxk3D+jBXT0gHXPBYH9VVaD3TxBHfA881
 Cd3V9utv9g4a1wc56H+4/cEQp8oNWsXiuBmMF3YB92lffUuFSi2qRO1Euq3z7s0prnSk
 Y1NACEZccO7vIpybvASZjcVifQ8NVXMB6U/ngK8IsG7dOS8nYgCyMjeWC2zDy5XWwf9v
 mRBTngY0mj5t6SOMIhPBske3Z/mReI+wmSmd70MlXkVxd3MNeQibNq3MizisP2SPKrVf
 tpvns7yRRNyx5+vxyhoHMx/yeQcEsi476a7sYwhE7/apT8tocqn6hBM+9cnc50eHu0Cm
 VhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p7Q5YgxIlsTOJ6RN4Gx4aIi4gFkJcajKi+6SvF9kn/0=;
 b=G4570WDGcsVVEKMlmMci4zt4oQUkZM9yBztc/pRdL81PV5wsK451hCkg+g6MFwZT2P
 JrJgQZ9bTdgeKajkMhA66qMHJl5qswamLA69aGtyQMuwfxDV5+ryMhSdNIaZy2EGfzQZ
 c+QYNZjTjX0/IlkGlFlAmaODO5tbkSG1c5owVhte6JgOCBbnBl2zG6Pf7mSZJaRufmdJ
 vxnW6BMh/Rnq4qbwgb8NI3e8ib7UbgJ/oHo0Q0DchU8b10D8oGXU0sWXMjjJdaKdwr/x
 zwHGJBkQ8xTOhf6FeUhf7p0zhkLiXpdWArO1l17A11+vse6io4xnRZW4RYFSGTw81jaz
 i7dw==
X-Gm-Message-State: APjAAAVDJGCFzObLbwbwjLZFFTgxT742GPkifHAfhLvn7A8B11P3WinG
 ULc/EGZepud0rHosEPiRIg==
X-Google-Smtp-Source: APXvYqxtjRpbCww16AMVNk3tJbdUfa7U59DGmNm1JpB6NrtOCrVeSeMPlsYvSBPpcQp30APalPxJ7A==
X-Received: by 2002:a1c:1bc5:: with SMTP id b188mr12424365wmb.88.1571494064634; 
 Sat, 19 Oct 2019 07:07:44 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 07:07:43 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 0/5]  staging: wfx: fix checkpatch warnings
Date: Sat, 19 Oct 2019 15:07:14 +0100
Message-Id: <20191019140719.2542-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch warnings.

Jules Irenge (5):
  staging: wfx: fix warnings of no space is necessary
  staging: wfx: fix warning of line over 80 characters
  staging: wfx: fix warnings of logical continuation
  staging: wfx: correct misspelled words
  staging: wfx: fix warnings of alignment should match open parenthesis

 drivers/staging/wfx/bh.c       |  25 ++++---
 drivers/staging/wfx/bus.h      |   6 +-
 drivers/staging/wfx/bus_sdio.c |   9 +--
 drivers/staging/wfx/bus_spi.c  |  11 +--
 drivers/staging/wfx/data_rx.c  |  35 +++++----
 drivers/staging/wfx/data_tx.c  | 127 +++++++++++++++++++++------------
 drivers/staging/wfx/data_tx.h  |   4 +-
 drivers/staging/wfx/debug.c    |  14 ++--
 8 files changed, 143 insertions(+), 88 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
