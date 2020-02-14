Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C325815F74F
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 21:02:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BC8787848;
	Fri, 14 Feb 2020 20:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FQpcCMOJsUjn; Fri, 14 Feb 2020 20:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5471887829;
	Fri, 14 Feb 2020 20:02:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 574BF1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 20:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F743882DD
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 20:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jXIIyJxZTcIH for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 20:02:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD027882FB
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 20:02:14 +0000 (UTC)
Received: from localhost (unknown [12.246.51.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E25C2465D;
 Fri, 14 Feb 2020 20:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581710533;
 bh=iKkjnAjK2qRuw6EPVeGwQLbPNxV16s5T5iR1HhE3JOc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YDGLP3c/zic7UDxjcou+8zuUSL9tozcKucWgYu4CV6lZUKjf1pj7HTo3kFG/jLGXV
 GhSASbADLjT46cHWpBFKSrizQmeqa+5hCxd+5Gp5fdM3jTBFoJF+FgE68rl9U/9/KD
 qn7svYMI/ouOjLaiqeW7iuntd8VN915HkUdrj4o4=
Date: Fri, 14 Feb 2020 08:18:10 -0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH v2 1/2] staging: exfat: remove DOSNAMEs.
Message-ID: <20200214161810.GA3964830@kroah.com>
References: <20200214033140.72339-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214033140.72339-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 14, 2020 at 12:31:39PM +0900, Tetsuhiro Kohada wrote:
> remove 'dos_name','ShortName' and related definitions.
> 
> 'dos_name' and 'ShortName' are definitions before VFAT.
> These are never used in exFAT.
> 
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> ---
> Changes in v2:
> - Rebase to linux-next-next-20200213.

I think you might need to rebase again, this patch doesn't apply at all
to my tree :(

sorry,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
