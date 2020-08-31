Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D0257B35
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 16:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E69A986822;
	Mon, 31 Aug 2020 14:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69WESeJQ2sMB; Mon, 31 Aug 2020 14:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8512867ED;
	Mon, 31 Aug 2020 14:22:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 126991BF30A
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 14:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F237920BF8
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 14:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iN1fbfUTiuBF for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 14:22:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D3BA2094E
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 14:22:42 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42D1120866;
 Mon, 31 Aug 2020 14:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598883762;
 bh=pgacFH3zLkMQq+pq3zSvPUadQeunRUThFZbP0DHzo0I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C50VzbBFvYX9zLgqtMrJboj+FzxN+wRm/j/9qEmp6tPYLGegR2M0ekWTyB2Bxfped
 ijlESGqku/xQtZ2FYT9CIyKVKqCNc/ICSPEzBUd31e6OPCvDCn4liqmky7l7aXNvWB
 FhXQkfRXX4VVvy2TbFTLnQT5MormLqRakds4ZEK4=
Date: Mon, 31 Aug 2020 09:28:48 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Cengiz Can <cengiz@kernel.wtf>
Subject: Re: [PATCH v2] staging: atomisp: Remove unnecessary 'fallthrough'
Message-ID: <20200831142848.GF2671@embeddedor>
References: <20200831134021.GV8299@kadam>
 <20200831135103.93399-1-cengiz@kernel.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831135103.93399-1-cengiz@kernel.wtf>
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
Cc: devel@driverdev.osuosl.org, andriy.shevchenko@linux.intel.com,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 31, 2020 at 04:51:04PM +0300, Cengiz Can wrote:
> commit df561f6688fe ("treewide: Use fallthrough pseudo-keyword") from
> Gustavo A. R. Silva replaced and standardized /* fallthrough */ comments
> with 'fallthrough' pseudo-keyword.
> 
> However, in one of the switch-case statements, Coverity Static Analyzer
> throws a warning that 'fallthrough' is unreachable due to the adjacent
> 'return false' statement. (Coverity ID CID 1466511)
> 
> In order to fix the unreachable code warning, remove unnecessary
> fallthrough keyword.
> 
> Signed-off-by: Cengiz Can <cengiz@kernel.wtf>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>  drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
> index 1b2b2c68025b..feb26c221e96 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
> @@ -711,7 +711,6 @@ static bool is_pipe_valid_to_current_run_mode(struct atomisp_sub_device *asd,
>  			return true;
>  
>  		return false;
> -		fallthrough;
>  	case ATOMISP_RUN_MODE_VIDEO:
>  		if (!asd->continuous_mode->val) {
>  			if (pipe_id == IA_CSS_PIPE_ID_VIDEO ||
> -- 
> 2.28.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
