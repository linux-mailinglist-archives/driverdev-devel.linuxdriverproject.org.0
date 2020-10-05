Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6A3283383
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Oct 2020 11:41:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38FB88632E;
	Mon,  5 Oct 2020 09:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxJWNunpu9qM; Mon,  5 Oct 2020 09:41:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B707B85772;
	Mon,  5 Oct 2020 09:41:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6A9C1BF44A
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 09:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A38ED85459
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 09:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RPPHDei9QTZN for <devel@linuxdriverproject.org>;
 Mon,  5 Oct 2020 09:41:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC6CB850BE
 for <devel@driverdev.osuosl.org>; Mon,  5 Oct 2020 09:41:10 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id 197so10005825lfo.11
 for <devel@driverdev.osuosl.org>; Mon, 05 Oct 2020 02:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:cc:subject:message-id:mime-version:content-disposition;
 bh=+9JAB28L74MMfFB7S55Rs2h7YnjTntIlkqauZG+K27o=;
 b=vF+esWPLigxLLZ0wnzama7Tvs/aAs1OI0OCxkXT38WfkvfXrGP/GpMl9YGn3xMdzPP
 dqbUi0Bs705W70qpDShUEra+tPs+KdsdRJE6PH1HA23E/xPUiB3fE9Bzy+fry1/RGWb5
 HQpHsKKYoxTqoOhmkAMTGYd9iL9dYpTyCoSh5DnGBc6+LvqoFjGaz8sFQRnaIa+EuebY
 h4WwkM1qP3CuesDTETpGqonf3dmwdMRohLfC6Mippneh3v1vZLuvqnPHz/Bw51IP4PoN
 jG78lYlY429xJm4iUe/E2PCWGr0owfH2/bbvh9PSWHVo1ek/dmOCVQ3ST1FNdlCU5TGz
 df5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:mime-version
 :content-disposition;
 bh=+9JAB28L74MMfFB7S55Rs2h7YnjTntIlkqauZG+K27o=;
 b=hATifwzjMsGTpYToMMK/bQ17h4VHyWI47hanr9q9bprDaKCNkEz26x56ZMEVvuJEFY
 WHCOcDER2MDk2OrTovBByWICdTVqp0VkSUJ0rZ4RPEsAmXhXL9hj6cNjUSWPpIB6xYjX
 nYdsBSDEjZY4bkesaupZP5sH7ijOLHHTKsHhXkPWjCbz4/7/rZ9wa6o4GmVyK35TOh8C
 IKDZLJy4k+Kq52GlLywe+i+100/9bZIx01yb7vPk9WWfeqUdC0a9n0apY166zkiNHrek
 CCjPCknWXcdCuinveQHl7znYXKANaSXPSArTdpVbum375G8FD/8HqfVcih/ru6cABss1
 0UiA==
X-Gm-Message-State: AOAM530CHbDrbhGvleQaLsPniRlPEisfrKbPodkAGhrnuSVj/Jfugbll
 ppRlLJ60GP68Dg8+MQmJZV4=
X-Google-Smtp-Source: ABdhPJyqg9BCUpKxLdYVB4TLUg5t8ZiHzdw3yzccmcSllg2D1h9qhZrMz9yfWMhbfIgKB8TqlnCWuA==
X-Received: by 2002:a19:c150:: with SMTP id r77mr2966563lff.288.1601890868791; 
 Mon, 05 Oct 2020 02:41:08 -0700 (PDT)
Received: from linux ([185.17.130.172])
 by smtp.gmail.com with ESMTPSA id m2sm2604194lfg.9.2020.10.05.02.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 02:41:07 -0700 (PDT)
Date: Mon, 5 Oct 2020 11:41:07 +0200
From: Leonid Kushnir <leonf008@gmail.com>
Subject: [PATCH] media: staging: atomisp: Fixed allignment to match open
 parenthesis
Message-ID: <20201005094107.GA44033@linux>
MIME-Version: 1.0
Content-Disposition: inline
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
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 leonf008@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Moved the parameters of the function '__gc0310_write_reg_is_consecutive'
to the right under open parenthesis to fix warning message from
checkpatch.pl: 'CHECK: Alignment should match open parenthesis'.

Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
index 2b71de722ec3..6be3ee1d93a5 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
@@ -192,8 +192,8 @@ static int __gc0310_buf_reg_array(struct i2c_client *client,
 }
 
 static int __gc0310_write_reg_is_consecutive(struct i2c_client *client,
-	struct gc0310_write_ctrl *ctrl,
-	const struct gc0310_reg *next)
+					     struct gc0310_write_ctrl *ctrl,
+					     const struct gc0310_reg *next)
 {
 	if (ctrl->index == 0)
 		return 1;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
