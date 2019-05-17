Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 669DF21405
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 09:13:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F08F875E9;
	Fri, 17 May 2019 07:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id chQ3fugZbG27; Fri, 17 May 2019 07:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A0DD874B5;
	Fri, 17 May 2019 07:13:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7EEF1BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C4DA0235A6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLbBEx4B90e4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:13:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A4432288A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:13:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A457920833;
 Fri, 17 May 2019 07:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558077201;
 bh=s2di9si9gxJpfS6w5+oinq/UVreHioxbHNkIbnuDvhY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zH2YRy9wNmHmlAQxvqH6ysz4ZvS5/nQYs+dH2omyVyW2J8f/2Mp7Ab7PEkFZFGtdr
 dQGTgIJxgwuX9a5Fq67YDl3HvxgMExf+1lYSA50MHdo6/uivBFIA1Zhwnxp77ygADx
 zooPu/e718snG0FaecTeTEUM65sraXfXm9s2iUig=
Date: Fri, 17 May 2019 09:13:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH v2 5/9] staging: kpc2000: use atomic_t to assign card
 numbers.
Message-ID: <20190517071318.GA23217@kroah.com>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
 <20190516213814.22232-6-jeremy@azazel.net>
 <SN6PR02MB4016B72A558E9A754FFA5C41EE0A0@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB4016B72A558E9A754FFA5C41EE0A0@SN6PR02MB4016.namprd02.prod.outlook.com>
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

On Thu, May 16, 2019 at 10:14:56PM +0000, Matt Sickler wrote:
> >-----Original Message-----
> >From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of
> >Previously the next card number was assigned from a static int local variable,
> >which was read and later incremented.  This was not thread- safe, so now we
> >use an atomic_t and atomic_fetch_add instead.
> 
> Switching to atomic_fetch_add is definitely an improvement over what that code
> was doing prior, but is that the proper solution?  How do other parts of the
> kernel handle giving devices unique ID numbers?

You use an "ida" structure.  That's the correct solution here, don't
mess with an atomic variable, that's not needed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
