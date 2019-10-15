Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 555C9D843F
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 01:09:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 490FD87695;
	Tue, 15 Oct 2019 23:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hb6tPfAfCf3F; Tue, 15 Oct 2019 23:09:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F344784FB1;
	Tue, 15 Oct 2019 23:09:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECE71BF291
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 23:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B161204A3
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 23:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mJ6bpmSTk1C for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 23:09:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 926DB203C7
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 23:09:34 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j18so25735727wrq.10
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 16:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
 b=NvZZU4hCK4gBl9/e1Md+nHXL0Y0WlXJ6WZlZpGkTX+su4IryR+CmQW0avCndLe1Nbx
 R4qxA1LunmzZIv9pDDyNN89hSl5hEczj17U5L59hxr02ZXC5UvZYoSdfF6SwK6pyba7u
 U+fvVl8x8Cdk9tv11EbYxmdqQyGwQdIio1OUSvK2XTG+qjZm10LhX9todDHLRQFK8zEB
 Qm+cWX4SvVM/aQQw9Bxjn23b1bry15KahaM/sA8SgopC4eTn0yR4XCmind9ejxdbT0PB
 ugyCDvNRIvstdlDhbpCpIWW1ClD7YMvKBdw7YdiqI19sjI/xN+stgC09eCpN7HVP9xo9
 4sZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
 b=eHF8ZcLccwPxZRVPkAPX+3aawn2vabkP6rwNTM6sRB8RNJKXbiqf0IJvaQuWcoV37B
 plbPEjCTNiGgoD8fbySICavHnZjNpF/zjnqFcrn6iP840lEInUYJnJy/KyzycM0VeQwu
 1u2K24WzLJV8/plUbJucWr5kzyj3N3M9bmS4DsL5GxymdJYuUMTpNG6dQ9mkD+BAJIZQ
 t6tylCJwxWQZ9Kpy4jpcw5BldXGgP95+5VkVBV1b5DORm6pwevCwP7bZhsqwX+fF1yF0
 qu/3D5R15R9pm2o+bwzoUzDzKEwjqQWYUQi2HQJ5oyUma7nheDXfGgWnRUwK1Th+WUW2
 Il7g==
X-Gm-Message-State: APjAAAUmqSZE63l+WwBSp5DE8gIh5E4E6/hOyx3Ayb4cblVSKHiTkyPo
 c+tXui1FpNwGvopfmfdC0w==
X-Google-Smtp-Source: APXvYqy1oYXENQDYU+ylMQuWE3kL0PhJH09RZX3/Ee8okUe4msaZYKwLrL/ZIr4HAyKGvcTumVM//g==
X-Received: by 2002:a5d:43c1:: with SMTP id v1mr33618982wrr.91.1571180972896; 
 Tue, 15 Oct 2019 16:09:32 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id s1sm33064362wrg.80.2019.10.15.16.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 16:09:32 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: add space to fix check warning
Date: Wed, 16 Oct 2019 00:09:22 +0100
Message-Id: <20191015230922.11261-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add space betwen operator to fix check warning.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index dbb6a5f07a79..192c287503a5 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -163,9 +163,9 @@
  * by suspending parsing as the comment above says, but we don't.
  * This sweeps the issue under the carpet.
  */
-#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
+#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
+#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
 /* How many bulk transmits can we have pending. Once exhausted,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
