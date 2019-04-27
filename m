Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E440B3D8
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 18:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D2F386AD4;
	Sat, 27 Apr 2019 16:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wt+0a3BofKJx; Sat, 27 Apr 2019 16:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B4D4865EE;
	Sat, 27 Apr 2019 16:08:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C99411BF841
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 16:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5D7D855D8
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 16:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIWWUMMMqQ40 for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 16:08:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2486385481
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 16:08:10 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t22so46468pgi.10
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 09:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jrtjq2Yr4HF77ya+Bh8Y543ibzBroImWXM+PFp8HcNA=;
 b=Ne5FvEOmBkxwTy2jX6gYCth3dn2KTnAtafRBz7JPu1Kw9BVIwGeEJCLpiKWoamMBcz
 urGD/8j0mz74mFKO3VtZEjzRVBwwIB6gYUb9VCqbSEK248CVHbMH2l/NKiMioer2a/vg
 MdQgJt2CFHiRTA5JIJUG1VXpICsh+w6igmDLbqoH7bgDSQ4hAgNPirMdTscfsLwslEZL
 cy/o0/oaK2wTTuDGvYCt5gjRG5HhQRC1mumeoqgQQYKxmFhF+keouNxB4hXtbgUmY+n3
 3tUv0qI+6aK7NhA+itZjAMYxJ00Efc+aZ/VuxxXeDa6deD/qwbjaBimIBzzPxOD94DQ0
 gXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jrtjq2Yr4HF77ya+Bh8Y543ibzBroImWXM+PFp8HcNA=;
 b=hrj+mvsCUQHpRFH13PAXIptfSkv5FbsAeEhZzS0ktqyIEqz2IKGVyJ7zt3vATgmadw
 1iZERrblZC0izSuGJoBiLjZpdMwAsCqllkkCP4qkIt1GEq4YN7rXhmSaR/briynTil69
 CbSwXNm5KXwFA/2Ko8L+08CoYnhUzS7HS15oB7TslvehcsklZH+nWxTLIMCc9fb4vNpF
 k94G/HzNqLAlwUpjHX61v8YnkUbJ1Vq5MZPkYqYOdr0aq5PadlEfV7I5jKNxC9wgBEpU
 TEU9E9GAAKtQ8fnM4kE3rpCApDS+b/7oZG0xWOHwK47LwPk42DRmWGE+7U+cD3RvENQm
 1BCQ==
X-Gm-Message-State: APjAAAVZ10w8MN35xtkxQgG5eL8BTUa83lWK9+EpAfaj7m6A80E4GVop
 UE0LufecyOTjuJXClwgr9DI=
X-Google-Smtp-Source: APXvYqyF69/OmR7bOmXYXW/LXDpGgNxGAtz8+b6/5BfchkZuZPAVu1YEIQnv0Kd0un/R9zqCk+NSTA==
X-Received: by 2002:a63:ea52:: with SMTP id l18mr35848874pgk.124.1556381289756; 
 Sat, 27 Apr 2019 09:08:09 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.58])
 by smtp.gmail.com with ESMTPSA id a9sm38584613pfo.17.2019.04.27.09.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 09:08:09 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
Date: Sat, 27 Apr 2019 21:37:49 +0530
Message-Id: <20190427160749.11191-1-vatsalanarang@gmail.com>
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, julia.lawall@lip6.fr, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Vatsala Narang <vatsalanarang@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Modify return statement and remove the respective assignment.

Issue found by Coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 2e0a422cdf3e..9841c30450ce 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -270,11 +270,9 @@ static int ctrl_set_rotate(struct bm2835_mmal_dev *dev,
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
+	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
 					    mmal_ctrl->mmal_id,
 					    &u32_value, sizeof(u32_value));
-
-	return ret;
 }
 
 static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
@@ -313,11 +311,9 @@ static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
+	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
 					    mmal_ctrl->mmal_id,
 					    &u32_value, sizeof(u32_value));
-
-	return ret;
 }
 
 static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
