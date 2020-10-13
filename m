Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA35E28D633
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 23:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B814E87CA9;
	Tue, 13 Oct 2020 21:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IuugzOPTYLzS; Tue, 13 Oct 2020 21:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 794E587C94;
	Tue, 13 Oct 2020 21:28:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 630BA1BF419
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 21:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59288877EB
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 21:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FYXKrFz5pgJ4 for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 21:28:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D857B877D5
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 21:28:04 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id h12so972785qtu.1
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 14:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GiRex85OVBWeMWpeXjIy0tKr+eBaHLNAdbzqf66zs88=;
 b=NK+jDSm3h52qqynIQLYB5K3F71b22DB2YIvO+9bFeuLVU/N6O9N/aKaYHaVRlERTda
 OsBnqoEB9beq3qbjRxYCGovAlCy+tLk926VQnMYabgjQ7LRGhFBAe7alVqUkANrOjn/U
 4E2vyfiFmZrwAIftFXXICHferWceTU9px/5r6buTMd5kYb94/wrOiJEuISmpgU+7e/Z4
 Tw/Wm0gLLoesGOjAwjXzcazEpUFAvGBTGe4ilLpsidnjCSR1fB/rSn+tkOP3nFaZYG+l
 BMSpL+lQeOrVDEw/DUIWOM47nK4waKg0tC7Mh6WCkvFKvThZGlriaJoF7Z+C77byC923
 9AIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GiRex85OVBWeMWpeXjIy0tKr+eBaHLNAdbzqf66zs88=;
 b=o+pNE80WcmABS9J6+5V/K3XZuwi9hCFXDcRNiMHon81ueW+Numqr2bndBF+crjxDlu
 Ys3AbagoajzwaOz6ed7mgZfJEx2P7b5FD0Da6ixd8avz1PtgIfG5LWeGYLz9ImEgu55e
 XQv3X/r0h/bAT6zVxJlgHNNmEho7HnA0NMPG8Z9GEyOtZqCnYwEFmdmPXwI1EuUWIs5Y
 9L0ukVBW4YEoSd7N0K8i0IqalUpamjH+DM58MDKODiykiBHBWyFuzFrQU8DSQ/EAnODP
 tTQbxqxePPPHe/BpSIlvO0lctiq4z5qSO+6jA3ItwbPr6cshbk9wbxsfk/6TiLPjLBRQ
 FZIg==
X-Gm-Message-State: AOAM531DtV2O313GeDfNg76qg6KLXjfmWWVZAxxdF3da7CRpL+SM4LE9
 SQydmxlEcjboxqzDvEpQaiw=
X-Google-Smtp-Source: ABdhPJwCi/1VDsikcqldQh2+ouyH0c9qMnQvjo1vCNqdEyKRc76W8feTclCGCk3GlI010LSEB9DbXA==
X-Received: by 2002:ac8:7409:: with SMTP id p9mr1794458qtq.390.1602624483956; 
 Tue, 13 Oct 2020 14:28:03 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:d77e:95e8:a00:27ff:fe1d:552])
 by smtp.gmail.com with ESMTPSA id
 k4sm476464qkj.46.2020.10.13.14.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Oct 2020 14:28:03 -0700 (PDT)
From: Giovanni Bertao <gbertao96@gmail.com>
To: abbotti@mev.co.uk
Subject: [PATCH] Staging: comedi: quatech_daqp_cs: Remove repeated word on
 comment
Date: Tue, 13 Oct 2020 21:27:18 +0000
Message-Id: <20201013212718.5975-1-gbertao96@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove repeated word on comment.

Signed-off-by: Giovanni Bertao <gbertao96@gmail.com>
---
 drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
index 1b1efa4d31f6..fe4408ebf6b3 100644
--- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
+++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
@@ -164,7 +164,7 @@ static int daqp_clear_events(struct comedi_device *dev, int loops)
 
 	/*
 	 * Reset any pending interrupts (my card has a tendency to require
-	 * require multiple reads on the status register to achieve this).
+	 * multiple reads on the status register to achieve this).
 	 */
 	while (--loops) {
 		status = inb(dev->iobase + DAQP_STATUS_REG);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
