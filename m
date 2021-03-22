Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F411F344A7E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 17:07:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4357C40385;
	Mon, 22 Mar 2021 16:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVYkrp-mbsj4; Mon, 22 Mar 2021 16:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D90E402D2;
	Mon, 22 Mar 2021 16:07:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE9F71BF319
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAF3E4027F
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:06:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7z4wXgpdqoxL for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 16:06:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5396C4026B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 16:06:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 69269619B4;
 Mon, 22 Mar 2021 16:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616429216;
 bh=lv+hnh9RxxDgrwOwcye99nPeGlcWjoMWr4QPccdIbGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VY2AAfPkU1A5/ez5/A8DVda1Y/cxV5rZsU25AlQvEyOSszLIzKLUldUeOKqDKnf98
 8Gyd9XtYWR2//1lPn6i9Ny7QW+H0jJFs93EeyBxSmNZ+266ITlFOoXzeeZDMkEhSFJ
 fi4IYsaqMvN6NeLTe8h0HjWLGtRdtvYtG19rdNrY=
Date: Mon, 22 Mar 2021 17:06:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 11/11] staging: rtl8723bs: remove unnecessary extern in
 os_dep/sdio_intf.c
Message-ID: <YFjAi/Swxepg20q3@kroah.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <be21175bd3ce666110e507a3e577e1a053700a9c.1616422773.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be21175bd3ce666110e507a3e577e1a053700a9c.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 03:31:49PM +0100, Fabio Aiuto wrote:
> remove unnecessary extern.
> 
> The function is defined static in os_dep/os_intfs.c and used only once
> in the same file
> 
> remove also a blank line

That needs to go to a separate patch :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
