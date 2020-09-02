Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D6025AC98
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 16:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B1E6228F1;
	Wed,  2 Sep 2020 14:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3QUU36TbHnL; Wed,  2 Sep 2020 14:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E72952049E;
	Wed,  2 Sep 2020 14:09:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08DA31BF299
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 14:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE6CB203E6
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 14:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUQi+wbS+suq for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 14:09:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 36BCC203DC
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 14:09:36 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B9CC2078E;
 Wed,  2 Sep 2020 14:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599055775;
 bh=gM9T3vWDXP+R8rA9KXPhmDwJIIC+hPMMGQ6hZ5o8Ui8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0BnISZH8FpmdrWOwzjHoRStWKDv4AA9A++fzHBjKhNv18807g3uusiJeoMNKQym3J
 aANb53n4A5ZzhOj8pX8kOwQawqHjR3Ky0y0Tx9uFTjUs5Ze3ogq6ZSPSg15x2oq/ep
 gOHSkPNqUBUs+57a+6ZMCjWAEmYnyu6zZDSvJWEI=
Date: Wed, 2 Sep 2020 16:10:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Antoni Przybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH] staging: gdm724x: gdm_tty: replaced macro with a function
Message-ID: <20200902141000.GA2020271@kroah.com>
References: <20200902132419.61220-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902132419.61220-1-antoni.przybylik@wp.pl>
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

On Wed, Sep 02, 2020 at 03:24:19PM +0200, Antoni Przybylik wrote:
> This approach is more elegant and prevents some problems related to
> macros such as operator precedence in expanded expression.
> -------------------------------------------------------------------
> Changed return type to bool and removed inline sepcifier.

What is this here for?

Please read the documentation for how to properly version patches, it
should be in the submitting patches file somewhere...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
