Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5599225CECB
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 02:34:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C227D2E17D;
	Fri,  4 Sep 2020 00:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOfC-cRBIWAE; Fri,  4 Sep 2020 00:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C54852E180;
	Fri,  4 Sep 2020 00:34:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7AC1BF9C1
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 00:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4709F874A5
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 00:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FvinwwR4tKLA for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 00:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F2D48749F
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 00:34:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 67so3402229pgd.12
 for <devel@driverdev.osuosl.org>; Thu, 03 Sep 2020 17:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IAJoEh+6AzC+pKTWp/bOcEFzbdoQ52Nyw5yIscBfr1w=;
 b=cMCzrfCUtqRc1nmYxs2wvQHa172v0v+L5ucazx+Eh+kn/j4HMo1nlDNN+LmF5s/V90
 /K3aUdV9IuwY3khbOtHSqEd6AZsZ7rUQZgxfSFDCUVry1aU0ScVy+qDKEHIsDDznw50a
 /YRhAYGl4p4pEfwO38kik1Pqw4rt0eAWPF5otnIpAntDpaYJZfJpjD624bXGqFKILfSF
 q/KXzddAvo3eys0xyW46uBduglw0h0+XCFBOlhx7B4JTjRLi+cLWK9fkuECZMd4pXYpc
 UZLcu5iqesbONCFhep9whhQtarYSIoRVbV111xpKL75HfzDgJ+rTE8/7A91uqmZqCpjk
 uilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IAJoEh+6AzC+pKTWp/bOcEFzbdoQ52Nyw5yIscBfr1w=;
 b=tGp8010jkP3KRpH3vY4rY3MaAk9KYinmVvC922jLfH/Nb25t4wOzi1JA8wpGqpVR0j
 UEK5qNY05l4pyX5CWUF7kXhKIzZYBF+Uvvl+EE7ay4rL780DlaAH9JOldWlJbEZX9vjh
 zQl6RaQeHrXoAysEYMyO/JbfTzO/AREJXkfGSOuaPU9FKRHSN8s341NnWMeoCtRt+Y5r
 INwgRC62segGu859wbMrKRZ3zE4RMsd4Ghf4tSat8k4IvUHO38zzfy2yOCGwwEtYt8O6
 3kCHW2lZYJXndGKnTmp64NmC43jp9BkGBVGgn0S4E8+VqdKLrN9nLXXs+FCsU9XCfXG+
 QBFQ==
X-Gm-Message-State: AOAM530N79aeL0Qp+nOJHNBuACk71OEseCPBYCWh0dUkVO/IKwpg3s5Q
 S1Hk62qI0RX/DRPntqwzJBo=
X-Google-Smtp-Source: ABdhPJzg0g/r/JRAq1RMe5JuWkOkXDNZ26WMpp7IGq6R51F5xXzfvpMyaX3rFnKeL8iB2qbXMWriZA==
X-Received: by 2002:a63:ba18:: with SMTP id k24mr5215503pgf.335.1599179672743; 
 Thu, 03 Sep 2020 17:34:32 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.77])
 by smtp.gmail.com with ESMTPSA id n68sm4412817pfn.145.2020.09.03.17.34.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 17:34:31 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH] Remove unused variables
Date: Fri,  4 Sep 2020 06:04:06 +0530
Message-Id: <20200904003408.452999-1-anant.thazhemadam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Anant Thazhemadam <anant.thazhemadam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A few unused variables that were defined were found and removed.

Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
 drivers/staging/comedi/drivers/dt2814.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index bcf4d5444faf..1a36d8612d9f 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -190,7 +190,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
 	struct comedi_device *dev = d;
 	struct dt2814_private *devpriv = dev->private;
 	struct comedi_subdevice *s = dev->read_subdev;
-	int data;
 
 	if (!dev->attached) {
 		dev_err(dev->class_dev, "spurious interrupt\n");
@@ -229,7 +228,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	struct dt2814_private *devpriv;
 	struct comedi_subdevice *s;
 	int ret;
-	int i;
 
 	ret = comedi_request_region(dev, it->options[0], 0x2);
 	if (ret)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
