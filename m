Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B311A668F
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:56:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D85F885B5C;
	Mon, 13 Apr 2020 12:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOWQvRZlDZUf; Mon, 13 Apr 2020 12:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFD0D858B5;
	Mon, 13 Apr 2020 12:56:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAA701BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C792585ADF
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tf7pHAeXONwG for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:56:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23D83858B5
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:56:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F5D32073E;
 Mon, 13 Apr 2020 12:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782579;
 bh=pOHGZCZoW07Fu0ZaWxLsnPUSYtIXpjWkuH7RiI5DFEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UIyn+YvvNp3XP2ZY9H48InOqBSeOQz8L/OifYCLhKB6CyH2fpiKQS8af0VPcAUxBY
 xCeLHhNcvuBibTruRDfVyZC14nU96OLzB6p8nC9bntommQGDCvgJ6vtynQY8upow3q
 e91G7+4P+L3tt5Cn6PcfUMVuMw+OZ5QI5j14x1uE=
Date: Mon, 13 Apr 2020 14:56:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v2 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Message-ID: <20200413125616.GA3127208@kroah.com>
References: <20200411122610.7901-1-oscar.carter@gmx.com>
 <20200411122610.7901-2-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411122610.7901-2-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 11, 2020 at 02:26:09PM +0200, Oscar Carter wrote:
> Create a constant array with the values of the "phy->signal" for every
> rate. Remove all "phy->signal" assignments inside the switch statement
> and replace these with a single reading from the new vnt_phy_signal
> array.
> 
> The constant array can be of one dimension because the OR mask with
> BIT(3) or BIT(4) allow obtain a second value according to the rate,
> the preamble_type and the pkt_type.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c | 105 ++++++++----------------------
>  1 file changed, 26 insertions(+), 79 deletions(-)

This series did not apply to my tree, please rebase and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
