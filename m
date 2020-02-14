Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B992F15FA49
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 00:21:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B5D6878BC;
	Fri, 14 Feb 2020 23:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XxFq-x2dqYm5; Fri, 14 Feb 2020 23:21:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41D608780F;
	Fri, 14 Feb 2020 23:21:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B2E01BF303
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 23:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 156EB877FA
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 23:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsdzXC2RH5Ej for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 23:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28C8B877E8
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 23:21:47 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id t14so12498305wmi.5
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 15:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=8DAOKrUKnSTSUtrxbYUAUVprhFSWYyQ0hs2kBQzRq1M=;
 b=jyTx6MYVtdp47uQWK/BDNJE9gtuxURKjUGLEDKO0xucWGmsyzxT2B+Kr8yeQBVi0GR
 HUXSVmPY3ihugNkWw7GP9pHzbrqw5eG6rCkVxCJqtIRpj1Vy1rOb/RlS5RognJz4OOQI
 lcSb5MpFDclf0LTFre8uFWRNoGbiRdDlhTlSbsoXgLuML4tXl4PCmqoco0C4qNcgptY8
 OgZj29LhnAyVOTHMlfP+uPO/6sqDG+xSFbY4Iyw5JsraY1EkkzHglYxDK9oquSL8MMRF
 44+hA5JMCFPgxf9i0ql+NICQ/7NQjMVLFDuLz005ba3nXIr+AufpJfkSiLfm73oBNZYH
 /9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8DAOKrUKnSTSUtrxbYUAUVprhFSWYyQ0hs2kBQzRq1M=;
 b=EbvlZ9hqXj3z9pRkigFcuxlwGtvRm61nMCsHIw9lVPzinhjAjCCgHZ4OyeSs3UL3ZG
 0J/W34zO1GofwyIdamVoP/wLDrg2xN77yZ0Y1K14wt3tpzI6/vfSbLKZCliX8oyfBQar
 x7T7XFnReQmW3K0AcRLRYeS2Ry4TUQ5MjALN3F3LEOtAPaUEpipbA5rMNSvantDuLzot
 R3EXgvZT7nbZgMGiYU8C50h/hvsjV9uK5cmIV5svm1DSSFfyaKDTnkQ1Pps/Vfp/y0M6
 rFwVlkQtAC9/OuAxnRL/5SHDjkHh6xqp3OjPel+AbE3ntS11OLxJiAtnb8++dzfHgItD
 HipQ==
X-Gm-Message-State: APjAAAUYdY6wc8KvMevv4UF56Sqm264apxhKGnhd1gtAfXFds/R9iw1X
 oFyC23K2ZZvHrLJ/+SWncKQKBz8x
X-Google-Smtp-Source: APXvYqwG4e23kEIuy/Z66nvJlxoeGsm3XG/rC4+MMYA2kxlfzzaagrfuYqdeTH7BBiX8bp00kprWIQ==
X-Received: by 2002:a1c:f60e:: with SMTP id w14mr6904153wmc.188.1581722505397; 
 Fri, 14 Feb 2020 15:21:45 -0800 (PST)
Received: from s-8d3a30ba.on.site.uni-stuttgart.de
 ([2001:7c7:212a:d400:f15d:b157:ec2d:b5e4])
 by smtp.gmail.com with ESMTPSA id n3sm8833012wrs.8.2020.02.14.15.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 15:21:44 -0800 (PST)
Date: Sat, 15 Feb 2020 00:21:43 +0100
From: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
To: Ioana Radulescu <ruxandra.radulescu@nxp.com>
Subject: [PATCH] staging: fsl-dpaa2: ethsw: ethsw.c: Fix line over 80
 characters
Message-ID: <20200214232143.GA20675@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 linux-kernel@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Issue found by checkpatch.

Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 39c0fe347188..676d1ad1b50d 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1492,7 +1492,8 @@ static void ethsw_unregister_notifier(struct device *dev)
 	err = unregister_switchdev_blocking_notifier(nb);
 	if (err)
 		dev_err(dev,
-			"Failed to unregister switchdev blocking notifier (%d)\n", err);
+			"Failed to unregister switchdev blocking notifier (%d)\n",
+			err);
 
 	err = unregister_switchdev_notifier(&ethsw->port_switchdev_nb);
 	if (err)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
