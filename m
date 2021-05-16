Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ADF38204D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 20:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5014683C4B;
	Sun, 16 May 2021 18:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l60IsJEQrqS4; Sun, 16 May 2021 18:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED2C83C23;
	Sun, 16 May 2021 18:22:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7531F1BF3BA
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 18:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71F42402AD
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 18:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxKOOSJyJy6U for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 18:22:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3844840294
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 18:22:00 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 9CB7C1C0B76; Sun, 16 May 2021 20:21:55 +0200 (CEST)
Date: Sun, 16 May 2021 20:21:50 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 17/17] staging: nuc-led: update the TODOs
Message-ID: <20210516182149.GA3666@localhost>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <f23fed6a89f66564f5af52f241016a4b9823ce04.1621161037.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f23fed6a89f66564f5af52f241016a4b9823ce04.1621161037.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

> -  Need to validate the uAPI and document it before moving
>    this driver out of staging.

>  - Stabilize and document its sysfs interface.
   
Would you mind starting with this one? We should have existing APIs
for most of functionality described...

We really don't want to merge code with bad API, not even to staging.


Best regards,
							Pavel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
