Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9334352D
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 12:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8895586456;
	Thu, 13 Jun 2019 10:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SniNiM8ILGuT; Thu, 13 Jun 2019 10:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28A0586311;
	Thu, 13 Jun 2019 10:17:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43E5C1BF981
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 10:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C9D086311
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 10:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37Tfkk7p-156 for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 10:16:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8C3486197
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 10:16:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FECD2147A;
 Thu, 13 Jun 2019 10:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560421018;
 bh=VisLdZRLYBHUGC086DvgShH/5UWS0mQi8XB0fSRtouU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yqnaYdYBeuHFc6qcgbkniXutVlSfJbi11qWa+Am+WKvgqpW2WcvivDUNY5Nu3Bf3y
 l5ZdR2RxMAUmXCPc+ULfR5TQHaPfS8Ec8yNVkaMMDBHqUuJprUNGcDfRtFiFffr8tj
 pavpRxKpH+8BAiIujv+eUifHMjQg8NficuACdCCE=
Date: Thu, 13 Jun 2019 12:16:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V2 08/15] staging: unisys: visorhba: use sg helper to
 operate sgl
Message-ID: <20190613101656.GA28256@kroah.com>
References: <20190613071335.5679-1-ming.lei@redhat.com>
 <20190613071335.5679-9-ming.lei@redhat.com>
 <20190613095214.GA18796@kroah.com>
 <20190613100410.GA10829@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613100410.GA10829@ming.t460p>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: Michael Schmitz <schmitzmic@gmail.com>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2019 at 06:04:11PM +0800, Ming Lei wrote:
> On Thu, Jun 13, 2019 at 11:52:14AM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Jun 13, 2019 at 03:13:28PM +0800, Ming Lei wrote:
> > > The current way isn't safe for chained sgl, so use sg helper to
> > > operate sgl.
> > 
> > I can not make any sense out of this changelog.
> > 
> > What "isn't safe"?  What is a "sgl"?
> 
> sgl is 'scatterlist' in kernel, and several linear sgl can be chained
> together, so accessing the sgl in linear way may see a chained sg, which
> is like a link pointer, then may cause trouble for driver.

What kind of "trouble"?  Is this a bug fix that needs to be backported
to stable kernels?  How can this be triggered?

> > Can this be applied "out of order"?
> 
> Yes, there isn't any dependency among the 15 patches.

Then perhaps you shouldn't send a numbered patch series with different
patches sent to different maintainers, it just causes confusion :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
