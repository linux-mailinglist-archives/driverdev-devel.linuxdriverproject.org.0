Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED4C22C66E
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 15:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD2488703F;
	Fri, 24 Jul 2020 13:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxE5qh0fqUDD; Fri, 24 Jul 2020 13:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3F4886D2C;
	Fri, 24 Jul 2020 13:28:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6031BF40B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C2CA884AD
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 13:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Z-UurPPl9ZB for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 13:28:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DDBA0884AA
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:28:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FEC82065F;
 Fri, 24 Jul 2020 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595597314;
 bh=aVUlwaFSPbv2FOLkmLAuTXyO51kUIwT97MB3MVPw4m0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cNxwEYnSSTcZNbJ28anpaf133BCtSSNL5BVKFETSxWIjX67dvkoe00WB9jPpmI3In
 o9UPsvYM4jDGPJ/TTeKqcjUFwTovwr8HzUJVcE3RRdfVggcBFQHc0Cs8TF2FqOgavZ
 HlPQZPvOMFNa3dvUVimS1J+e0GXQ/FOB/OdZvp8E=
Date: Fri, 24 Jul 2020 15:28:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized variable
 authmode
Message-ID: <20200724132836.GC316746@kroah.com>
References: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
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
Cc: devel@driverdev.osuosl.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 24, 2020 at 08:29:55PM +0800, Dinghao Liu wrote:
> The variable authmode will keep uninitialized if neither if
> statements used to initialize this variable are not triggered.
> Then authmode may contain a garbage value and influence the
> execution flow of this function.
> 
> Fix this by initializing it to zero.

That does not fix anything, you just now are potentially setting a value
you really do not have.

Are you sure that this variable really will never be set?  If so, please
fix it up with a "real" value that the code can handle properly.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
