Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FA7D1B0E
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 23:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 130A8884A1;
	Wed,  9 Oct 2019 21:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EjCoKmP0QMfP; Wed,  9 Oct 2019 21:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 452F4883BC;
	Wed,  9 Oct 2019 21:39:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46C5E1BF34A
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 21:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 43B60883F8
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 21:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olVt1bTBvp9N for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 21:39:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6EAD6883BC
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 21:39:49 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b9so4964476wrs.0
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 14:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
 b=u/wm28kEkru3TyprTgddW261vX/5XbEce1Ws5zmBXcfUf86jiP3Djy4kG4KxmxxUK9
 S+zhx24CvvPULDAfFFD2kFVkW4DRwrjnX9utOwcH92CSl5YKmfbNg9XpeZF132H7zSYW
 BgNF4fWC5tGSlU9/dumZWgq+xHME9yHEqQ5LBs9I9FhBY9TvNuOJt3NFpX7BInPeC3Hx
 iIyzQvFQkqpJzQXd8VUBNbfbgnwvoxm3DgpbN5vkWBWOGw2Vuf/7MedZnz2h24lBEATp
 oBEmCJ0XnLkbxX+hEmPpelZVHP1oH1/yqeMIo4rZze1m/qHEnHk0C+z734FNqo/EXXE9
 mXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
 b=VLhQSyI77sx1wvz0jF5O1+m/u9q4/VscGUQasuA/NVdGjWENAWYDhQAVs+H+YJCZng
 4UxLBZPt0qvPb23PSKE5yF5rBsOFCS8aGbcU02dvZZspMhh1bs+oinIWtPSNX5cbnnoS
 a+J4PUrIodRK34f2zdjI68hm4R6VGGewsaW7k0wLubxw99B+pLuhOzs6XDcXIGYCQNO5
 UPkVV9AOdqQCAWtWU4QIT7o7vFROnZO2YACYCvEvYBB3gLaT0p0CVcFyS42aQ3DNkM2z
 dUqvVRpSCAZGnPodLvdaq9fZZu5U+fxXlRfTLbQlcjraRRby87gVrg7u/q4EJFqJ/u9x
 H57A==
X-Gm-Message-State: APjAAAXaqF/kehpM02mn+E1XP92Z+AYwAeSpeYdQtWWeAXp4Y1frO1tx
 mi+e7slauOhYBXxjD1Pqcg==
X-Google-Smtp-Source: APXvYqz9GgQL7LY/Prh1ynW6SbQqAmf4NSYqACjsQLaU2Yfg3bbHUaT8l8/n5bdfBvFPpdpcDfsvxQ==
X-Received: by 2002:adf:f2cc:: with SMTP id d12mr4943049wrp.105.1570657187704; 
 Wed, 09 Oct 2019 14:39:47 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id a3sm6025741wmc.3.2019.10.09.14.39.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 14:39:46 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: qlge: correct  a misspelled word
Date: Wed,  9 Oct 2019 22:39:36 +0100
Message-Id: <20191009213936.11532-1-jbi.octave@gmail.com>
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
 GR-Linux-NIC-Dev@marvell.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a misspelling of "several" detected by checkpatch

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 5599525a19d5..28fc974ce982 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
