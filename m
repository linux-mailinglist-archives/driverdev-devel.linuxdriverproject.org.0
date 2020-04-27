Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEA91BA61C
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 16:18:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B544A87DFE;
	Mon, 27 Apr 2020 14:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OSqsixq9OuiN; Mon, 27 Apr 2020 14:18:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7097A87DAA;
	Mon, 27 Apr 2020 14:18:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 427911BF37E
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 14:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FB5D8665D
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 14:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F46JntF0fHrR for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 14:18:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62662866CA
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 14:18:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B519C206B6;
 Mon, 27 Apr 2020 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587997092;
 bh=zXQ51mgKn2086N6wizSp+QElbF+XlMV+kXnI1pYIupo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mHBDofvS1ltNw6wWUrFj55BdrcHAE70kn5woRvDyehi5xL+/TT4oRzt1Ml7SBMnef
 vFNOYaZfQeW/NwSztgHp9kwV6aO2xMmBMnVMPWLI9VCvYCX2XDVhhs1Sf53m2A+LCK
 ppdFpHrESeOTXvt38mBbE1npB34ytmj0WdOt4mXo=
Date: Mon, 27 Apr 2020 16:18:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH 2/2] drivers: staging: rts5208: rtsx.c fix Unbalanced
 braces around else statement issue
Message-ID: <20200427141810.GB3158628@kroah.com>
References: <20200427135212.26285-1-john.oldman@polehill.co.uk>
 <20200427135212.26285-2-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427135212.26285-2-john.oldman@polehill.co.uk>
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
Cc: devel@driverdev.osuosl.org, hslester96@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 27, 2020 at 02:52:12PM +0100, John Oldman wrote:
> Make a better job of fixing coding style issues, this time fixing 
> all blocks as per Joe Perches' comment.

Trailing whitespace :(

> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
>  drivers/staging/rts5208/rtsx.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 

You sent 2 patches with identical subject lines, yet they do different
things, which is not ok.  Please fix up.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
