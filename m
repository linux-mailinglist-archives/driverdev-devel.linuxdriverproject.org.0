Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28EF33085
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 15:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 823A986370;
	Mon,  3 Jun 2019 13:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GAGn26btDYbm; Mon,  3 Jun 2019 13:04:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1557F85B29;
	Mon,  3 Jun 2019 13:04:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B022B1BF4D6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA5DD85BC0
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrEzrRzU-PQn for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 13:04:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 35E5184AF9
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 13:04:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B23327FCE;
 Mon,  3 Jun 2019 13:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559567081;
 bh=5o50LdHm3nR94Xxp/EevvTYgj831Yo8VmYlaVsbg47w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nHYsLOa1+niQjcFrjsnZT8EygUoVc8Nsv4c4oqFFgYUZ2SUlcmxk2Sy1puqQfMkK0
 1Kanun8sHE3WY9gFz6g4Y5WfpgyHvipjQK2OmuCLPi7sLiKZWyr1RBrAregltfBzt8
 SblmkUHUu+NKoTX1nlF8yo2OJB9LXko+1NFDY9Jo=
Date: Mon, 3 Jun 2019 15:04:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?M=FCller?= <muellerch-privat@web.de>
Subject: Re: [PATCH 1/3] drivers/staging/rtl8192u: Reformat comments
Message-ID: <20190603130437.GA30732@kroah.com>
References: <20190603122104.2564-1-muellerch-privat@web.de>
 <20190603122104.2564-2-muellerch-privat@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603122104.2564-2-muellerch-privat@web.de>
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 03, 2019 at 02:21:02PM +0200, Christian M=FCller wrote:
> From: Felix Trommer <felix.trommer@hotmail.de>
> =

> Replace C99-Style comments with C89-Style comments.

What does that mean?

>  		if (MaxChnlNum >=3D pTriple->first_channel) {
> -			/* It is not in a monotonically increasing order, so
> +			/*
> +			 * It is not in a monotonically increasing order, so
>  			 * stop processing.
>  			 */

Those are both /* */ style comments.  Where in the C99 or C89 spec does
it say anything about this type of change?

Are you sure you are not getting confused about // for a comment marker
in C99 which is not in C89?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
