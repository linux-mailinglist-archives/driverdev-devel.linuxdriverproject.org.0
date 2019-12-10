Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 881CB11909E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 20:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0F4487C05;
	Tue, 10 Dec 2019 19:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvOhR34W18-3; Tue, 10 Dec 2019 19:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B071987BF1;
	Tue, 10 Dec 2019 19:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43CFC1BF2F2
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 19:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C2B822735
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 19:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rw81dlkViObw for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 19:31:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from emh06.mail.saunalahti.fi (emh06.mail.saunalahti.fi
 [62.142.5.116])
 by silver.osuosl.org (Postfix) with ESMTPS id CCA5D22786
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 19:31:57 +0000 (UTC)
Received: from darkstar.musicnaut.iki.fi (85-76-143-83-nat.elisa-mobile.fi
 [85.76.143.83])
 by emh06.mail.saunalahti.fi (Postfix) with ESMTP id 7D47230056;
 Tue, 10 Dec 2019 21:31:54 +0200 (EET)
Date: Tue, 10 Dec 2019 21:31:54 +0200
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: octeon-usb: delete the octeon usb host
 controller driver
Message-ID: <20191210193153.GB18225@darkstar.musicnaut.iki.fi>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <20191210091509.3546251-2-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210091509.3546251-2-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Sumit Pundir <pundirsumit11@gmail.com>, linux-kernel@vger.kernel.org,
 David Daney <ddaney.cavm@gmail.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Laura Lazzati <laura.lazzati.15@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Tue, Dec 10, 2019 at 10:15:09AM +0100, Greg Kroah-Hartman wrote:
> This driver was merged back in 2013 and shows no progress toward every
> being merged into the "correct" part of the kernel.

Do you mean all the patches since 2013 were "no progress"? Thanks.

> The code doesn't even build for anyone unless you have the specific
> hardware platform selected, so odds are it doesn't even work anymore.

I used it in production almost a decade with no issues with unpatched
mainline kernel. All reported issues were fixed. Last kernel I ran
was v5.3.

> Remove it for now and is someone comes along that has the hardware and
> is willing to fix it up, it can be reverted.

Probably the next one who tries it, should try add support in
dwc2. Originally the maintainer of that driver did not prefer this,
maybe the current one does not mind...

A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
