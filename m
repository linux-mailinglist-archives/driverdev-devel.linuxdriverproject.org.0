Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A62395948F
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 09:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC7CC84826;
	Fri, 28 Jun 2019 07:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UWydJmOTs5Rj; Fri, 28 Jun 2019 07:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F15AE84A7E;
	Fri, 28 Jun 2019 07:05:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D30B61BF406
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 07:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0624203F2
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 07:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n5V8tOxTo4s5 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 07:05:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BC1420347
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 07:05:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75CCA204EC;
 Fri, 28 Jun 2019 07:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561705511;
 bh=5fkzHE/or/BO94Lut0W45FpjZpard5Gpc23HG0C1h6o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NN+rYYnlxvQr/pH2B8u53CEDmV68MlIT++3BNUr+YE7CvnRFQXtFrYK/xl82nlId+
 c7rUEEImQUxLdARAmWxSCm1/gAbE2JuybZtf00IDL7ben/NUWXKpePorOD8cX8d4bc
 1LvWrApkYFMWxcKH3hMMxk3aydWQaP/lnukwt6lI=
Date: Fri, 28 Jun 2019 09:05:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsh Jain <harshjain32@gmail.com>
Subject: Re: [PATCH] staging:kpc2000:Fix sparse warnings
Message-ID: <20190628070507.GA10932@kroah.com>
References: <20190627185138.26214-1-harshjain32@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627185138.26214-1-harshjain32@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 harshjain.prof@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 28, 2019 at 12:21:38AM +0530, Harsh Jain wrote:
> From: root <harshjain32@gmail.com>

Interesting user name :)

> Fix following sparse warning
> symbol was not declared. Should it be static?
> Using plain integer as NULL pointer

Don't do multiple things in the same patch.  Please break thsi up into
two different patches and fix up your email address.

Also never do kernel development as root on your system, it's easy to
break things...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
