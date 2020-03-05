Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1959817A07C
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 08:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1689186081;
	Thu,  5 Mar 2020 07:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTSSAFLMyeml; Thu,  5 Mar 2020 07:22:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E350885F78;
	Thu,  5 Mar 2020 07:22:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA6631BF9AD
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 07:22:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6FAD87BA6
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 07:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6LCvDRhd1tj for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 07:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 44B8B87B92
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 07:22:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id x7so2318170pgh.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Mar 2020 23:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GAyfUYq0sKmLPF8vDF/XCVPoO7USaewI35k/Mjvwibo=;
 b=el60z4OtBuL6jyqfuXD9cYmRO2CVRAOHFV+NcKqX3S1+Csn+uCxD548AXj+ej1RZA0
 /vgeBjqv56t4vj438oiIyo4e/JCRacYScUIKVM1aZJsTcA0lI0z4uXLrC5v9K7GssXaO
 scRT00f/d2R0MyHlasaSM5wwvpHcoVSfIkJgUn20/sCKLvmelxu/a3hgrwA6JH5P4+Fp
 ql+Xd+bCpY2P+eaRIQhJyqoYAbN1Bmgnm0jZSQKymjYAKwbDxBeGuNfQ8R/86I//aJyu
 Cuh0XtS63dXg0xd1Z70GVcVglhpb79estxARiXEpJbzQPPKc1n/QBn1BwRxUIiGUutfn
 iVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GAyfUYq0sKmLPF8vDF/XCVPoO7USaewI35k/Mjvwibo=;
 b=ApAc7ZYBlc/FBvXQk+VlpV+6Lf4ImCDTkquhxb7sAefMDD7qodxKNfm/yFtfgF4YH1
 DmDw2TUA0T1Di43JuicXeCp49IPSQwRu0fSA+87S/dUIvT55zaCIP6FgsmP9mKMyW112
 aXFSVJFE0dFk3hf8FvbNkDizLERtSHaN4sVoR1gU6GE+jwxbiYtUW/xBI3QEHJTvWluH
 A3kZ2bF7O1cqB9knsgx7p5jFUj7zKhUSZjnE9R9v6p6f6rLIilqT0Mprzdq5rrqgl5O7
 wT6ooGEflVWHYmcht0YY0hcSxxu0knMQrvqHlgKoo3mgJmHle5K+Y0aomkZpI/kASIzk
 nkxA==
X-Gm-Message-State: ANhLgQ1ViT3GwFCVKY5oDWmt88meb7Rpar/CrMrXqqjxEs0JBENiSihE
 cqwODhZeoN2cEIz69c3W4Ok=
X-Google-Smtp-Source: ADFU+vvdBh4PZaZuJaO2XplbPnQhuIlhPLJV8HNSHkRSdV6kpzsZqSblyFFhSLsSBzh8zdGmnQSMTg==
X-Received: by 2002:a63:fc1c:: with SMTP id j28mr6327603pgi.289.1583392951877; 
 Wed, 04 Mar 2020 23:22:31 -0800 (PST)
Received: from ZB-PF114XEA.360buyad.local ([103.90.76.242])
 by smtp.gmail.com with ESMTPSA id d24sm32328579pfq.75.2020.03.04.23.22.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 23:22:31 -0800 (PST)
From: Zhenzhong Duan <zhenzhong.duan@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: speakup: Fix a typo error print for softsynthu device
Date: Thu,  5 Mar 2020 15:21:51 +0800
Message-Id: <20200305072151.403-1-zhenzhong.duan@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Chris Brannon <chris@the-brannons.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When softsynthu device fails the register, "/dev/softsynthu" should be
printed instead of "/dev/softsynth".

Signed-off-by: Zhenzhong Duan <zhenzhong.duan@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>
Cc: Chris Brannon <chris@the-brannons.com>
Cc: Kirk Reiser <kirk@reisers.ca>
Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/speakup/speakup_soft.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
index 9d85a3a1af4c..28cedaec6d8a 100644
--- a/drivers/staging/speakup/speakup_soft.c
+++ b/drivers/staging/speakup/speakup_soft.c
@@ -388,7 +388,7 @@ static int softsynth_probe(struct spk_synth *synth)
 	synthu_device.name = "softsynthu";
 	synthu_device.fops = &softsynthu_fops;
 	if (misc_register(&synthu_device)) {
-		pr_warn("Couldn't initialize miscdevice /dev/softsynth.\n");
+		pr_warn("Couldn't initialize miscdevice /dev/softsynthu.\n");
 		return -ENODEV;
 	}
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
