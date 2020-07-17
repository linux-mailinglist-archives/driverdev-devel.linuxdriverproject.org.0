Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACB9223903
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 12:11:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96122881E9;
	Fri, 17 Jul 2020 10:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTOvcleHbyL7; Fri, 17 Jul 2020 10:11:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC2C8871DE;
	Fri, 17 Jul 2020 10:11:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 246661BF304
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 10:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2146188145
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 10:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eCiG8ALwNm2k for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 10:11:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A006E8813F
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:11:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D698A20775;
 Fri, 17 Jul 2020 10:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594980689;
 bh=gj8+8PFm/bqMCNQGJbLQD0cXNVjZl0TlXdUKqlLQi8A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bomO2fWDlIz3SCwC8oEf0pwPjYL9F6XH02mcGsy8ygfHXuEwMJ3MdeYySbPTjZYnv
 StE6SQSSd7YWZeLADnhZ5nixWcOyI2HGZ0md86ig3o1hPDTxmoUhGYID7yPX/IeCEX
 FokJkrPUK4N8UGVPI7/KFLuSKJqzOqyYDL014rsQ=
Date: Fri, 17 Jul 2020 12:07:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH v4] staging: comedi: comedi_fops.c: added casts to get
 rid of sparse warnings
Message-ID: <20200717100738.GB2553180@kroah.com>
References: <20200716152548.mzau4zhurwkzp5p6@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716152548.mzau4zhurwkzp5p6@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 11:25:48AM -0400, B K Karthik wrote:
> fixed sparse warnings by adding a cast in assignment from
> void [noderef] __user * to unsigned int __force *
> and a reverse cast in argument from
> unsigned int * to  unsigned int __user * .
> 
> v1 -> v2:
> - Add a reverse cast in argument
> v2 -> v3:
> - Change commit description as suggested by Ian Abott
> v3 -> v4:
> - Add versioning information in commit description

As Ian said, all of that goes below the --- line so it will not show up
in the changelog text.

As I don't want to hand-edit changelog text, as it does not scale, can
you please fix this up and resend as a v5?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
