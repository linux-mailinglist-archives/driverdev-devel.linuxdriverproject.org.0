Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A176345EF4
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 14:08:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3D6E4037E;
	Tue, 23 Mar 2021 13:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxUA5O3tpNJz; Tue, 23 Mar 2021 13:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B96B40381;
	Tue, 23 Mar 2021 13:08:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 479F11BF331
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 374FF402E0
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 98E1nU05AGOl for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 13:08:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7071402D1
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 13:08:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8FA56619B8;
 Tue, 23 Mar 2021 13:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616504919;
 bh=tD39tcRIJ10/gX0BkNZq+Tb2OQEH0T3v47HYVYUZ0r4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vDcyHQKTp4WIDk2jKQWP7QixXlPbWg7xkuJAwjYdyh3hTfzjdDF6owmcykrcdUj8J
 mxV6j4ocVgCwRgkMRzxKyuSjYxNgSq7WJR8bwPzRLZ8tXQZuiGv4mfPhB2Icl2lyG/
 O0qOG8i52RsF1dVmTrSAJnBPfUq8Bb9JFYxyz9m8=
Date: Tue, 23 Mar 2021 14:08:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH v2 0/9] fix extern declarations checkpatch issues
Message-ID: <YFnoVGOJQNtssYIV@kroah.com>
References: <YFjBHNkQFlFzZKpV@kroah.com>
 <cover.1616503354.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
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

On Tue, Mar 23, 2021 at 01:56:27PM +0100, Fabio Aiuto wrote:
> Fix extern declaration issues warned by checkpatch.

Nit, we have a new mailing list, you might want to use that now instead
of driverdev in the future, thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
