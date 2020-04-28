Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 538441BC446
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 17:58:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8229C84B88;
	Tue, 28 Apr 2020 15:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oyiyr1mVBuS8; Tue, 28 Apr 2020 15:58:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55D498405F;
	Tue, 28 Apr 2020 15:58:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A09D1BF2EB
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 15:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 36E7984543
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 15:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5c8p+vt3Jzg for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 15:58:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AABCB8405F
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 15:58:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08D74206C0;
 Tue, 28 Apr 2020 15:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588089527;
 bh=qXrJ1X738mDatImKsjVwSd8Q17d8jVla98VKaBYOuR4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FUfYbW3GbJdy2X49J3YY7Qd2zXiDhOXFr2vX+KqhyXFF/aB6tldFv6Ygm/uDWhMzR
 zHLTBYQClEk5AnwX8f3FtfDJHzxrQePDL73NQz17IbAOAHKvormV6KCwuGJBvvb5Ok
 uSWckYHOlHmUOJ/bR/ou+63j64apAeMiwfsvJB1E=
Date: Tue, 28 Apr 2020 17:58:45 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de>
Subject: Re: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Message-ID: <20200428155845.GA1611284@kroah.com>
References: <1507296707.2915.14.camel@iis-extern.fraunhofer.de>
 <20200416163830.30623-1-manuel.stahl@iis-extern.fraunhofer.de>
 <20200428135443.GA1437053@kroah.com>
 <6e93bbcb4ba85b4cc143aa8e3e7254071b3c8bdb.camel@iis-extern.fraunhofer.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e93bbcb4ba85b4cc143aa8e3e7254071b3c8bdb.camel@iis-extern.fraunhofer.de>
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
 "hjk@linutronix.de" <hjk@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sojkam1@fel.cvut.cz" <sojkam1@fel.cvut.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 28, 2020 at 03:47:42PM +0000, Stahl, Manuel wrote:
> > 
> > > +		return err;
> > > +	}
> > > +	pci_set_master(pdev);
> > > +
> > > +	dev_info(&pdev->dev, "Legacy IRQ: %i", pdev->irq);
> > 
> > Again, remove, be quiet :)
> 
> Use dev_dbg() or remove completely?

If it helps in debugging, dev_dbg() is fine to use.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
