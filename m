Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B2E263FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CDEE30A41;
	Wed, 22 May 2019 12:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2tthRQLe6AD; Wed, 22 May 2019 12:45:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 347053067D;
	Wed, 22 May 2019 12:45:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40D291BF4D8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E163304CA
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUsQSBQdtfRQ
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:45:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D141230373
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:45:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 329AC21773;
 Wed, 22 May 2019 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558529153;
 bh=Liv/0k2gz47TV+/NKuMzhemmoN3Of9pKPdCGzwyqn6o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E4K8VWab34xVkG9aeswYXKdsxvz7alED+1q77mOtIlqBqh64mogCgDTLyTiGFpyvv
 /SRS6isrmmYC8OWU0rXsrz4RwY5RCpx5XIUR1ArHcQfg16p7PXBjMB3hYUOAb4vf2r
 s8UQM93uoRdTpyapw0Q/7dC7TT8m4DidIHbwhlfc=
Date: Wed, 22 May 2019 14:45:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v6 0/6] staging: kpc2000: another batch of fixes
Message-ID: <20190522124551.GA22148@kroah.com>
References: <20190521103524.2176-1-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521103524.2176-1-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 11:35:18AM +0100, Jeremy Sowden wrote:
> There are a number relating to device attributes, one formatting patch,
> and another that changes how card numbers are assigned.
> 
> Greg reckoned that the changes to the code in the attribute call-backs
> that gets the struct kpc2000 object from the struct device object were
> broken.  I've reviewed them and split them into two patches because I
> was doing two different things in the previous patch.  I *think* they
> are correct, but I've moved them to the end of the series in case I
> really have just got the wrong end of the stick, so they can easily be
> dropped.

Thanks for sticking with this, now applied.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
