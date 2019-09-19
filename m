Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40669B7869
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 13:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7584886AFF;
	Thu, 19 Sep 2019 11:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vYP1MOhTN5EO; Thu, 19 Sep 2019 11:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4835281E24;
	Thu, 19 Sep 2019 11:25:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C62881BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C2FC586A70
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dT2m4wWB6KIW for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 11:25:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1751781E24
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 11:25:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 629CB21929;
 Thu, 19 Sep 2019 11:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568892310;
 bh=84PMMk/PsMhWfiAtr6+OFOFfKsnQcIbABrn95J9LeVM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b5o+0Zr9UDP0XhC0HKGUkWrVlpyQquvIdFP92L1R0FVJ97jL1fAvMmiWxIJGmL7Rv
 4y41MrBkFp0z0WtlpsaoPEl6A6NgvhaRsdGvg0Ucb2JjW7njglWNav6hhSdDWwF/EQ
 Xh9Tk8ZF7m+8ReQD2cmXt+2OAEDNaL8wb1WnyH64=
Date: Thu, 19 Sep 2019 13:25:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 00/20] Add support for Silicon Labs WiFi chip WF200 and
 further
Message-ID: <20190919112508.GA3037175@kroah.com>
References: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 10:52:34AM +0000, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Hello all,
> =

> This series add support for Silicon Labs WiFi chip WF200 and further:
> =

>    https://www.silabs.com/documents/public/data-sheets/wf200-datasheet.pdf
> =

> This driver is an export from:
> =

>    https://github.com/SiliconLabs/wfx-linux-driver/
>    =

> I squashed all commits from github (it definitely does not make sense to
> import history). Then I split it in comprehensible (at least try to be)
> commits. I hope it will help readers to understand driver architecture.
> IMHO, firsts commits are clean enough to be reviewed. Things get more
> difficult when I introduce mac8011 API. I tried to extract important
> parts like Rx/Tx process but, big and complex patches seem unavoidable
> in this part.
> =

> Architecture itself is described in commit messages.
> =

> The series below is aligned on version 2.3.1 on github. If compare this
> series with github, you will find traditional differences between
> external and a in-tree driver: Documentation, build infrastructure,
> etc... In add, I dropped all code in CONFIG_WFX_SECURE_LINK. Indeed,
> "Secure Link" feature depends on mbedtls and I don't think to pull
> mbedtls in kernel is an option (see "To be done" below).
> =

> =

> What need to be done in this driver  to leave staging area?
> =

>   - I kept wfx_version.h in order to ensure synchronization with github
>     waiting for development goes entirely in kernel

That should be removed soon.

>   - I also kept compatibility code for earlier Linux kernel version. I
>     may drop it in future. Maybe I will maintain compatibility with
>     older kernels in a external set of patches.

That has to be dropped for the in-kernel version.

The rest of these are fine, can you add this list in a TODO file for
this directory like the other staging drivers have?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
