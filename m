Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C38BB3086CC
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 09:05:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B83B8111A;
	Fri, 29 Jan 2021 08:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h_mciLAr40Df; Fri, 29 Jan 2021 08:05:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F310C844DA;
	Fri, 29 Jan 2021 08:05:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE0B71BF5A2
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 08:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CADCC82DE1
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 08:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzR35prwyYM1 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 08:04:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8121D80C0A
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 08:04:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3421B64E03;
 Fri, 29 Jan 2021 08:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611907494;
 bh=i6qw5IH+5hMtDSRWqbRmPsmp70EKDpArKAE+2VGvhB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FBkeHaC5MM5z5gOlLgsQG2yETigCXQgrdQ84PCuk0Nd7hFCMa4CSHp3XvAmQFFz2B
 gm3fhZ82TTwJN+srrTIKapGv4y0f8WnEXK4BF4waPhhbkkf9QY20plLUV2LZTQEnlL
 sIaTl5G2nsSBmzIx6bMVSeYp/PeWZEMY2P5C2AUs=
Date: Fri, 29 Jan 2021 09:04:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH] staging: qlge/qlge_ethtool.c: strlcpy -> strscpy
Message-ID: <YBPBoajKXbKhI7ji@kroah.com>
References: <20210129064522.97548-1-memxor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129064522.97548-1-memxor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 12:15:23PM +0530, Kumar Kartikeya Dwivedi wrote:
> Fixes checkpatch warnings for usage of strlcpy.

What warning would that be?

And if we could just search/replace for this, why hasn't that already
happened for the whole tree?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
