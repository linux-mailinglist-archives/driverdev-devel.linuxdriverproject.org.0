Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ACC11833D
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 10:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7F5C220EF;
	Tue, 10 Dec 2019 09:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r7Mgrr6aQL8r; Tue, 10 Dec 2019 09:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB888220CE;
	Tue, 10 Dec 2019 09:15:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44D091BF2A0
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FFB187C14
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIcGDz8Sz6Ia for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C60C087BDE
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 09:15:02 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id x184so7306777pfb.3
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 01:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TDhjwwUSHDyACk0EiHiTW5gF5LNK8IJFMEdCdOncrPE=;
 b=ghqqpu4Y3uy6hum+ewIVbOYchj5qEMKjfUftHMyfeRmiSE9NmCDJ9vZXizcVLViGxF
 Uc8K92FzayQgL8W6g/GF5S3scqlogON5s9nQVQ9fJw5fqPwqnmDkJszXcT01LQWAeOSR
 z41gcw7az9DzaMG+mPFKEBA3Xf+E8ZyUk/EB/kw9B9KdACbunaXvQ2lNNkC6fnG0Z6Yv
 xUj/45p9resd1DifbIk76ZqlqRb7VIWA0Rgv0/q+pmGLxtwBPtB+plQ6EMPpYGpu0SJK
 aerFxhbP2AAvZn83JYDGqKsyUGALkIkgL54ICylCzQlj1FHWYUAnukNAedykQv7WYMsx
 uZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TDhjwwUSHDyACk0EiHiTW5gF5LNK8IJFMEdCdOncrPE=;
 b=XYClg8RlIGatwqzVcPU/XxCu+swYTwPbRAzW91dIqh8/OCNSpYbA17ZIG2krpN3roX
 VZcjm/1GtvLQ1SvnMFWuYKRVH7xc0pCom/Gq86ABr5GqbwCdUoyYJv0dxmLlCaaahd9p
 t7crynGfWfq15QxQONzuaAeQttUp33DOxYBISFw+QpBC3g9IkGKT+G8NXCx1rjTZFwst
 m6/aGUiokvw1y8fPgjpH5j6+cBdYl0vv34xDDnPC4KTF1oojTVQRdtkN323c2EWmy0oD
 x6qlYBXMaUukhI8hVGnaMBx1RViaG0oTnCaxmkPI71SbbubO/DApVQOKVhPfjMxRTuap
 Tt1A==
X-Gm-Message-State: APjAAAUcOt+3wdNXU9yqOw8EdvfZd1hYlFEoZBaaVVaOx5BYe1gnOrzS
 q6hNyDlzQa5dB09/4NqH3OA=
X-Google-Smtp-Source: APXvYqyXCRbKsNc5R0fJgcZtH0Jj0+LMgA/z2G4Rzo1eZ2DpoBJB/lpl1vKKqc6LG9ozYEpt2/nn2w==
X-Received: by 2002:a65:66c4:: with SMTP id c4mr23827702pgw.429.1575969302412; 
 Tue, 10 Dec 2019 01:15:02 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id 143sm2478287pfz.67.2019.12.10.01.14.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 01:15:01 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: comedi: comedi_test: return error when
 comedi_test_init fails
Date: Tue, 10 Dec 2019 17:14:51 +0800
Message-Id: <20191210091451.23505-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, Cheah Kok Cheong <thrust73@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

comedi_test_init() forgets to return error when it fails.
Modify the return value to fix it.

Fixes: 9ff7400bd38c ("Staging: comedi: drivers: comedi_test: Add auto-configuration capability")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/comedi/drivers/comedi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/comedi_test.c b/drivers/staging/comedi/drivers/comedi_test.c
index ef4c7c8a2b71..133ed99a89f1 100644
--- a/drivers/staging/comedi/drivers/comedi_test.c
+++ b/drivers/staging/comedi/drivers/comedi_test.c
@@ -799,12 +799,14 @@ static int __init comedi_test_init(void)
 	if (!config_mode) {
 		ctcls = class_create(THIS_MODULE, CLASS_NAME);
 		if (IS_ERR(ctcls)) {
+			ret = PTR_ERR(ctcls);
 			pr_warn("comedi_test: unable to create class\n");
 			goto clean3;
 		}
 
 		ctdev = device_create(ctcls, NULL, MKDEV(0, 0), NULL, DEV_NAME);
 		if (IS_ERR(ctdev)) {
+			ret = PTR_ERR(ctdev);
 			pr_warn("comedi_test: unable to create device\n");
 			goto clean2;
 		}
@@ -826,7 +828,7 @@ static int __init comedi_test_init(void)
 clean3:
 	ctcls = NULL;
 
-	return 0;
+	return ret;
 }
 module_init(comedi_test_init);
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
