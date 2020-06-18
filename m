Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76641FECD2
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 09:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96CCF885D0;
	Thu, 18 Jun 2020 07:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2QSt1+yzjfv; Thu, 18 Jun 2020 07:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 153FE8857C;
	Thu, 18 Jun 2020 07:49:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB6AE1BF37E
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 07:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A6E5120117
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 07:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJQwFUmIHevF for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 07:49:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A2DC20035
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 07:49:31 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A0C32166E;
 Thu, 18 Jun 2020 07:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592466571;
 bh=ibQowcpRzi2x8YPw80J2WJshf2seNC5tdBtJjm5PzI4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K8KN03xnv/ctc/iYQwbIHSiYIxPTFGKl+ydkKjqiJVpBfjSPxIvYyQ9GDvPcR2d55
 0cwTariGM9z6Q1uhJ8I/ReYD3ZVcWydA6wM/FOH1viaLqYuw+t0tkEHXT+PxBBEUL1
 3dCxg8ieQ/f4oUeL9I9WSPNfuUnUeABcPqXz/kRE=
Date: Thu, 18 Jun 2020 09:49:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tyler Shetrompf <tyler@shetrompf.com>
Subject: Re: [PATCH] Staging: comedi: comedi_fops: fixed a blank line coding
 style issue
Message-ID: <20200618074924.GA187169@kroah.com>
References: <20200610195923.GA12602@archlinux.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610195923.GA12602@archlinux.localdomain>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 10, 2020 at 07:59:23PM +0000, Tyler Shetrompf wrote:
> Fixed a coding style issue.
> 
> Signed-off-by: Tyler Shetrompf <tyler@shetrompf.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 3 +++
>  1 file changed, 3 insertions(+)

Someone else sent this same patch 5 days before you did:
	https://lore.kernel.org/r/20200605032140.31287-1-kambojdivyansh2000@gmail.com

Sorry,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
