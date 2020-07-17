Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA434223B39
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 14:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40BF387F0A;
	Fri, 17 Jul 2020 12:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOw5UoVQ9TZv; Fri, 17 Jul 2020 12:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78AF487EC7;
	Fri, 17 Jul 2020 12:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D6D1BF2B1
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 12:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E52C788493
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 12:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGAAIGf2RS5z for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 12:16:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29D6E8846B
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 12:16:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58CCB20717;
 Fri, 17 Jul 2020 12:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594988168;
 bh=5CCYaFeo4NHuluv2fXcHNfDt9oB/jfEvMXttJthVwh4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FQRA7f/4anH9UNnCtv56F3m1+N6p6O4NyxBt/f9k6m3qfz3CpRwnISVftmhjB1/eF
 iJauB28n6SNwLDVS8utcuPEh2GC1x0FRHDAhoad1gbuufT0WlmHyFYvQsyYHd4jr04
 +0B4gaggzoxvZ3lC/F4HeQO314PqgkMxKugazCdw=
Date: Fri, 17 Jul 2020 14:16:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christopher tyerman <c.tyerman@firebladeautomationsystems.co.uk>
Subject: Re: linux/drivers/staging/pi433/
Message-ID: <20200717121600.GB2953399@kroah.com>
References: <3a130eff-8a46-f12e-0848-7d086b875567@firebladeautomationsystems.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a130eff-8a46-f12e-0848-7d086b875567@firebladeautomationsystems.co.uk>
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
Cc: devel@linuxdriverproject.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 17, 2020 at 12:11:50PM +0100, christopher tyerman wrote:
> hello
> =

> Im looking for information on the pi433 driver. Who is currently
> maintaining the driver? as the original author appears not to have made
> any alterations since the original commit, and links are no longer valid.

Any reason you didn't cc: that developer here?

> Im looking to determine what would be necessary to confirm/implement=A0
> functionality using the RFM69HCW and, initially, more specifically the
> SparkFun RFM69 Breakout( https://www.sparkfun.com/products/12823).

No idea, try it and see!

> As a side question can you tell what or where i can find information on
> driver naming conventions? as the pi433 driver to me looks like it
> should really be named after the RFM69 series of chips/modules rather
> than a specific PCB for that module which appears to not be available
> and multiple alternatives exist for.

If you think it should be renamed, and want to do the work here to fix
it up and get it out of staging, great, please do!

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
