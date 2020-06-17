Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D38801FD52D
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 21:08:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F6ED21543;
	Wed, 17 Jun 2020 19:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OWqpD52qO2Pu; Wed, 17 Jun 2020 19:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2000D22735;
	Wed, 17 Jun 2020 19:08:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE6911BF429
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 19:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD1A721567
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 19:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBbGDgsh2JUX for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 19:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 19CBC21549
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 19:08:01 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8348C212CC;
 Wed, 17 Jun 2020 19:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592420880;
 bh=e/5+Rb5G33cHdb0vaSQhP5UBxDZid2EqzR4REteNm0g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ijyw4jYzonC/TpUxkUJcYLfLFvoV/dmUA8cVBeRHaoHrHlBI7zK+yMx9+lllc15a/
 WuEhuYKCU3ar0yPMOCqvBCBoGM3ojMuJYBnwdCzSXD0Lie1rzsM2M0s2x+/8tp4Z0i
 8xRnltLkln8admHqJZo1pd6PJRKGyBPVv6kXccOE=
Date: Wed, 17 Jun 2020 21:07:55 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [RFC 0/4] Don't do tuning zigzag using the very same frequency
Message-ID: <20200617210755.1138caa2@coco.lan>
In-Reply-To: <cover.1592419750.git.mchehab+huawei@kernel.org>
References: <cover.1592419750.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Sean Young <sean@mess.org>,
 Arnd Bergmann <arnd@arndb.de>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Brad Love <brad@nextdimension.cc>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 17 Jun 2020 20:52:10 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Marc reported on IRC that the zigzag code is trying to tune several times using
> the same frequency with si2168. Well, this is not how this would be supposed
> to do: it should try with different frequencies each time.
> 
> Change the core to use the one-shot mode if the frontend doesn't report a
> frequency step. This will default to the current behavior, except that tuning
> should be faster.
> 
> Yet, probably the right thing to do is to implement a frequency shift at such
> frontends, as otherwise  tuning may have problems. So, produce a warning
> on such cases, in order for the FE driver to be fixed.
> 


> Mauro Carvalho Chehab (4):
>   media: atomisp: fix identation at I2C Kconfig menu
>   media: atomisp: fix help message for ISP2401 selection

Those two patches are unrelated. Please ignore it on the context of this RFC.


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
