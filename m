Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF82022517C
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 13:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47D438695B;
	Sun, 19 Jul 2020 11:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ybSPm8fLlwim; Sun, 19 Jul 2020 11:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 640C786566;
	Sun, 19 Jul 2020 11:05:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B2C891BF46A
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC92186554
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0raMqoop1OLd for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 11:05:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C6648651C
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:05:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 653C92065E;
 Sun, 19 Jul 2020 11:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595156726;
 bh=YlJtL/LZmuxlJGPHCVKpVrk2xtAJ6lZY7jAqb30NAzs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u+cilKhSdWwLjuFYmalbTYfbx//v4KVr2UefRwyU1wgXYKOMioTu5hnvUOSZQDopu
 Cg9jXRE5iaIid2hJRofw33kZUY3aJqzUrixUSx4oEmvqsKWly7mc09RMSAF+1Y2GSi
 000oSkRcVAxTlEvauVd6Y8pm3Umfxo18+htDSAJM=
Date: Sun, 19 Jul 2020 13:05:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshan D V <darshandv10@gmail.com>
Subject: Re: [PATCH 1/2] staging: rtl8192e: Fixed a coding style error
Message-ID: <20200719110538.GB266150@kroah.com>
References: <20200719092236.GB171181@kroah.com>
 <20200719105557.12605-1-darshandv10@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719105557.12605-1-darshandv10@gmail.com>
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
Cc: devel@driverdev.osuosl.org, contact@christina-quast.de,
 yuehaibing@huawei.com, ardb@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 19, 2020 at 04:25:56PM +0530, Darshan D V wrote:
>     rtllib_crypt_ccmp.c: Fixed the error - space required before the
>     open parenthesis '(' on line #281.

What does this mean for a changelog text?

And why is it indented?

Did you read the section in the submitting patches document about how to
write a changelog text?  Perhaps you might want to re-read that :)

> Signed-off-by: Darshan D V <darshandv10@gmail.com>

Is this how you sign legal documents?  If so, great, but I have to ask.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
