Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4463144DD6
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 09:44:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E9A91207A6;
	Wed, 22 Jan 2020 08:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgLdfT7m8QEf; Wed, 22 Jan 2020 08:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 87F1020797;
	Wed, 22 Jan 2020 08:44:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 439AF1BF2FB
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 407358361A
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id POg1VEPkjJtk for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 08:44:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DE4383EFD
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 08:44:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94D782465A;
 Wed, 22 Jan 2020 08:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579682681;
 bh=YARmYFb76TDa0hVOR+T3bvNGeQGBEuPLBh/7c4SKc8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vkoSM+nmg0PCdeVo4kFeokmVrAsgPK80qOHF+igSbOmgtzHNxJrsI6aatK+APO4J6
 wWXBMd4oAQv8Apg12LfvHl78+cQbY3Wevkny25GQQxltb16PIRfnGGL/9GYvnIQnX1
 VNF6+SoBITmjWj4SBWLAfBOms7UtaUX0eCi0DEDw=
Date: Wed, 22 Jan 2020 09:44:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Valery Ivanov <ivalery111@gmail.com>
Subject: Re: [PATCH] staging: qlge: fix missing a blank line after declaration
Message-ID: <20200122084436.GA2407794@kroah.com>
References: <20200119140359.GA8668@home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200119140359.GA8668@home>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 19, 2020 at 04:03:59PM +0200, Valery Ivanov wrote:
> This patch fixes "WARNING: Missing a blank lin after declarations"
> Issue found by checkpatch.pl
> 
> Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
> ---
>  drivers/staging/qlge/qlge_ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
> index 56d116d79e56..2872b7120e36 100644
> --- a/drivers/staging/qlge/qlge_ethtool.c
> +++ b/drivers/staging/qlge/qlge_ethtool.c
> @@ -412,6 +412,7 @@ static void ql_get_drvinfo(struct net_device *ndev,
>  			   struct ethtool_drvinfo *drvinfo)
>  {
>  	struct ql_adapter *qdev = netdev_priv(ndev);
> +
>  	strlcpy(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
>  	strlcpy(drvinfo->version, qlge_driver_version,
>  		sizeof(drvinfo->version));
> @@ -703,12 +704,14 @@ static int ql_set_pauseparam(struct net_device *netdev,
>  static u32 ql_get_msglevel(struct net_device *ndev)
>  {
>  	struct ql_adapter *qdev = netdev_priv(ndev);
> +
>  	return qdev->msg_enable;
>  }
>  
>  static void ql_set_msglevel(struct net_device *ndev, u32 value)
>  {
>  	struct ql_adapter *qdev = netdev_priv(ndev);
> +
>  	qdev->msg_enable = value;
>  }
>  

This fix is already in my tree, always be sure to work against
linux-next for new development so you do not duplicate existing work.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
