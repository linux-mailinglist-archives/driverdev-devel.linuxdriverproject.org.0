Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2848F2EC15A
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 17:44:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4ADC886521;
	Wed,  6 Jan 2021 16:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Nzpvh9lcRG1; Wed,  6 Jan 2021 16:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C75F86449;
	Wed,  6 Jan 2021 16:44:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E44C01BF404
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 16:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E019F86449
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 16:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AT1hfA3UpLnH for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 16:43:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C79386427
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 16:43:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B384C23131;
 Wed,  6 Jan 2021 16:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609951437;
 bh=IejT2lVXTH0kk/fG9dvYmRsztiEo7c6jYNhh7J5/CWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EdExiLF8Cw1eBt+E/4Aq9a7K2EwBHSHuBeYvvMyxZAMd9OX6kHLDiihHapRGn4yJA
 LLeM39q+/ndQnVqNkhBsiDrkS/rjpr2S4B703ja2fYJF7NOWPonrsJBOxJFDFTPE0A
 A8O4GWbAl++0yb4gwY22ZHI3Ctim3IG60rzteRA8=
Date: Wed, 6 Jan 2021 17:45:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Subject: Re: [PATCH] staging: ION: remove some references to CONFIG_ION
Message-ID: <X/XpHo82oOBYygYX@kroah.com>
References: <20210106155201.2845319-1-maennich@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106155201.2845319-1-maennich@google.com>
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Hridya Valsaraju <hridya@google.com>,
 kernel-team@android.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 03:52:01PM +0000, Matthias Maennich wrote:
> With commit e722a295cf49 ("staging: ion: remove from the tree"), ION and
> its corresponding config CONFIG_ION is gone. Remove stale references
> from drivers/staging/media/atomisp/pci and from the recommended Android
> kernel config.
> 
> Fixes: e722a295cf49 ("staging: ion: remove from the tree")
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Hridya Valsaraju <hridya@google.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: linux-media@vger.kernel.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  .../media/atomisp/pci/atomisp_subdev.c        | 20 -------------------
>  kernel/configs/android-recommended.config     |  1 -
>  2 files changed, 21 deletions(-)

Thanks for finding these remnants, I'll go queue this up now.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
