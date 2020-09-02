Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 871A125A57F
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 08:23:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83191857C1;
	Wed,  2 Sep 2020 06:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMGL7P2BpPxx; Wed,  2 Sep 2020 06:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31F4285495;
	Wed,  2 Sep 2020 06:23:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07E121BF36D
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 06:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 023D787186
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 06:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XP9Nucp5Tmpl for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 06:23:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 354FF87184
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 06:23:41 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A11D207EA;
 Wed,  2 Sep 2020 06:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599027821;
 bh=pxZT88PpiT+3Oan+fiGYB4sSuMb4oj05CTjWzPw4mh8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2oUIRckydq+3wIS7EpSBv3qBxhrbCstajKk9cxp2MESgK6/DCpkMmGDJcFNunNWgX
 RWVsaZEBs7lAbs1g/lXUvipNyTmxEZrxsIEdU9xoCgzOE/xGiUwAm0ULZ0L9MoyaMT
 uzBkOsnXThan4aqioLZFF8CCKLR9OZqJ9YnU6C+8=
Date: Wed, 2 Sep 2020 08:23:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Antoni Przybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH] staging: gdm724x: gdm_tty: replaced macro with a function
Message-ID: <20200902062337.GB142357@kroah.com>
References: <20200901201626.75405-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901201626.75405-1-antoni.przybylik@wp.pl>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 01, 2020 at 10:16:26PM +0200, Antoni Przybylik wrote:
> This approach is more elegant and prevents some problems related to
> macros such as operator precedence in expanded expression.
> 
> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)

If this is a new version of a previously submitted patch, please version
it (is this v2, or v3 or something else?) and put below the --- line
what changed from the previous versions, so we have a chance to know
what patch to take and which to ignore.

Please fix this up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
