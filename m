Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABE1E5E58
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 20:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB0C387524;
	Sat, 26 Oct 2019 18:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWsA9awzytX4; Sat, 26 Oct 2019 18:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DBA05873DC;
	Sat, 26 Oct 2019 18:02:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8981BF44A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2433485359
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GW0rwdCkqMqK for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 18:02:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D4A5852DB
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 18:02:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5744C20663;
 Sat, 26 Oct 2019 18:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572112947;
 bh=736+3LKuV8NtSBzw5PYMu27jhPpKvZMpTRt5u2a7cNE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ns2I7xmQ15+dgUq66GGoqTdRNEHOsz7OTxkXYI37ZVyVgtbTxSVjo3gQqqWUmy3jR
 zbKP66vg/fgJZZwAsvrCLT2PBZdR5d4iZMV2jzhCMe7vE4EjkLGlimiMde76g163qb
 rG7IZi6dn2OQZtUaAAK2KweuGVgem/50FiFO06cM=
Date: Sat, 26 Oct 2019 20:02:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [RESEND PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191026180225.GA645771@kroah.com>
References: <20191025233909.GA1599@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025233909.GA1599@cristiane-Inspiron-5420>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 Todd Poynor <toddpoynor@google.com>, Rob Springer <rspringer@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 25, 2019 at 08:39:09PM -0300, Cristiane Naves wrote:
> Fix line ending with a '('
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/gasket/gasket_ioctl.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Why is this a "RESEND"?  Did nothing change in it?

Always version your patches, as the documentation suggests, and list
below the --- line what changed from the previous version.

Please fix up and resend it as a v3 (this is v2, right?)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
