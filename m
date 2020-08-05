Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C021323C73D
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 09:55:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA73486582;
	Wed,  5 Aug 2020 07:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FFicWCmTJ15M; Wed,  5 Aug 2020 07:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DE3A8658A;
	Wed,  5 Aug 2020 07:55:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2501A1BF38B
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 07:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0986D2047F
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 07:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHvU3-nR3Zpp for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 07:55:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 031492035D
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 07:55:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E571021744;
 Wed,  5 Aug 2020 07:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596614147;
 bh=7UQJZZcTdJI13BKFL++btdNL+mH6JhjxG2J2M0fuJS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KtTzy4t4SFk/N1hNFRYPbB+PGd85GSy2svPpor664q2lPfYpQYOLam8LE2sQjAhSI
 L/ClP2w6M7u4w8s5Qemo57xNdBpiyvfE/nFecweHsem60fE6wDRkooZMVL2pX52Pme
 bgloTAQwSdzlNsCiuTSCSNdAGheoIT5BF9qXa89c=
Date: Wed, 5 Aug 2020 09:56:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v5] sched: Provide USF for the portable equipment.
Message-ID: <20200805075604.GA635696@kroah.com>
References: <cover.1596612536.git.yangdongdong@xiaomi.com>
 <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
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
Cc: juri.lelli@redhat.com, devel@driverdev.osuosl.org,
 vincent.guittot@linaro.org, linux-pm@vger.kernel.org, peterz@infradead.org,
 viresh.kumar@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, rocking@linux.alibaba.com, bsegall@google.com,
 mingo@redhat.com, yangdongdong@xiaomi.com, mgorman@suse.de,
 yanziily@xiaomi.com, dietmar.eggemann@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 05, 2020 at 03:36:21PM +0800, Dongdong Yang wrote:
> --- /dev/null
> +++ b/kernel/sched/usf.c
> @@ -0,0 +1,314 @@
> +/*
> + * Copyright (C) 2020 XiaoMi Inc.
> + * Author: Yang Dongdong <yangdongdong@xiaomi.com>
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> + * See http://www.gnu.org/licenses/gpl-2.0.html for more details.
> + */

You did not run checkpatch.pl on this patch, nor listen to my request to
drop the boilerplate license text and just use a SPDX line :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
