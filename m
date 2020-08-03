Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6003A23B0EB
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 01:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D7E2853E5;
	Mon,  3 Aug 2020 23:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XpoQy-O2tl1j; Mon,  3 Aug 2020 23:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 355A284E55;
	Mon,  3 Aug 2020 23:31:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 541FE1BF335
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 23:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 490E620356
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 23:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l-Qbyagw68IU for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 23:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 401D62156F
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 23:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=nY1BD+OgwGXtiyrMMaJXadzrrIDNfHmtspydZcAV3LA=; b=iiUNiQD7jhIo194MEQM6uDkUtk
 x1kY90nRb/wKVe8+MI4AG6Iq9ZvrzrtEC1LPQ7PPW00spxgPytuNPUX2Oc9EHRBaeIUimX+m/TQVY
 6AmPmTRfIsnKmEq9CGN1pUZTo9plsKzGNZdAO4XYiUPc2u1Tsc98dIVozn1JNAFaO670yy+x4EE9P
 mJ0TwsG1NnYlvL+p45itpZUi0AlyIbnGp+tEwIurSwxlaSdUG3oyS81GCA0AmQHAqp3VqGKU7A6a1
 fi1GXneSNMf3FUwEP7AaAW+BNndMxzOOcbAlx1UxGP7UVnlwr9KlUkdjBec7YFS3Huo8RTmKNlmYJ
 hPoIVsgw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2juy-0007ex-8O; Mon, 03 Aug 2020 23:30:57 +0000
Subject: Re: [PATCH v3] sched: Provide USF for the portable equipment.
To: Dongdong Yang <contribute.kernel@gmail.com>, gregkh@linuxfoundation.org,
 rjw@rjwysocki.net, viresh.kumar@linaro.org, mingo@redhat.com,
 peterz@infradead.org, juri.lelli@redhat.com, vincent.guittot@linaro.org,
 dietmar.eggemann@arm.com, rostedt@goodmis.org, bsegall@google.com,
 mgorman@suse.de
References: <cover.1596464894.git.yangdongdong@xiaomi.com>
 <23719695ee476715ec54d3310c95d535f8e1391a.1596464896.git.yangdongdong@xiaomi.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <cb8dc2cc-376a-f7e5-614b-400245204b34@infradead.org>
Date: Mon, 3 Aug 2020 16:30:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <23719695ee476715ec54d3310c95d535f8e1391a.1596464896.git.yangdongdong@xiaomi.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, gulinghua@xiaomi.com, tanggeliang@xiaomi.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 yangdongdong@xiaomi.com, duhui@xiaomi.com, zhangguoquan@xiaomi.com,
 fengwei@xiaomi.com, taojun@xiaomi.com, rocking@linux.alibaba.com,
 huangqiwu@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/3/20 7:31 AM, Dongdong Yang wrote:
> diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
> index 4ec5528..05b231e 100644
> --- a/drivers/staging/Kconfig
> +++ b/drivers/staging/Kconfig
> @@ -120,4 +120,6 @@ source "drivers/staging/qlge/Kconfig"
>  
>  source "drivers/staging/wfx/Kconfig"
>  
> +source "drivers/staging/fbsched/Kconfig"

where is this fbsched/Kconfig and its associated source files?

> +
>  endif # STAGING


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
