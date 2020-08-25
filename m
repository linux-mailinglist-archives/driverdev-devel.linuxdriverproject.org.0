Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7555252357
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 00:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3ED10878AE;
	Tue, 25 Aug 2020 22:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3arAyQVav6u; Tue, 25 Aug 2020 22:07:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7524878A1;
	Tue, 25 Aug 2020 22:07:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 751BC1BF2B5
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 22:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71F5B87ACE
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 22:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id raqquYciAMT4 for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 22:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E9E5A87AC2
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 22:07:26 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id 2so193981pjx.5
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 15:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DDfuEeZvkhmoX/XBxHBvhw10a3kF5GozAC7FQVyl31M=;
 b=hiiW82z64jhCNt3G6O1Gbo3lHrfE3KuGanUIOpwd7pOWjJpHoX3aRXOeP9MNvppOW1
 ITGK+p9JecHZWNR9soJZo5gBGMqr+t89qRspTlgSzrrAq8UmjWe9yVGqKeX/XxtHgVcm
 gmtHfqPiTnHsiOXgCfi66YA4pkQ6BUpquoldIbo/I8JM+J9nZQLpHj9prsZt4GZsWcTp
 3bqxh9L/a/c/aq6FM6sibf0VOkcuKhQ552JqeNaMlBR+vuMESJ7qYjhnwQeheap2xYND
 kLokaSIlXPQZlRIGk8gRbJFCimmNXa7VwwD/tlK/DSgcZamTMydsnG7q3GIyfx720KwY
 PumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DDfuEeZvkhmoX/XBxHBvhw10a3kF5GozAC7FQVyl31M=;
 b=j8llbz4AfwhiLWtHN4Nb4NqfCl8H0fragb9hl4G23Uhqoqbg+9e+c04It14DlE/o6T
 EUd3So5M5yUuur4cGXa2+S5zD2+AyiFQmVWiHhNwZKgUD9JE1tP2ImqFVB3ho0mQypjW
 4R/k4IfKLrWIFKr3WlFaZNeii4SNQ2qKY4/4pAlVztAWl9N0Rbp0hUNKue3wEQ9Y7Yfq
 L18iRRBBpcehJw5AXs0eY994bklRAAs56a6vt645Ya+/W5drkKtfl2Wn+pKVizpwCIMt
 DSsibCbtGj7FROdadgtqeMfUG/AHg3oVzut9ed9A6qnHcTr3cpy7dd5NmGq2R4CxF+94
 VXrw==
X-Gm-Message-State: AOAM532swfwvZOqNCJs7cvC71MV9MTn/rgsi3bfNHCizjbTQN2MDdbue
 cb24GJdU55pEhN8hRpgGz7votE+LfdQPWx1CDoc=
X-Google-Smtp-Source: ABdhPJzdVxSjyNH/rkjA1cfgXm37K+6qmC4ppHxC38w/8WOIGBgXvKCET8wbHnHpdKSj2ecCn8tUvg==
X-Received: by 2002:a17:90b:100e:: with SMTP id
 gm14mr3216566pjb.39.1598393246279; 
 Tue, 25 Aug 2020 15:07:26 -0700 (PDT)
Received: from localhost.localdomain ([49.207.215.131])
 by smtp.gmail.com with ESMTPSA id k5sm100368pgk.78.2020.08.25.15.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 15:07:25 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: anant.thazhemadam@gmail.com
Subject: [PATCH] staging: media-atomisp : fix "dubious: !x | !y" sparse warning
Date: Wed, 26 Aug 2020 03:34:26 +0530
Message-Id: <20200825220437.11214-1-anant.thazhemadam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upon running sparse, "warning: dubious: !x | !y" is brought to notice
for this file. This patch fixes that warning.

If there's a specific reason that this change is considered undesirable, 
please do let me know why.
Thanks.

Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
index 358cb7d2cd4c..3b850bb2d39d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
@@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
 	unsigned int ds_log2 = 0;
 	unsigned int out_width;
 
-	if ((!out_info) | (!vf_info))
+	if ((!out_info) || (!vf_info))
 		return -EINVAL;
 
 	out_width = out_info->res.width;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
