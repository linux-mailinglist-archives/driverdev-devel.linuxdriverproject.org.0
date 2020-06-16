Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3895F1FBFFE
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 22:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C892895E6;
	Tue, 16 Jun 2020 20:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h1i2h33vtBRE; Tue, 16 Jun 2020 20:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02C2989097;
	Tue, 16 Jun 2020 20:27:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B4751BF484
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 20:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 877D187821
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 20:27:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBHf0HgtQmB8 for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 20:27:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BF7F88773C
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 20:27:44 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id r15so4423563wmh.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 13:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TP+qVkiiShfjmlFDbsqkgBgPwSAQSfed1CQJN6zPUxk=;
 b=gr8WqzTiJH5/qGRblApIlRwJH/SNUnkL4qmGG1sfC9DOsHAsztaMCuE5weVAhdagn9
 ZhMXhqwkCBimhxY8N5suO671XSrEsPZbe55+qMFuWhZpj/zZAh3Hlk2fnfYFvWXr3MYu
 XZLHo6HJPW2C3bbomOmD9zoXdz292J0BSegHJWROMDLPSaUHRRMpt89ydKlPWyOQrmKV
 O1Sh5MCM6nuMAyK1v6VAVqYyFPd80/rm8fjpv80QpzVYjcYkINat+9UNy/dzK8R7cWi1
 sqKaoHh4yMcGtFbtVG3y0Q7gjaAd/f8MTQL9KBLmuWtE4yyJ55zQ85fZn8eROBy8Q3JE
 CYsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TP+qVkiiShfjmlFDbsqkgBgPwSAQSfed1CQJN6zPUxk=;
 b=lFWx4hNLXDqyntBtSG7GIe+8totnLtehAcXXy/EfyDQ6K2oJe9501qHCzuXHLOJlVp
 7ZLdVmXFDxKJiCehS6cYt6GZ9LLzqx4LIpdZSAMX5j47T1HH2RFc9fjxQTkDLv9qcNfO
 8YSgII2pcAqjnA6vRRMouZn9KB/hHo5v+CKeY4tEklbngFD1HYjoBI8fct/3flnDFI4V
 xdIqKRogyzgthZ8CTHKIkFozYTqTyU+gwHggkVJje76jD3ZmccHl5kJ3PeCwkQfOTDeV
 sT5k8GEM3mAcGRALPB/IAgR30PQppOQl9MBmhMS8txMGsURDlkWM2j3JVx9FLLHgfxZD
 A1yQ==
X-Gm-Message-State: AOAM532HOwE9JrzwwCGc+iWfLolt3pga/fNItV2bW7qDQGzB7UahzKkq
 h5aG6llEefGJva+U26CUeOY=
X-Google-Smtp-Source: ABdhPJwEY5epIaFIhnATfuW+CIIqe71BHWTH/FHA2pkTWaiEXvs0EaLM7g5IIC4RthxqcP9xDHULZg==
X-Received: by 2002:a7b:cc08:: with SMTP id f8mr5270576wmh.106.1592339263257; 
 Tue, 16 Jun 2020 13:27:43 -0700 (PDT)
Received: from localhost.localdomain ([95.145.157.140])
 by smtp.googlemail.com with ESMTPSA id a3sm29421673wrp.91.2020.06.16.13.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 13:27:42 -0700 (PDT)
From: dan love <danlovecomputing@gmail.com>
X-Google-Original-From: dan love <danlove99@hotmail.co.uk>
To: danlove99@hotmail.co.uk
Subject: [PATCH] Fixed styling issues by adding blank line after definitions.
Date: Tue, 16 Jun 2020 21:26:55 +0100
Message-Id: <20200616202658.4844-1-danlove99@hotmail.co.uk>
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
Cc: devel@driverdev.osuosl.org, Xin Tan <tanxin.ctf@gmail.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 abbotti@mev.co.uk, Al Viro <viro@zeniv.linux.org.uk>,
 Michel Lespinasse <walken@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: dan love <danlove99@hotmail.co.uk>
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
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
