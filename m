Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C435442C6
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jun 2022 06:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91D4B8142F;
	Thu,  9 Jun 2022 04:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z9zNH3L71HjM; Thu,  9 Jun 2022 04:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56B8D81369;
	Thu,  9 Jun 2022 04:53:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 124CE1BF8A8
 for <devel@linuxdriverproject.org>; Thu,  9 Jun 2022 04:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01C258137B
 for <devel@linuxdriverproject.org>; Thu,  9 Jun 2022 04:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTceHQVLmSoE for <devel@linuxdriverproject.org>;
 Thu,  9 Jun 2022 04:53:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FD7581369
 for <devel@driverdev.osuosl.org>; Thu,  9 Jun 2022 04:53:39 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id hh4so16384674qtb.10
 for <devel@driverdev.osuosl.org>; Wed, 08 Jun 2022 21:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wK0n9FILdJ7qq+0rwrIHsBXVqiJ9LJ3AWSSuXSk8iyw=;
 b=B8gvoklE6ptVsichtHoq8naMoFmbtfGHS01OSpUXDxD4jpq5MkTk63ywHa2a03UM1I
 COuU51zJRDK3Kci3GDqDSsmJTrdQySyLu24+11A+yR4s2qRqlzNtKIrdxHo1h0hWi7oy
 KJHtFhJZiQMd+d6UtV/UKoz7idXJp3GFd0Kbr23gkti7+uEj+QPnXgEy8VVt5+4agAF9
 9hEtmfii/dt4SZuAwN9oHx1zDuXG3YFpa0S+bzU8E8QkRm1237TnohfxlX/AMVMVVlQ3
 SupyW9yB9jKW3OtTRvWds+Di1xSrQcdvNBHB4kJnndicG8ZrLwvl8CD3zuT/oFsyp+HV
 qrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wK0n9FILdJ7qq+0rwrIHsBXVqiJ9LJ3AWSSuXSk8iyw=;
 b=s+OibEbkZOHsemXZsFPcOwqLvjjoKvmomb5uOf+sfKtxQP3KUIlAcpJ11E7XIUkJ8K
 Y8JVNCGZzlYsH0C5C2DzcQ83dkbK/ckNNM66D9t5NdHaO/Xdz51czO95zGMv/nnAFtT2
 gJe0hbJnS/q8bOL+BFKup2F9EYf4XQrMhWtl9vfu/ThZbhlGRfCDvV+3wAKkaZoIJAVX
 RDdhpe5g0AqIVRYmOeTerzYCvOdAR4F2oIzEtolyX/yLoT/K0LfE8RmAbqaCKyrlVCT8
 7rWzyCyB/I3Z/ynycsROOWYzmpjajPXJF4u6ZHuuzDuQBlWkE/KKjTJyvmEsSSaccaXD
 O8Og==
X-Gm-Message-State: AOAM530t8ZQmGQ9QTzgNRsEh98tGTM5FY/9LYwew6Q/MvDa+vS089c9H
 tAfEZ3V/6FZrfQy+svJ8PVo=
X-Google-Smtp-Source: ABdhPJy208Qrh3fZ4OBLFM14cY0HnbAyLYLWybDmC7GjRqstV2rbHIFxcv3xOmCgtEMZu0/ytwie8Q==
X-Received: by 2002:ac8:7fc2:0:b0:304:f234:4597 with SMTP id
 b2-20020ac87fc2000000b00304f2344597mr13049305qtk.673.1654750418152; 
 Wed, 08 Jun 2022 21:53:38 -0700 (PDT)
Received: from Agam.hsd1.mi.comcast.net ([2601:402:4500:22e0::e952])
 by smtp.gmail.com with ESMTPSA id
 x19-20020a05620a449300b006a71729a139sm2674407qkp.44.2022.06.08.21.53.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jun 2022 21:53:37 -0700 (PDT)
From: Agam Kohli <agamkohli9@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: comedi: comedi_fops: fixed a spacing coding style
 issue
Date: Thu,  9 Jun 2022 00:53:34 -0400
Message-Id: <20220609045334.93266-1-agamkohli9@gmail.com>
X-Mailer: git-send-email 2.36.1
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org,
 Agam Kohli <agamkohli9@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: Agam Kohli <agamkohli9@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index e85a99b68f31..3f70e5dfac39 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2169,6 +2169,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 		break;
 	case COMEDI_CHANINFO: {
 		struct comedi_chaninfo it;
+
 		if (copy_from_user(&it, (void __user *)arg, sizeof(it)))
 			rc = -EFAULT;
 		else
@@ -2177,6 +2178,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 	}
 	case COMEDI_RANGEINFO: {
 		struct comedi_rangeinfo it;
+
 		if (copy_from_user(&it, (void __user *)arg, sizeof(it)))
 			rc = -EFAULT;
 		else
@@ -2249,6 +2251,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 	}
 	case COMEDI_INSN: {
 		struct comedi_insn insn;
+
 		if (copy_from_user(&insn, (void __user *)arg, sizeof(insn)))
 			rc = -EFAULT;
 		else

2.36.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
