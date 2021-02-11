Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72CC3187A9
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:04:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D89E487579;
	Thu, 11 Feb 2021 10:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HWc43VTe0jSj; Thu, 11 Feb 2021 10:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84DF187574;
	Thu, 11 Feb 2021 10:04:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 143B51BF3FF
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FCDA8663C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AzRub5bgVCdq for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:04:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C1EA86614
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:04:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75C6564E92;
 Thu, 11 Feb 2021 10:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613037844;
 bh=jYOmfA2ySnqXWmc7HI+nczhGasVR4U01sAyBqP9xOkE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QqixWdqs4hL5QrKtcM64hQ1SNtwuB26IImiT/CtmwxyZms33VE1iY/lIRzZzUbCH2
 y4sLGH4kU56F82JBRxN+XNCZyPLUbXjRbl8Mm61nfV3V9OAuq0vcY4wSo6ygJlPtsp
 LBmwBAN9ZBX9yopKzm2bi1kneUG++O6s8q+U5JYI=
Date: Thu, 11 Feb 2021 11:04:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthek <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <YCUBEMUyvRcQkFF7@kroah.com>
References: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
 <YCQxeMVM92dtfEpO@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQxeMVM92dtfEpO@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 12:48:16AM +0530, karthek wrote:
> check this out

Why ask us again when you already sent a patch?  Do you see any other
developers doing that on the mailing lists?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
