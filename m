Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23073E6E52
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 09:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 190D884B23;
	Mon, 28 Oct 2019 08:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ehBYxmgU2QxI; Mon, 28 Oct 2019 08:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0FA6844CC;
	Mon, 28 Oct 2019 08:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C04F1BF325
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 08:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45E6A85465
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 08:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zfebQFyZjXt for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 08:36:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9450B853C5
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:36:06 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,239,1569276000"; d="scan'208";a="408749677"
Received: from unknown (HELO hadrien) ([91.217.168.176])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 09:36:04 +0100
Date: Mon, 28 Oct 2019 09:36:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: octeon: Remove unneeded variable
In-Reply-To: <20191028082732.GE1944@kadam>
Message-ID: <alpine.DEB.2.21.1910280934430.2348@hadrien>
References: <20191026222453.GA14562@cristiane-Inspiron-5420>
 <20191028082732.GE1944@kadam>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Cristiane Naves <cristianenavescardoso09@gmail.com>,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 28 Oct 2019, Dan Carpenter wrote:

> On Sat, Oct 26, 2019 at 07:24:53PM -0300, Cristiane Naves wrote:
> > Remove unneeded variable used to store return value. Issue found by
> > coccicheck.
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/octeon/octeon-stubs.h | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> > index b07f5e2..d53bd801 100644
> > --- a/drivers/staging/octeon/octeon-stubs.h
> > +++ b/drivers/staging/octeon/octeon-stubs.h
> > @@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
> >  		uint64_t queue, union cvmx_pko_command_word0 pko_command,
> >  		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
> >  {
> > -	cvmx_pko_status_t ret = 0;
> > -
> > -	return ret;
> > +	return 0;
>
> What is the point of this function anyway?

Given that it is in octeon-stubs.h, it seems that the point is to get the
code to compile when COMPILE_TEST is set.  There is a real definition in
arch/mips/include/asm/octeon/cvmx-pko.h

julia
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
