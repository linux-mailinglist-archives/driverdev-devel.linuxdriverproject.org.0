Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BFC164DE3
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 19:46:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0063020768;
	Wed, 19 Feb 2020 18:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0E2axIGHNHVi; Wed, 19 Feb 2020 18:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9151420506;
	Wed, 19 Feb 2020 18:46:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F30961BF318
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 18:46:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EDB2E859C9
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 18:46:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RzfnhCZ8YIuP for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 18:46:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C88F38598B
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 18:46:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 209BB24670;
 Wed, 19 Feb 2020 18:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582137978;
 bh=V0/0RXn2CjSi+e6U4mKdjZ80KfPSNX+qhYddvJb3vKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rLFw+mv5jHMginBd7XU0pCop7fnJiuFjCusQ4+LY5MMMXsaMJr2qw7hnT9nfOnGLJ
 u9S3wmmP1JgMmnw9O7OhHmlQhuVqajyWaIEA/0cUGwrCRlXfBG1v5WhH0Pf6YvtmuJ
 SZKGF0zPYo0QkDy0yFTM9fxxTEoDfTW2kb7BcPkM=
Date: Wed, 19 Feb 2020 19:46:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: comedi: change CamelCase to CAPS
Message-ID: <20200219184616.GA2854654@kroah.com>
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

What is a "MICRO"?

> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>

Are you sure this is ok?  I think this comes directly from a spec sheet
so changing it might not be good.

as proof:

> @@ -104,7 +104,7 @@ struct ni_device_routes ni_pci_6070e_device_routes = {
>  		{
>  			.dest = TRIGGER_LINE(0),
>  			.src = (int[]){
> -				NI_CtrSource(0),
> +				NI_CTRSOURCE(0),
>  				NI_CtrGate(0),
>  				NI_CtrInternalOutput(0),
>  				NI_CtrOut(0),

Looks like all of these are CamelCase, why are you changing only one?
They all should be the same, and odds are, how they are today is fine,
right?

Look at the git history of these files to be sure.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
