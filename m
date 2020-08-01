Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F1235460
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 23:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 45C2085EAC;
	Sat,  1 Aug 2020 21:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ihG7MBWgiYN; Sat,  1 Aug 2020 21:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDB3285E93;
	Sat,  1 Aug 2020 21:01:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C560E1BF4D8
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 21:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA29720355
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 21:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U9EzGrj6tf1B for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 21:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 89DC720131
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 21:01:04 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id k20so12133246wmi.5
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 14:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=YNOPC6OV3IJPHCoLM7Sk8cEozPcvLYb3g8nhCI3rNjw=;
 b=ByDgdXPjj0NlssWjr8JfIFbtljdpLzNBF/AN9bUxJGEZ1lH1Q/EC3HUVuJosse5AjQ
 J+TMbEgWjOylaIzNXKyV4X8+0xS9NTCpuCfYTP6DHcQwApbynuIOtgLpFEe4UYBf+MDc
 ihiL2JT6oLS7nw44N4pnvQWZUiWOXsdNr0+a4X1GghhkCrtM6RVYcviJr/cgWzZFZJ23
 jvpy7o4ds7MDq892kGoujmlEMFxsovucL7xw6bsBQVEB2oCNswdcamTSB9UcFNUniEXp
 Y1J9StgYDbhw71oP+BveoK01u5fMv5qsjL5CNVx2s/jJqKlY3XDEOTuEyHchEL97reN9
 aHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=YNOPC6OV3IJPHCoLM7Sk8cEozPcvLYb3g8nhCI3rNjw=;
 b=irX3ja+tM/7xGQt1HWrMLlmzW7czEc8y7vhySOqZN6p0bSuUAV8lUa1cIkd4xjp2+c
 CWNp9CuSGlE/hDnosnwm0zgoM6r2k0OVVC/vmmQSFnvUQCN2kscrFPZtM89FBNGFOQvA
 EONE3kBvDzBkuzYLw94xK4dSErxugKEk9auZIdNK1zm3ocNotKFhWY4Z4ddPm9kVcm6P
 9/fjx319uR32mEwoxrYWyVTjI9nD3lW7thI4qPUkAuASwIrgSjGKXEUIn8cJLP2p9zmO
 d8n7qoH45358my0DfCrAn0gBnt+yBtrGQsmlvXBnxsot873QSx4jiFiSsgviT8nV6b7K
 WDbg==
X-Gm-Message-State: AOAM531bomX7Bwg7XusNykNaIg8TFSCYwlw0HmV+1PW6ceVQWPqHZ2IP
 k6MIHGPX5YiW0m2En4MiHNQ=
X-Google-Smtp-Source: ABdhPJwLYlErY2BJuRL9fCALw6w7tFCagE0qC+VGRvhG44X5BAhDF9HYfpJt7D9szyTSUkf2FNeUJA==
X-Received: by 2002:a1c:9a02:: with SMTP id c2mr10186406wme.16.1596315662791; 
 Sat, 01 Aug 2020 14:01:02 -0700 (PDT)
Received: from tsnow (IGLD-83-130-60-139.inter.net.il. [83.130.60.139])
 by smtp.gmail.com with ESMTPSA id z6sm18344203wrs.36.2020.08.01.14.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Aug 2020 14:01:02 -0700 (PDT)
Date: Sun, 2 Aug 2020 00:00:56 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rts5208: clear alignment style issues
Message-ID: <20200801210056.GA305272@tsnow>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  Clear checkpatch alignment style issues in rtsx_transport.c.
  CHECK: Alignment should match open parenthesis

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 5f1eefe80f1e..0027bcf638ad 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -678,7 +678,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 
 	/* Wait for TRANS_OK_INT */
 	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
-			msecs_to_jiffies(timeout));
+							     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
