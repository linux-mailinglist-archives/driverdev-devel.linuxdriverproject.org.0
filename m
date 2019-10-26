Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2FFE5E62
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 20:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CC9987553;
	Sat, 26 Oct 2019 18:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4TZYPnrG3a0A; Sat, 26 Oct 2019 18:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4415987404;
	Sat, 26 Oct 2019 18:05:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81FDD1BF2B3
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EF77873DC
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2b6RpFWBxEFJ for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 18:05:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14739873B6
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 18:05:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72AAA20663;
 Sat, 26 Oct 2019 18:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572113108;
 bh=etgcI5LiCF7KlUXG0QY0IU1mwTAKTY2Jmd+J7FcUmyY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bqiciS92jKolql4n2q58VrGwsm+3GDw8gVT2LTI4Mforb8M1tkRxuw69b2Y0JiOUD
 y9xQLz4jfc64Ycj1ojLTrvjo8DeMtaWSFRd1kzzsEGeox9s3e4BnDd5JdQ9mJXwkKI
 bKp8zcYiz9Tzu9/YxwoG8JIymIDXELCxlgvcSw8k=
Date: Sat, 26 Oct 2019 20:05:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [RESEND PATCH 2/2] staging: rtl8712: Remove lines before a close
 brace
Message-ID: <20191026180506.GC645771@kroah.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
 <0bd6b897a5af322cf54d53bb68752d3667a7acb6.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0bd6b897a5af322cf54d53bb68752d3667a7acb6.1572051351.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Larry Finger <Larry.Finger@lwfinger.net>, linux-kernel@vger.kernel.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 25, 2019 at 10:10:04PM -0300, Cristiane Naves wrote:
> Fix Blank lines aren't necessary before a close brace '}'. Issue found
> by checkpatch.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 2 --
>  1 file changed, 2 deletions(-)

What changed from the previous version?  This isn't a "RESEND" it is a
new version, right?  Please properly document that and resend the whole
series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
