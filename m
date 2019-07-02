Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040C25CD64
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 12:16:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B13687B08;
	Tue,  2 Jul 2019 10:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ooktAletFXCd; Tue,  2 Jul 2019 10:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 924FB877AE;
	Tue,  2 Jul 2019 10:16:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 398F31BF2F6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 10:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 34FE486B21
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 10:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yzG91K3H4Kvo
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 10:15:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C33EA869F8
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 10:15:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17CA820659;
 Tue,  2 Jul 2019 10:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562062558;
 bh=X93UNRCH2nGZbqU60AV2Y0cOP5iEY0LpXVAHtK+nDww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XOxOxnTkuHV9/4IFMgKREkRXYVQKIQVLiDcfZlR+3ULhhfrHtF0cZf8izsGgdFnds
 Gu32zAZsRzf+VAOIhrHmIPkmGi38FLrc0aWdvqD603X0NQcOXZCTOcMSQYQLo/uI8P
 n3c/mkdyfFcY+2TQa3c0ofX2IdYrX2I4aQP7edhk=
Date: Tue, 2 Jul 2019 12:15:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
Subject: Re: What device drivers for Linux does this project develop?
Message-ID: <20190702101554.GA18036@kroah.com>
References: <SG2PR01MB2141506D87714AA856B0DE1587F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
 <20190702092531.GA10692@kroah.com>
 <SG2PR01MB2141BC4ACDA0472CF4B5FBAE87F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SG2PR01MB2141BC4ACDA0472CF4B5FBAE87F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 02, 2019 at 09:29:47AM +0000, Turritopsis Dohrnii Teo En Ming wrote:
> My Hauppauge WinTV-HVR-935 HD Tri-Mode TV Stick DVB-T2 TV Tuner in
> Singapore is currently not supported by Linux.

Have you tried contacting the linux-media@vger.kernel.org mailing list
first?  The developers for those types of devices are there and should
be able to help you out.

good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
