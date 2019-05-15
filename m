Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9CF1F540
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 15:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E65786DB2;
	Wed, 15 May 2019 13:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fKgqEfQfp+Fs; Wed, 15 May 2019 13:14:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4483F8443F;
	Wed, 15 May 2019 13:14:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDF601BF378
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DACBE87DA1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NEQuiQfOuVTn
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:14:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6133E87D0B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:14:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0D7020843;
 Wed, 15 May 2019 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557926094;
 bh=uhqyp2ikqrsFhpzNcGEejLZ0O8pgN0seVlQvY0TBqmA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L6tBl/xbrpbKTa0+L3oN3LiC1QMPiNqwMJ0dSD2LPhNufdGEn1zDMX9i7M4+bMtg3
 /yfnhhktmypRsAP1iQ3fFOPMHSL+qb9Vc5mWCCPbmmyRRWeGpbhNLPMcTMw4WGDwxl
 7aAT0myiwYbsdrEJ0wRoG2egp+DubrRIL+TNYFts=
Date: Wed, 15 May 2019 15:14:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v2 1/5] staging: kpc2000: inverted conditional in order
 to reduce indentation.
Message-ID: <20190515131451.GA18438@kroah.com>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515111437.18828-1-jeremy@azazel.net>
 <20190515111437.18828-2-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515111437.18828-2-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 15, 2019 at 12:14:33PM +0100, Jeremy Sowden wrote:
> Changed:
> 
>   for (...) {
>     ...
>     if (expr) {
>       ...
>     }
>   }
> 
> into:
> 
>   for (...) {
>     ...
>     if (!expr)
>       continue;
>     ...
>   }
> 
> in order to reduce indentation of conditional block.  Fixed indentation
> of cases blocks at the same time.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/kpc2000/kpc2000/cell_probe.c | 43 +++++++++++---------
>  1 file changed, 24 insertions(+), 19 deletions(-)

Always be sure to cc: the proper maintainer and developers for your
patches.  Otherwise they might get lost in the noise of a mailing
list...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
