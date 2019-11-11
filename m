Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B445CF77BD
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 16:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E573486549;
	Mon, 11 Nov 2019 15:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjQjTZew-yFw; Mon, 11 Nov 2019 15:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6BA286542;
	Mon, 11 Nov 2019 15:34:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22B671BF3D9
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 15:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F76387D65
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 15:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ds9ksDXY+ohL for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 15:34:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A791D87AC2
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 15:34:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 048FE214E0;
 Mon, 11 Nov 2019 15:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573486458;
 bh=8rH4p3fJ8H3Pd7FYS0/8Mgb/fDjsoOFr9jRaMm0oFO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DQhc2JgKgYMPpASZNLzYd/fmY0aGcXB5/c5HwAWSnX3Cn453zL+IKZ10voO4o6ATG
 VgoMS3aRsp1fy87JaEHVhvLYlaHMXT1Cu3zzU4UZXel6526SU05Wb0r8XZQeqytkQY
 TYPPffEHhxHOPqPcrDMJEXZiqkJDo0B1RZ4Yh49A=
Date: Mon, 11 Nov 2019 16:34:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH v2 2/3] staging: wfx: wrap characters
Message-ID: <20191111153414.GA798254@kroah.com>
References: <20191111133055.214410-1-jbi.octave@gmail.com>
 <20191111133055.214410-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111133055.214410-2-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 11, 2019 at 01:30:54PM +0000, Jules Irenge wrote:
> Wrap characters to fix line of over 80 characters.
> Issue detected by Checkpatch tool

You did other things in here as well:

>  {
> -	struct ieee80211_hdr *frame = (struct ieee80211_hdr *) skb->data;
> +	struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;

Please only do "one type of change per patch".

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
