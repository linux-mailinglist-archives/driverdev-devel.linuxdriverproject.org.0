Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F651CC303
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 19:07:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE6F7888B9;
	Sat,  9 May 2020 17:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ORoXWYLrYvZ; Sat,  9 May 2020 17:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CA018887D;
	Sat,  9 May 2020 17:07:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97B371BF2AE
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 17:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 949F986B1C
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 17:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eG-BrEYGg8il for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 17:07:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B70986962
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 17:07:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D99832184D;
 Sat,  9 May 2020 17:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589044036;
 bh=WvWUoFR5RjANxd1qiacraQ/PkwG98wt/odgEnXsQW5Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UQKV7mHmq9gT1QqVjvt3oc3CUGzez8CokyYeKbs5VYNWKZvZXSz0iFxtw8QMvp/7d
 bokWfV/jImMT/a3UDiOFNUNHC5XhZFZPjBHuynqPUJeZs0z7IicHjdeBGOl278koGS
 FwEfTeFtRqL04t2ID8siOrIIF6+hI+jdHIVuyxTs=
Date: Sat, 9 May 2020 19:07:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matej Dujava <mdujava@kocurkovo.cz>
Subject: Re: [PATCH] staging: vt6656: vt6655: clean Makefiles
Message-ID: <20200509170714.GC2482887@kroah.com>
References: <1589015247-738-1-git-send-email-mdujava@kocurkovo.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589015247-738-1-git-send-email-mdujava@kocurkovo.cz>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 09, 2020 at 11:07:27AM +0200, Matej Dujava wrote:
> This patch is removing CFLAGS that are defining flags that are not used.

You are also modifying the indentation and moving lines around for no
reason :(

Please only do one thing for a patch, and always describe everything you
do in the changelog text.

Can you fix this up and send a v2?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
