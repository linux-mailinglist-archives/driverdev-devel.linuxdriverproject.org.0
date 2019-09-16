Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE5B3C41
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Sep 2019 16:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C33B2860D1;
	Mon, 16 Sep 2019 14:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QfMtnWwYCKJM; Mon, 16 Sep 2019 14:11:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFC9A860E1;
	Mon, 16 Sep 2019 14:11:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 464151BF369
 for <devel@linuxdriverproject.org>; Mon, 16 Sep 2019 14:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4287A860D1
 for <devel@linuxdriverproject.org>; Mon, 16 Sep 2019 14:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfHd3uMe0Vle for <devel@linuxdriverproject.org>;
 Mon, 16 Sep 2019 14:11:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1E2685DB1
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 14:11:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AC2020650;
 Mon, 16 Sep 2019 14:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568643062;
 bh=KnemdeMyQ/2j7M+jgLtO0ojPQamllSV0Dtziui3+UIk=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=FYl2FbXUd3XNdfiDv9+MABfCYTEIbQo1DYWseaM8p2AI+FMuyNAAFVA70XAgzBkVb
 uEzhheNYmByMDbz2oVQfcTLaPHNQNl1+Ln+IipsMjD56UUIpJtZrw4cnhXhQNJD5Me
 ZfwGd5VNyC377vISrG0O5RcYGxaF4FaXZU5mKcqQ=
Date: Mon, 16 Sep 2019 16:11:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 Gregory Nowak <greg@gregn.net>, linux-kernel@vger.kernel.org,
 John Covici <covici@ccs.covici.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190916141100.GA1595107@kroah.com>
References: <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
 <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
 <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
 <20190916134727.4gi6rvz4sm6znrqc@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916134727.4gi6rvz4sm6znrqc@function>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 16, 2019 at 03:47:28PM +0200, Samuel Thibault wrote:
> Okash Khawaja, le dim. 15 sept. 2019 19:41:30 +0100, a ecrit:
> > I have attached the descriptions.
> 
> Attachment is missing :)

I saw it :)

Anyway, please put the Description: lines without a blank after that,
with the description text starting on that same line.

thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
