Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939C1164DE7
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 19:47:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C92887A3A;
	Wed, 19 Feb 2020 18:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMpuuW6N6mNU; Wed, 19 Feb 2020 18:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC769863FD;
	Wed, 19 Feb 2020 18:47:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 296491BF318
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 18:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2658684115
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 18:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNns+uUt+KF3 for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 18:47:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3AA47840C2
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 18:47:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90853206DB;
 Wed, 19 Feb 2020 18:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582138064;
 bh=b+v2qMnCelv8wE+6aYkJtGvCkTQpcxJ6FRzLnIxCz3M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j9SqhD3cfVIhc9cx2V2+rQtrHsh/uZ4ReAPLA0lVXeiK4RocD/0bxCl54w3lG1zVR
 fr7m3GkIzFahdsHqw9NHQNCdlUr+FJskc6QjEKvWY/wqllcSB7pv1TtwIcS8knZACt
 Izyk8Ol7gMz26GNvVx+lscqGn5iVCDjKH1T1708I=
Date: Wed, 19 Feb 2020 19:47:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: comedi: change CamelCase to CAPS
Message-ID: <20200219184741.GB2854654@kroah.com>
References: <20200219174646.GA27559@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219174646.GA27559@kaaira-HP-Pavilion-Notebook>
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
Cc: devel@driverdev.osuosl.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 19, 2020 at 11:16:46PM +0530, Kaaira Gupta wrote:
> fix checkpatch.pl check of 'Avoid CamelCase' by changing NI_CtrSource to
> NI_CTRSOURCE in all the files. Change it to CAPS because it is a MICRO
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/comedi.h               |   4 +-
>  .../staging/comedi/drivers/ni_routing/README  |   4 +-

As proof of what I said in my previous email, see the changelog message
for this README file, and read it to see whre the names came from.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
