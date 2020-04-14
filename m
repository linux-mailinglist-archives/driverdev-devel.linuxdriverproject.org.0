Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FB21A7832
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 12:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D375203A3;
	Tue, 14 Apr 2020 10:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rZFkoHsvNltd; Tue, 14 Apr 2020 10:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7535F20371;
	Tue, 14 Apr 2020 10:13:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9543C1BF255
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9110E20372
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r7fBxZowBvT6 for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 10:13:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0796620371
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 10:13:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 571072072D;
 Tue, 14 Apr 2020 10:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586859197;
 bh=h8ADmnJTVSb8gjodFqd2cAnXWXp/OZAKqL9jqhK00BI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aA5MABPg+jmkJ0pP0B2S7KWcmEq8RsIXFZ/D/NJVp8oGafkCTn215ilzlqVLxvPrb
 OhlN62TzS0l6Gg9QRSzb79X8OfU3jmHIs6wnvjpyLnDKpwbjUUYkGx0PLO0VRJmecl
 fiIKNsdDqSesgUhNLXsTGaWD6JnKAF0xDZrBDF5o=
Date: Tue, 14 Apr 2020 12:13:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-next 127/127] drivers/staging/wfx/bh.c:88:32:
 sparse: warning: restricted __le16 degrades to integer
Message-ID: <20200414101315.GB37302@kroah.com>
References: <202004141712.L6CqySje%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202004141712.L6CqySje%lkp@intel.com>
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 14, 2020 at 05:55:15PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
> head:   ce920326663b3df22c94ade99a8b234baa6ccaa5
> commit: ce920326663b3df22c94ade99a8b234baa6ccaa5 [127/127] staging: vt6656: formulate rspinf values into tables
> reproduce:
>         # apt-get install sparse
>         # sparse version: 
>         git checkout ce920326663b3df22c94ade99a8b234baa6ccaa5
>         make ARCH=x86_64 allmodconfig
>         make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>

I don't think that the warning you point out here, is caused by the
patch you say.  Please fix up on the 0-day side...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
