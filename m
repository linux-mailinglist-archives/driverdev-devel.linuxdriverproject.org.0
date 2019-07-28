Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015AA77F74
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jul 2019 14:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30D3588B57;
	Sun, 28 Jul 2019 12:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ni2e6wU-ziD; Sun, 28 Jul 2019 12:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8036188B33;
	Sun, 28 Jul 2019 12:45:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56CFE1BF35A
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 12:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 541F387196
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LYq9JlJAglk for <devel@linuxdriverproject.org>;
 Sun, 28 Jul 2019 12:45:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E483B8718F
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 12:45:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48A8A2077C;
 Sun, 28 Jul 2019 12:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564317945;
 bh=KFFvezLZqz8RVnSNF1MTyTE9JLokOfJCQijc9+VUUH8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D0BdcQ8fR3ftxCRzSHT4ss7JQp4YQRPFj5m9DazlsZ/A+1G3wfGswxLzbJ+xVy5iA
 s4qCXy/OVDncrvxrOC/dfoCTvsOl/UZMF78m492oV6W29M3tonnY+tnv8HH+09cB7C
 UCsE3aqm0qxuDQIdtoa/JGeLLpUhMWPtdLh5sk5Y=
Date: Sun, 28 Jul 2019 14:45:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Saurav-Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] RTWAP:Fixed Coding function and style issues
Message-ID: <20190728124543.GA1109@kroah.com>
References: <20190728122153.GA11748@saurav>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728122153.GA11748@saurav>
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
Cc: devel@driverdev.osuosl.org, , linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 28, 2019 at 05:51:57PM +0530, Saurav-Girepunje wrote:
> RTWAP:Fixed Coding function and style issues
>       Removed Unnecessary parentheses

What is "RRWAP:"?  Please look at other commits for this driver and copy
how they structure the subject and changelog information and then
resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
