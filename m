Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FC5D3F31
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 14:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A36D86EE4;
	Fri, 11 Oct 2019 12:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjchRXMUDXXe; Fri, 11 Oct 2019 12:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BCD786EFD;
	Fri, 11 Oct 2019 12:07:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2F9D1BF292
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD99625877
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adeZJr-zxb3i for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 12:07:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 43FAD25281
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 12:07:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8858F214E0;
 Fri, 11 Oct 2019 12:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570795640;
 bh=luSFrTkBXjevkpaPvjpFIgRDMR8A/l9LbZkUpNdfjqE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=StRBtloyZl+V2nooPzdDNkLeY8Q4RNnUXngMumOm1NmCO/jAbLVdStLemjlsMRsaR
 6PJ+fO0t/wk6xuELos57cHKMIchR/bo8EXVkZKNHfLrg1GUu9jJLZCkH4mGUn03jsz
 iUahYDmgI9vAejsgc4bHuUrEh+kFy7k+pe8MwwTo=
Date: Fri, 11 Oct 2019 14:07:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191011120717.GA1143018@kroah.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
 <20191011105404.GA4774@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011105404.GA4774@kadam>
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
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 01:54:04PM +0300, Dan Carpenter wrote:
> On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
> >  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> > -	if (psetauthparm == NULL) {
> > -		kfree(pcmd);
> > +	if (!psetauthparm) {
> > +		kfree((unsigned char *)pcmd);
> 
> This new cast is unnecessary and weird.

Ah, I missed that, good catch.  I'll go drop this patch now.

Wambui, please fix up and resend.

thanks

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
