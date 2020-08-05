Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A677A23C88E
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 11:04:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3942A8679B;
	Wed,  5 Aug 2020 09:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eknpVFlgPX3k; Wed,  5 Aug 2020 09:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE725866E5;
	Wed,  5 Aug 2020 09:04:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE3641BF3D9
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 09:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A12AC877D1
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 09:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXypfhoAzhla for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 09:04:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24A25877B4
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 09:04:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5078D22B40;
 Wed,  5 Aug 2020 09:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596618249;
 bh=QPLG5ZgVtxfAcgI2IMlcl38QZKfiBDdcZJQT1y1XdjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AzikWSLYGBy/+9k8QenQ0XIlFAllIQ9BBNHnVaNr6JA3sBITKOG1GBNLkVqyLOTJ6
 th7OGbBLVepzILFrgnkP5iMs4SesbLqd17YOd8Q3xq7Z5QVR48u/6WGC074q8NJeoG
 FTugKa72K/lxQxDegw4oXIJQSI1IJvYho+AC5vDM=
Date: Wed, 5 Aug 2020 11:04:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tomer Samara <tomersamara98@gmail.com>
Subject: Re: [PATCH] staging: wfx: refactor to avoid duplication at hif_tx.c
Message-ID: <20200805090425.GA655071@kroah.com>
References: <20200805085608.GA100079@tsnow>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805085608.GA100079@tsnow>
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

On Wed, Aug 05, 2020 at 11:56:08AM +0300, Tomer Samara wrote:
> Add functions wfx_full_send(), wfx_full_send_no_reply_async(),
> wfx_full_send_no_reply() and wfx_full_send_no_reply_free()
> which works as follow:
> wfx_full_send() - simple wrapper for both wfx_fill_header()
>                   and wfx_cmd_send().
> wfx_full_send_no_reply_async() - wrapper for both but with
>                                  NULL as reply and size zero.
> wfx_full_send_no_reply() - same as wfx_full_send_no_reply_async()
>                            but with false async value
> wfx_full_send_no_reply_free() - same as wfx_full_send_no_reply()
>                                 but also free the struct hif_msg.

Please only do one-thing-per-patch.  Why shouldn't this be a 4 patch
series?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
