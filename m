Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F80E178ACD
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 07:48:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7467D84AF4;
	Wed,  4 Mar 2020 06:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emzbRD39_v12; Wed,  4 Mar 2020 06:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5818C84ADC;
	Wed,  4 Mar 2020 06:48:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AD491BF85D
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29DF584ADC
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EF7J3Y9vJRZQ for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 06:48:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE0AC84A6C
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 06:48:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 209672146E;
 Wed,  4 Mar 2020 06:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583304490;
 bh=yN/luUhk9sZoRMguRNrPehHcGwLuSq+z6P8y708HX2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HBBKqHXsUn20IUYFP2Ot0oMeIMRYHgdsk3+a8f3tf9+j1gCZ/Iu/mNx0bV0uV3xXH
 N4nT5SSgkiCRKCxdKecVGABm89b8blckrPmV4kVqxTOC9Gx/uBlXson80BcbCNEUDL
 hhg8Zoo/TJZHir1QF8jmUBQwSrk3vFVmXaftmmvI=
Date: Wed, 4 Mar 2020 07:48:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH v2] staging: wfx: data_tx.c: match parentheses alignment
Message-ID: <20200304064808.GA1232166@kroah.com>
References: <20200223193201.GA20843@kaaira-HP-Pavilion-Notebook>
 <8c458c189abb45fb3021f7882a40d28a24cc662d.camel@perches.com>
 <20200224162621.GA6611@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224162621.GA6611@kaaira-HP-Pavilion-Notebook>
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
Cc: Joe Perches <joe@perches.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 09:56:21PM +0530, Kaaira Gupta wrote:
> On Mon, Feb 24, 2020 at 06:13:32AM -0800, Joe Perches wrote:
> > On Mon, 2020-02-24 at 01:02 +0530, Kaaira Gupta wrote:
> > > Match next line with open parentheses by giving appropriate tabs.
> 
> Changed the first word to caps. Will keep this in mind from now on.
> Thanks!
> 

There was no "v2" patch in this email, what happened to it?

I've dropped this thread now, please resend the patch if you have an
updated version.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
