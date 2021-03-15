Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D25AB33C740
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 20:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E65D76F5B0;
	Mon, 15 Mar 2021 19:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFZgN7TA743B; Mon, 15 Mar 2021 19:59:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F5A96F558;
	Mon, 15 Mar 2021 19:59:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B71C11BF20B
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 19:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A68806F575
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 19:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-_W8WP-izJU for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 19:59:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEDF66E769
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 19:59:24 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id l4so32976243qkl.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 12:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=jd1itG+6TUw6q8b36SZco9wrJWxHOwGWk3FWOJYAGNE=;
 b=SeN/Jvy8tR5ZKrKN/+F/dGjUsysy0IxYv0z+fi74xgna+4MDRtUfQSDnO5CUzjxVo5
 /d72FFQFVClkjooLU/vyqJpZzt+1NwWkpbwWI4EkMR3b0aSF7p9COu9cXRPImiUxhrIj
 srVKn8OBCvkUSqHTlqbu++CS55ooT216XOSOud/eQFewQkssvpz3F6xAtMd8g7ZHhekc
 Crxxtrs2YmDbOHW/avvGt67HCyd32MyEwGvlPYFnVRrCbz3tJb120kbytX7zgZ6Nc/Hm
 ePmCEz5va+ms33jp5pmsbayifndx+QiJjO+rWP53YntSMo0fHe6oHN7xElEP8AZf0psL
 VKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jd1itG+6TUw6q8b36SZco9wrJWxHOwGWk3FWOJYAGNE=;
 b=ZivjTPoFbekLg8D1c8aUC+sqVFQYOemiRKvDLH+Qy7aZFUsC0J2c1iesnt1VrvctD1
 Cr+/V2aFYdlfO2pxwlZhqEd1so12BGVQXiNdrgzKO3IatxbMY6J0cwdY+OxjrEyEESNu
 FQggDdb2NqbXr2zb7tfoI01v5apf66nIp2bCeD1KNVn21ojvuMOW90xasmaRVuLbqNkP
 icfRgIEdi4nuAR8iHz5bplug9TI7jkhL2Ue7UsFAAmxWFJzEwvwNLyC2E6ZPlm+uwArp
 k6q40Mtl1ay+YDPtuuXBCPotqomvLAPewh9/AORVTD/oM01szyiOx64YZ8sYUWnEm7jn
 WgKQ==
X-Gm-Message-State: AOAM532fk5AEW9HDld28DkOt6KnYnNPrhhxrrnc9GUYjhPvYCFeu9Rw/
 Oy0Ga4QBRtojak9qeUGaYOs=
X-Google-Smtp-Source: ABdhPJy7bAy99n+PL2rfEcT8aqM6nZdBlRf/rSV0J1+2Bu6teVHqoftDGrUgPGGnhE9VoIV5xhR7tQ==
X-Received: by 2002:a05:620a:15d6:: with SMTP id
 o22mr27274475qkm.181.1615838363717; 
 Mon, 15 Mar 2021 12:59:23 -0700 (PDT)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:74e5:7488:fd7b:4bf2])
 by smtp.googlemail.com with ESMTPSA id l6sm13741352qke.34.2021.03.15.12.59.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 12:59:23 -0700 (PDT)
From: Tong Zhang <ztong0001@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tong Zhang <ztong0001@gmail.com>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: comedi: cb_pcidas: fix request_irq() warn
Date: Mon, 15 Mar 2021 15:59:14 -0400
Message-Id: <20210315195914.4801-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <393f3925-9dbf-72e5-4d9b-2e213a6a71cb@mev.co.uk>
References: <393f3925-9dbf-72e5-4d9b-2e213a6a71cb@mev.co.uk>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

request_irq() wont accept a name which contains slash so we need to
repalce it with something else -- otherwise it will trigger a warning
and the entry in /proc/irq/ will not be created
since the .name might be used by userspace and we don't want to break
userspace, so we are changing the parameters passed to request_irq()

[    1.630764] name 'pci-das1602/16'
[    1.630950] WARNING: CPU: 0 PID: 181 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
[    1.634009] RIP: 0010:__xlate_proc_name+0x93/0xb0
[    1.639441] Call Trace:
[    1.639976]  proc_mkdir+0x18/0x20
[    1.641946]  request_threaded_irq+0xfe/0x160
[    1.642186]  cb_pcidas_auto_attach+0xf4/0x610 [cb_pcidas]

Suggested-by: Ian Abbott <abbotti@mev.co.uk>
Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
v2: revert changes to .name field so that we dont break userspace

 drivers/staging/comedi/drivers/cb_pcidas.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas.c b/drivers/staging/comedi/drivers/cb_pcidas.c
index d740c4782775..2f20bd56ec6c 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas.c
@@ -1281,7 +1281,7 @@ static int cb_pcidas_auto_attach(struct comedi_device *dev,
 	     devpriv->amcc + AMCC_OP_REG_INTCSR);
 
 	ret = request_irq(pcidev->irq, cb_pcidas_interrupt, IRQF_SHARED,
-			  dev->board_name, dev);
+			  "cb_pcidas", dev);
 	if (ret) {
 		dev_dbg(dev->class_dev, "unable to allocate irq %d\n",
 			pcidev->irq);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
