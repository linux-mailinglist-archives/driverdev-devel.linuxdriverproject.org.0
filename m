Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D86F310068
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 23:58:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B512F87297;
	Thu,  4 Feb 2021 22:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BL6q26c4szFN; Thu,  4 Feb 2021 22:58:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D716187278;
	Thu,  4 Feb 2021 22:58:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E07501BF32C
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 22:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD00A868D0
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 22:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtzW_8SDeoyS for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 22:58:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 368BF868F3
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 22:58:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 38E5D64FAC;
 Thu,  4 Feb 2021 22:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612479526;
 bh=x7XJkzjV+9hwJNvlgLRyMG4w5s/WquVgMBsSG5Lp89Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BPqdRmd/NPPTZAYOee+Z3Sm/tdPp+ibXDbht6u7CE9Fdxd0DXyzJV3Ir8pnq5q066
 3wRb4IMnV+4hvgGhNZC/WUcTzKvIxL0aEs5UEEs0yxbRZiltEf51suucEb1VIHRtvM
 ROdlXPVE7yJUKIrrqu9jhpon9xLbAmFUje+U8Ynavu1HObsiQfwXKTlfX5vVEOXt/W
 ZTbF20VTTz20pkz3BmV9xSvchoVMzNNcutEBLnEzMH3c9vMYzIl7cEr4NSA/OTowmd
 JKn96K8fQFpiQxa2u17Ws/u36ofp1XKG6jDEAuRELFvOWnvEq+rsIZ/VaTZVzMeKhF
 Mhvil6CmwXaDw==
Date: Thu, 4 Feb 2021 15:58:44 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: ameynarkhede02@gmail.com
Subject: Re: [PATCH] staging: qlge/qlge_main: Use min_t instead of min
Message-ID: <20210204225844.GA431671@localhost>
References: <20210204215451.69928-1-ameynarkhede02@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210204215451.69928-1-ameynarkhede02@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 05, 2021 at 03:24:51AM +0530, ameynarkhede02@gmail.com wrote:
> From: Amey Narkhede <ameynarkhede02@gmail.com>
> 
> Use min_t instead of min function in qlge/qlge_main.c
> Fixes following checkpatch.pl warning:
> WARNING: min() should probably be min_t(int, MAX_CPUS, num_online_cpus())
> 
> Signed-off-by: Amey Narkhede <ameynarkhede02@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 402edaeff..29606d1eb 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -3938,7 +3938,7 @@ static int ql_configure_rings(struct ql_adapter *qdev)
>  	int i;
>  	struct rx_ring *rx_ring;
>  	struct tx_ring *tx_ring;
> -	int cpu_cnt = min(MAX_CPUS, (int)num_online_cpus());
> +	int cpu_cnt = min_t(int, MAX_CPUS, (int)num_online_cpus());

You should remove the cast on num_online_cpus() like checkpatch
suggests. min_t adds the cast to int on both of the inputs for you.

> 
>  	/* In a perfect world we have one RSS ring for each CPU
>  	 * and each has it's own vector.  To do that we ask for
> --
> 2.30.0

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
