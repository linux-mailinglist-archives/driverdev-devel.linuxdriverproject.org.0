Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A72FFF5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Jan 2021 10:41:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D92E86A0F;
	Fri, 22 Jan 2021 09:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t5utNeW20uMT; Fri, 22 Jan 2021 09:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DBA086A00;
	Fri, 22 Jan 2021 09:41:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D5B91BF21A
 for <devel@linuxdriverproject.org>; Fri, 22 Jan 2021 09:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 507692DE22
 for <devel@linuxdriverproject.org>; Fri, 22 Jan 2021 09:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJFhRvBW2wya for <devel@linuxdriverproject.org>;
 Fri, 22 Jan 2021 09:41:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C5232D9B5
 for <devel@driverdev.osuosl.org>; Fri, 22 Jan 2021 09:41:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E06323381;
 Fri, 22 Jan 2021 09:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611308493;
 bh=ECesVPcS/HIWEZfAdA/O3MXlnw9MPpIYj1PgFRvyz2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJ2GSws0GTi8bk2C4bFtny6FgWkt89b2swGZKCfyhPWnK0E1IiFBd0CtjCM+NhzFJ
 whv1b/b61zKuSyBCSxIBNGXK4rU7mZrIotnVbXNfYc2RndOSQeEd5r+myvAeSNCaNe
 bDSGJ8Uqz7N+iTLBdARZ/EFVF6oAoVGd1+kzuteY=
Date: Fri, 22 Jan 2021 10:41:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yang Li <abaci-bugfix@linux.alibaba.com>
Subject: Re: [PATCH] scsi: megaraid_sas: remove redundant NULL check
Message-ID: <YAqdyoZhHsDXoDOD@kroah.com>
References: <1611307424-109090-1-git-send-email-abaci-bugfix@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611307424-109090-1-git-send-email-abaci-bugfix@linux.alibaba.com>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 22, 2021 at 05:23:44PM +0800, Yang Li wrote:
> Fix below warnings reported by coccicheck:
> ./drivers/scsi/megaraid/megaraid_sas_fusion.c:3924:3-8: WARNING: NULL
> check before some freeing functions is not needed.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <abaci-bugfix@linux.alibaba.com>
> ---
>  drivers/scsi/megaraid/megaraid_sas_fusion.c | 3 +--

Please always use scripts/get_maintainer.pl to determine who to send
patches to, and what mailing list, otherwise they will just be ignored,
like this one :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
