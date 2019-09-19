Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D05B7D15
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 16:41:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DD7B865D3;
	Thu, 19 Sep 2019 14:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pb+FqmlbSBJm; Thu, 19 Sep 2019 14:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD3CE86B05;
	Thu, 19 Sep 2019 14:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0299E1BF23C
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 14:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EFE42865D3
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 14:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id le3yEOX7nBjm for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 14:41:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58F21847BE
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 14:41:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CEF62067B;
 Thu, 19 Sep 2019 14:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568904089;
 bh=TJHkQTtaGQHKS5CUibyY3os9gYsyoVt2bCM2nr2IE3I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YK7tcTHra9Le/h5CmSNa6LtWZSL5o4cwJ5rVAf2P+1X+wlsuAy/k+IOGQEI6mrRXo
 NX6UgrRnJtjB5Tjxdh20rmvLJCYDLM1AjucKjmmdkioeymP65FUmeYdUixedjjrzog
 rf26ghS7hGTSkoavOfnR5yDqRvo+1cLM2ntxQSpI=
Date: Thu, 19 Sep 2019 16:41:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 00/20] Add support for Silicon Labs WiFi chip WF200
 and further
Message-ID: <20190919144126.GA3997726@kroah.com>
References: <20190919142527.31797-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919142527.31797-1-Jerome.Pouiller@silabs.com>
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

On Thu, Sep 19, 2019 at 02:25:36PM +0000, Jerome Pouiller wrote:
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
> compatibility with older kernel revisions, etc... In add, I dropped all
> code in CONFIG_WFX_SECURE_LINK. Indeed, "Secure Link" feature depends
> on mbedtls and I don't think to pull mbedtls in kernel is an option
> (see "TODO" file in first commit).
> =

> v3:
>   - Fill commit log of patches 18, 19 and 20
> =

> v2:
>   - Add TODO file (and dropped todo list from cover letter)
>   - Drop code relative to compatibility with older kernels

dude, slow down.  wait for others to look at this.

there's nothing I can do until after 5.4-rc1 is out, so there is no rush
at all...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
