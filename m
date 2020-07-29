Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F32CD231ACF
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 10:05:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC5B486749;
	Wed, 29 Jul 2020 08:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4R7h1dxHOwj; Wed, 29 Jul 2020 08:05:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6497E866AB;
	Wed, 29 Jul 2020 08:05:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD3F1BF5A1
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 08:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86EB7860C1
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 08:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wPV7CYkPRXRm for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 08:05:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6588185F6F
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 08:05:44 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id b9so11459376plx.6
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 01:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W8J9alNt9j182Qo6m9IaWrfQJWEuKo3Ae7Fy1SBu7uw=;
 b=DTrz2FM1MLC8vGx39HW6Jry1xeb06rXJcHKnWh+HuCeMvKJ9oq5Vj4RrlidvaGX++A
 CQMgWwfIo31vSimiVcxkVJITMaIN0XU4JXi4jmbwP2V2bnlE1aSMxGyPB4TVGu3jmz4W
 zIyi0kLyPirkkU4SiR6KUMrZk1L0zn3+ciByG4fqqHGFONIbBiiXQ+20D71vihyoNfK+
 uioMps8mu8Qjn//jPrxkCphrELaxfnbsQvYmrst9tD06SDyfOs+ym9ur5u3fN0BzEzYu
 IOadSSCCdz+CjFhpRTXTCIGWO2820zzu+w3pthYtJ++F74jxIvf9Xa75Wefq31v+RqVz
 94Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W8J9alNt9j182Qo6m9IaWrfQJWEuKo3Ae7Fy1SBu7uw=;
 b=qotok9tJPrj8v/qy9kHYOteo5YHmbCbH1vdAhvCkiUiBi4V3ar0FSMvh9gt4ge2xn1
 fNbdDRQGs0Z0pQLQ3I1zxopsEAoDgu3651nHnFmnwV7wR5lvB9zLX+MFPprrSRWS5tkP
 bOehb8nKPvtT7b+Ts6zMA7h7M4N5xFZFlv1skdMwdj74DC2xAycWk6oelEKV6iYcyX6h
 83Ra6UUxBqaGVnj1Lmez64FoR9N397WCd2JghU46tM60i+DeCgQHX/R5mDcuwHsqRlE3
 3tdBCNuPYLcFof9y6Nasf7tQjAsjiq/jogNHcazfqBojVLuw6ijRpJqsKUQxHShb4V6W
 r8Pg==
X-Gm-Message-State: AOAM5333P0S7itseEoUZBGK+Zx2BuM0nmFC3bDYQogb4nEAn7ddor1Xp
 ZP1heEeqc5D4xaJQ6tDXYrpNhg==
X-Google-Smtp-Source: ABdhPJzp5tMn3uZPlfTXXh5uqofStWTTKRqKNv7x0hK6omQGXyLlQH5Pv7C20nQSSpcXNjFC/1qC4w==
X-Received: by 2002:a17:90a:1a83:: with SMTP id
 p3mr7912459pjp.113.1596009943908; 
 Wed, 29 Jul 2020 01:05:43 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id a3sm1399383pgd.73.2020.07.29.01.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 01:05:43 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com
Subject: [PATCH v2] Staging: media: atomisp: Fixed a brace coding sytle issue
Date: Wed, 29 Jul 2020 13:35:16 +0530
Message-Id: <20200729080516.2830-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728021518.19639-1-b18007@students.iitmandi.ac.in>
References: <20200728021518.19639-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 b18007@students.iitmandi.ac.in, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed braces in 'if else' condition as it only consists of 
one line each and according to coding style rules , in this case 
the braces are not required.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
---
Change in -v2:
	-Removed space before ':' in subject line.
	-Added space before '<' in 'From' and 'Signed-off-by' line.
	-Added detailed description.

 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index f8d616f08b51..701de098cb29 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1828,11 +1828,10 @@ static int atomisp_streamon(struct file *file, void *fh,
 			dev_err(isp->dev, "master slave sensor stream on failed!\n");
 			goto out;
 		}
-		if (!IS_ISP2401) {
+		if (!IS_ISP2401)
 			__wdt_on_master_slave_sensor(isp, wdt_duration);
-		} else {
+		else
 			__wdt_on_master_slave_sensor_pipe(pipe, wdt_duration, true);
-		}
 		goto start_delay_wq;
 	} else if (asd->depth_mode->val && (atomisp_streaming_count(isp) <
 					    ATOMISP_DEPTH_SENSOR_STREAMON_COUNT)) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
