Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406C15B6FF
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:41:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E06887866;
	Mon,  1 Jul 2019 08:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9p3kZU8vFuiG; Mon,  1 Jul 2019 08:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBA1F875BC;
	Mon,  1 Jul 2019 08:41:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94C921BF2A6
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D00A85BB8
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EnCqZgvi0V0j for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 08:41:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2392B85B9A
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 08:41:31 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 638D620881;
 Mon,  1 Jul 2019 08:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561970490;
 bh=X9qC6JvprazpQj5bEN/NbXMtwRJ3QeHdrwnmEsreX5Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=avYhySKzVMYW2U++1T6pNY8C/CL2joBJz3nfLC3kdnkCYpDvaPoVi52/26J+5OS8g
 mJk+If8jemvz5EYgp2rFE/oP2CIHNiRFzgLt11FDZWe9le76a7P000XsM2TNO0yJQl
 /Zt6zos3tAeyXs64DhDBRqAUSzrph4JB4/e45Rok=
Date: Mon, 1 Jul 2019 10:41:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Fabian Krueger <fabian.krueger@fau.de>
Subject: Re: [PATCH 1/8] staging: kpc2000: add line breaks
Message-ID: <20190701084127.GA20457@kroah.com>
References: <20190625115251.GA28859@kadam>
 <20190626073531.8946-1-fabian.krueger@fau.de>
 <20190626073531.8946-2-fabian.krueger@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626073531.8946-2-fabian.krueger@fau.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Michael Scheiderer <michael.scheiderer@fau.de>,
 linux-kernel@vger.kernel.org, linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 26, 2019 at 09:35:19AM +0200, Fabian Krueger wrote:
> To fix some checkpatch-warnings some lines of this module had to be
> shortened so that they do not exceed 80 characters per line.
> This refactoring makes the code more readable.
> 
> Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
> Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
> Cc: <linux-kernel@i4.cs.fau.de>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 34 +++++++++++++++++----------
>  1 file changed, 22 insertions(+), 12 deletions(-)

Not all of these patches applied to my tree.  Please be sure to always
work against linux-next in order to create things that can actually be
applied.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
