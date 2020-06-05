Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6491EEFD9
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 05:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8CE92220C2;
	Fri,  5 Jun 2020 03:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Ou2IyzFTcQj; Fri,  5 Jun 2020 03:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B57F9204BC;
	Fri,  5 Jun 2020 03:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31BA41BF97F
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 03:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E57286D02
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 03:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m8tU5vBRYk2v for <devel@linuxdriverproject.org>;
 Fri,  5 Jun 2020 03:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E368986C3A
 for <devel@driverdev.osuosl.org>; Fri,  5 Jun 2020 03:22:35 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r10so4465324pgv.8
 for <devel@driverdev.osuosl.org>; Thu, 04 Jun 2020 20:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0BsPlBCClkNY3i19jkCcpmxryGhoEl1mZzp7w55xl5k=;
 b=NeGwUC5SuWEfR36Y2HWPbDGCVuTwY3L6o3gm4YbT6IoH+Rj+6El+FYcN/56JxNZ+oO
 bTRhTltrhc+Ffwikfu/W8ddkhlceItIcenPlaR2KQ7iqGJqnHqt3IH9T0tHB0xSHwet4
 FG7ZCQzpNkJGFhgY4NgBjN3Nzv1tHo5Lh+jWlK8kaIMBXNMDcCfLRhCpM0s+MIZ4rv+D
 7jTlQMsbHXUm1/vBnTfNwfGc2yHXzG2UXCHffwM6/SWYmarIjfEy72pAbEfGow8g+gSS
 PB6b/03bgu7bQq3MQ2P9p72etuZ51h6xArh/42oDdyGpHEn5SCZnaguxp0I3LTIcsM/n
 jgGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0BsPlBCClkNY3i19jkCcpmxryGhoEl1mZzp7w55xl5k=;
 b=EjrHkH53KjrbHcRD9xdjibddtd5WtN44PrexRqo118qPeMESbb9924dz1JdXxh6xpH
 77Yhb11bbSNs4gcgfs2hF5Ww/+ycqMjkjWgEr4YzIScADfW2NMQedAlbgxGSmIlAZaDm
 WkaSkzPzSxZmXM+fGzEamSL7RVzjNZ0hujY53jegHUgbcZaj7fgbPwG9oGeW4G7cXLFp
 1VGZrpQ3obz5M5UwBmLO7fk8m3FKAoMFKdsw46uliswnK+4mVgm2JFZIzK3vPZfcCP3W
 kV9Oi+/S/8DecRuQfqkxZfbYkFUk6oasK+f3OiKEahhOeni3Z8jDvj12SpcOgUtfqnF8
 +KKQ==
X-Gm-Message-State: AOAM530bpGAAI4PxKFCLtz3K8xJLpbKMP65s6Syy3aKmxZLVB70EUHvu
 4UqK1D6ODUBZdYAh4k8xiKQ=
X-Google-Smtp-Source: ABdhPJytvjFMr1e82qYio8uFLx+ShTDgJaWolaqdqqamVortvV8WNBsc755YCgcIe15apNvm12G5aw==
X-Received: by 2002:a63:c948:: with SMTP id y8mr7468775pgg.118.1591327355373; 
 Thu, 04 Jun 2020 20:22:35 -0700 (PDT)
Received: from localhost.localdomain ([223.29.222.28])
 by smtp.gmail.com with ESMTPSA id nl8sm7685405pjb.13.2020.06.04.20.22.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 20:22:34 -0700 (PDT)
From: Divyansh Kamboj <kambojdivyansh2000@gmail.com>
To: abbotti@mev.co.uk
Subject: [PATCH] Staging: comedi: Added blank lines to fix coding style issue
Date: Fri,  5 Jun 2020 08:51:40 +0530
Message-Id: <20200605032140.31287-1-kambojdivyansh2000@gmail.com>
X-Mailer: git-send-email 2.26.2
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
 kambojdivyansh2000@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue by adding a blank line after declarations

Signed-off-by: Divyansh Kamboj <kambojdivyansh2000@gmail.com>
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
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
