Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5D23A4F5
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 13:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C90985DF1;
	Sun,  9 Jun 2019 11:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SupabocaLBw; Sun,  9 Jun 2019 11:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03FE2857CB;
	Sun,  9 Jun 2019 11:01:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47B6C1BF3B8
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:01:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 453798754B
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1QFxo0Wu-PRW for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 11:01:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DFEB987541
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 11:01:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 420272083D;
 Sun,  9 Jun 2019 11:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560078078;
 bh=4yCqDJ6gnHMOGHmX6Tj7HsB2ULZ8HyC9XSpyPlZH4I0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DiF2h4EF+q1VatqeNNr06wWGkVwjUzpfSQpb1dwlJhdSr5IoS5j0usJ76lShqaL70
 7T/PF99a+BRVtuv52+XIJxsGjywPhetr3EmRbnUwBOFXw+cQ9jZutFcQsQJyjdxKAA
 zlZX0cAgEm2RLyZ73FcQdaBajpx1BEa9V1wPfYmo=
Date: Sun, 9 Jun 2019 13:01:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix indentation issues
Message-ID: <20190609110116.GC30671@kroah.com>
References: <20190609053741.GA12637@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190609053741.GA12637@hari-Inspiron-1545>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: Hans de Goede <hdegoede@redhat.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 09, 2019 at 11:07:41AM +0530, Hariprasad Kelam wrote:
> fix below issues reported by checkpatch
> 
> CHECK: Please don't use multiple blank lines
> WARNING: space prohibited between function name and open parenthesis '('
> +void _rtw_open_pktfile (_pkt *pktptr, struct pkt_file *pfile)
> WARNING: space prohibited before semicolon
> WARNING: space prohibited between function name and open parenthesis '('
> CHECK: spaces preferred around that '-' (ctx:VxV)
> CHECK: Comparison to NULL could be written "!pxmitbuf->pallocated_buf"
> CHECK: spaces preferred around that '*' (ctx:VxV)
> CHECK: spaces preferred around that '/' (ctx:VxV)
> WARNING: Missing a blank line after declarations
> WARNING: braces {} are not necessary for single statement blocks
> CHECK: spaces preferred around that '/' (ctx:VxV)
> CHECK: Using comparison to true is error prone
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

That is a lot of different issues trying to be fixed in one patch.
Please break this up into "one logical type of fix per patch" and make a
patch series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
