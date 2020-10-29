Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB36329E8F3
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 11:29:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F361C226F3;
	Thu, 29 Oct 2020 10:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePORaHNMQiUj; Thu, 29 Oct 2020 10:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C5CF921543;
	Thu, 29 Oct 2020 10:29:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2836D1BF41A
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 10:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FD0721543
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 10:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id me3rnQIcuj4I for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 10:29:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C550021537
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 10:29:14 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7466F20782;
 Thu, 29 Oct 2020 10:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603967354;
 bh=Tm90lS175FOlMzUHrCOla4NWfMoRabc/XtwGP38934s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c+F9Ceb6vj5MVQVxuwPlZpmgEF0aL6DWXUB724MzjUWBua7+BnSaXtdFvQ7LAFGQi
 cIzicanGk9L1kDvINZFNQSNRl3/ELngkXO+Cxxr1jmgnHtxAwzXQ1lb3QfwA2eNen5
 nq24yTexr+k9QoLIHRfzGRxiT+UCC6NWNIghdCBE=
Date: Thu, 29 Oct 2020 11:30:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH] drivers: staging: Fix spelling in comments
Message-ID: <20201029103003.GA3763875@kroah.com>
References: <20201029100759.21668-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029100759.21668-1-unixbhaskar@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 29, 2020 at 03:37:59PM +0530, Bhaskar Chowdhury wrote:
> Fixed two spelling in two different comments.
> 
> s/defalut/default/p
> 
> This is in linux-next.
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Please put the driver name in the subject line, like other patches for
this file do.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
