Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73CA21215A
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 12:32:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 859718AA9B;
	Thu,  2 Jul 2020 10:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C2K3zVy4sntS; Thu,  2 Jul 2020 10:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 092B28A6D8;
	Thu,  2 Jul 2020 10:32:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88C6A1BF35D
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 10:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82A27878BA
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 10:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PP9LG7tjuppJ for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 10:32:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A3BE878B3
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 10:32:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F68420747;
 Thu,  2 Jul 2020 10:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593685953;
 bh=enD74GEcyPx4GL7iY06xo1k0ra+cf1sbekcCKhJ09Cc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H302ipcR8A1ukgCHgd47fGV/ik8fiGCINT2Qdp0wj5Li5gWW1M+DFvTYXeypnz9sC
 K//rtH52//aBy3eoANq3H0/64IGxoV+tSduQhe/AFMYtsPtURtxDxRVjtMLnKXkQRU
 IdLoHNqajHhE6JCdBvg9OP2naXnjgpwXu4BLRTyw=
Date: Thu, 2 Jul 2020 12:32:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 2/7] staging/rtl8192u: switch to RC4 library interface
Message-ID: <20200702103236.GC1238594@kroah.com>
References: <20200702101947.682-1-ardb@kernel.org>
 <20200702101947.682-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702101947.682-3-ardb@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-nfs@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 02, 2020 at 12:19:42PM +0200, Ard Biesheuvel wrote:
> Switch to the ARC4 library interface, to remove the pointless
> dependency on the skcipher API, from which we will hopefully be
> able to drop ecb(arc4) skcipher support.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
