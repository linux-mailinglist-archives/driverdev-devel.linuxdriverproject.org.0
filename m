Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F4E43DD9
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 17:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D11A2882BB;
	Thu, 13 Jun 2019 15:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTkaNqK8hoko; Thu, 13 Jun 2019 15:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 060CC88252;
	Thu, 13 Jun 2019 15:46:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A12C1BF28E
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 15:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81B4685E99
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 15:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KEq8rhykGdrK for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 15:46:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEF5385E06
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 15:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 2438C8EE0C7;
 Thu, 13 Jun 2019 08:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1560440773;
 bh=gMwntk/IzwI086ahC3l12emrfcHO6JQMxmh3VkSjshE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=mIPNn1GoVw9YK9vvc5PGLtMEryM+8RTsdlT68HIfW9ha65vB5qtZLGouYz9JntDVS
 3h2KG8HuVYnYBcOO5xxs6fYayxJKsNb3Yhg/kwdjmS22LkUTZR9kXgcZkHukM+fs2J
 NcA4++VNcrugYnf+J3NNdGuMHbhwNDAtkubEdxsk=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 98QEIRZ8iKoF; Thu, 13 Jun 2019 08:46:12 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 4DF778EE147;
 Thu, 13 Jun 2019 08:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1560440772;
 bh=gMwntk/IzwI086ahC3l12emrfcHO6JQMxmh3VkSjshE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=WrEHxmx+NcCR4U45jwluUA05nbpOLZUWOfZeYramAtpt8Z5fK6D3T/hi00P5XyQQC
 sV6f/Z4KLX4DGguHABjCcep72L4ch8xyq8Z6+Fbtm1Gi95FdHaq8RXy99PkZzyOL/K
 jxx0qKEmdu+MEsE3lTXyXzWo/Fc4DBoPl3fbTBrM=
Message-ID: <1560440768.3329.30.camel@HansenPartnership.com>
Subject: Re: [PATCH V2 08/15] staging: unisys: visorhba: use sg helper to
 operate sgl
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei
 <ming.lei@redhat.com>
Date: Thu, 13 Jun 2019 08:46:08 -0700
In-Reply-To: <20190613101656.GA28256@kroah.com>
References: <20190613071335.5679-1-ming.lei@redhat.com>
 <20190613071335.5679-9-ming.lei@redhat.com>
 <20190613095214.GA18796@kroah.com> <20190613100410.GA10829@ming.t460p>
 <20190613101656.GA28256@kroah.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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
 Hannes Reinecke <hare@suse.com>, linux-scsi@vger.kernel.org, "Martin K .
 Petersen" <martin.petersen@oracle.com>, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>, Jim Gill <jgill@vmware.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-06-13 at 12:16 +0200, Greg Kroah-Hartman wrote:
> On Thu, Jun 13, 2019 at 06:04:11PM +0800, Ming Lei wrote:
> > On Thu, Jun 13, 2019 at 11:52:14AM +0200, Greg Kroah-Hartman wrote:
> > > On Thu, Jun 13, 2019 at 03:13:28PM +0800, Ming Lei wrote:
> > > > The current way isn't safe for chained sgl, so use sg helper to
> > > > operate sgl.
> > > 
> > > I can not make any sense out of this changelog.
> > > 
> > > What "isn't safe"?  What is a "sgl"?
> > 
> > sgl is 'scatterlist' in kernel, and several linear sgl can be
> > chained together, so accessing the sgl in linear way may see a
> > chained sg, which is like a link pointer, then may cause trouble
> > for driver.
> 
> What kind of "trouble"?  Is this a bug fix that needs to be
> backported to stable kernels?  How can this be triggered?

OK, stop.  I haven't seen the commit log since the original hasn't
appeared on the list yet, but the changelog needs to say something like
this to prevent questions like the above, as I asked in the last
review.  Please make it something like this:

---
Scsi MQ makes a large static allocation for the first scatter gather
list chunk for the driver to use.  This is a performance headache we'd
like to fix by reducing the size of the allocation to a 2 element
array.  Doing this will break the current guarantee that any driver
using SG_ALL doesn't need to use the scatterlist iterators and can get
away with directly dereferencing the array.  Thus we need to update all
drivers to use the scatterlist iterators and remove direct indexing of
the scatterlist array before reducing the initial scatterlist
allocation size in SCSI.
---

James

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
