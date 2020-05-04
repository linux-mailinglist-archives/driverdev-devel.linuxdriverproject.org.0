Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B8D1C4343
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 19:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E6A488A6C;
	Mon,  4 May 2020 17:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id calYbGBHGolB; Mon,  4 May 2020 17:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12C97888F5;
	Mon,  4 May 2020 17:49:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 106D61BF328
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 17:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0CE9D888F5
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 17:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 77yyuBwCd1Xg for <devel@linuxdriverproject.org>;
 Mon,  4 May 2020 17:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1C80888BC
 for <devel@driverdev.osuosl.org>; Mon,  4 May 2020 17:49:38 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id i68so237152qtb.5
 for <devel@driverdev.osuosl.org>; Mon, 04 May 2020 10:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9O9pOv93g7JmOc2UpRRs5DUt0jFUPNWmQLQ3nDY1Vjc=;
 b=S5BasPFcYpNCX02Po60a7tIfWWh50cRfls4aZ8I6Zi7e2YDq8cgTPHA7QqOUNMY7n8
 8OB8NvLBMMSfoaiCEyDGke/7MZcdrOr/FwiL9Fv4Xyx+BH8Emf7of8pg/T0NyJkl8Esg
 Nx6bGhzRLerxuGWbM19JNvOvLwa0DA0+QgXzBchAPDrcMbv4aafsq0jXAZA4z26HP+o7
 iEwhatzAhhZyFg++5gRLUCOxYTL6637TbGHDZdxx48WPSlNWUsNhWUF+awyaEchH8Xgb
 uWuSeD/GlNCUfHODM0pVP00OJBNe2wq9YXVqbEE82j9u6y8zinuHXtPqpQD4jrg0pP7+
 Cz8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9O9pOv93g7JmOc2UpRRs5DUt0jFUPNWmQLQ3nDY1Vjc=;
 b=Ba2Bb9qLPUi3B+qGA9MXubYevAElotx1s4M4I2gVLjuh3k3+YLvtm2c6ckDtNFsuhU
 MTAirLPUZ4VGxUvwuMFYdbjDCtBIuNiGN38R7sz2SPsawpw5ftYmmFhvRhlS1TmNFbXM
 WYZsxVe8O10tWey7417YiV5+sPIFW037Jb44mhkFMzUfA7o70shken1qkICTV695dZcD
 FkLantu3pscWgzT9PIq4VM/Uez1xx+MXphcAD7buYfa0IWN2wfSkOhthoIgw2djCjKs7
 Y1/ZvCpzrFQMc5UK7J+dtOyuSxUdcyMWzUs92Gw+yxMpd6yXNwZqzF/dLFWtC7oshnCU
 /S8A==
X-Gm-Message-State: AGi0PuaxaHZg5Dzswe8kquF+X8VHN+p51j+Ga3v+SEC3gkfwQlOIGUwX
 QmS3b/k5JldLUVP/0rs5G73OfQ==
X-Google-Smtp-Source: APiQypITbt1cZYJweE1W6xTp3vnqrk2qUN/sIDoZBQOauDUv68RNU+RbcvLqS/MtFwfEPVmDlPlDRg==
X-Received: by 2002:ac8:6f0d:: with SMTP id g13mr268950qtv.328.1588614577576; 
 Mon, 04 May 2020 10:49:37 -0700 (PDT)
Received: from google.com ([2620:0:1003:510:c948:3327:92b6:e959])
 by smtp.gmail.com with ESMTPSA id k43sm12239311qtk.67.2020.05.04.10.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 10:49:36 -0700 (PDT)
Date: Mon, 4 May 2020 13:49:33 -0400
From: Richard Yeh <rcy@google.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: gasket: Check the return value of
 gasket_get_bar_index()
Message-ID: <20200504174933.GA83381@google.com>
References: <20200501155118.13380-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501155118.13380-1-oscar.carter@gmx.com>
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
 John Joseph <jnjoseph@google.com>, linux-kernel@vger.kernel.org,
 Simon Que <sque@chromium.org>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 01, 2020 at 05:51:18PM +0200, Oscar Carter wrote:
> Check the return value of gasket_get_bar_index function as it can return
> a negative one (-EINVAL). If this happens, a negative index is used in
> the "gasket_dev->bar_data" array.
> 
> Addresses-Coverity-ID: 1438542 ("Negative array index read")
> Fixes: 9a69f5087ccc2 ("drivers/staging: Gasket driver framework + Apex driver")
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/gasket/gasket_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
> index 8e0575fcb4c8..67325fbaf760 100644
> --- a/drivers/staging/gasket/gasket_core.c
> +++ b/drivers/staging/gasket/gasket_core.c
> @@ -925,6 +925,10 @@ do_map_region(const struct gasket_dev *gasket_dev, struct vm_area_struct *vma,
>  		gasket_get_bar_index(gasket_dev,
>  				     (vma->vm_pgoff << PAGE_SHIFT) +
>  				     driver_desc->legacy_mmap_address_offset);
> +
> +	if (bar_index < 0)
> +		return DO_MAP_REGION_INVALID;
> +
>  	phys_base = gasket_dev->bar_data[bar_index].phys_base + phys_offset;
>  	while (mapped_bytes < map_length) {
>  		/*
> --
> 2.20.1
> 

Reviewed-by: Richard Yeh <rcy@google.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
