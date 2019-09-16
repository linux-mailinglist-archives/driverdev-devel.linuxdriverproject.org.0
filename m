Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57752B41B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Sep 2019 22:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7274879CC;
	Mon, 16 Sep 2019 20:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yeXTFKL9XGJw; Mon, 16 Sep 2019 20:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC13387410;
	Mon, 16 Sep 2019 20:21:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DC411BF284
 for <devel@linuxdriverproject.org>; Mon, 16 Sep 2019 20:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A56784D24
 for <devel@linuxdriverproject.org>; Mon, 16 Sep 2019 20:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IkUisMoxzF9B for <devel@linuxdriverproject.org>;
 Mon, 16 Sep 2019 20:21:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B26F884D09
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 20:21:51 +0000 (UTC)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:2128:c4cd:3fb7:de37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 11CB5475;
 Mon, 16 Sep 2019 13:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1568665348; bh=Z5YoCFCZAbbuBK9ewLTtgYrPH/+8EchQI47YundeH+8=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=SHX4qgNtfYNvxvsJlX4nnnXDtfLWEB3uXQ+ND2Wsz3ECgEcA6gZGuJ5elaDheO6Gn
 mnJ29ca5QyPtF1wFL+qvhkWnz9lYW9d1y1M+vbKKgmfiveaEYDTu7UN8CBiqJXh5Pv
 6qnljnixXqnGzJfFcFAQymqD4bkuw2cdgThKyrir/YciqemCGj5uVP4SHITUKMNoAO
 c9ZZnFzLSdbB7HvKSTZgMtEL+suOtPawV1pMy0LAGhPYa4cvOmqtVWB3wTbTmfdNdQ
 /4O68a51/S7VQhriUM7Ko0kZMYf6Rt1qzTG3pNLjmnvJdS6xnIw9oR0LfnmhHQf0WX
 lcS5k9UFQaqrw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1i9xVL-0001BB-CN; Mon, 16 Sep 2019 13:21:47 -0700
Date: Mon, 16 Sep 2019 13:21:47 -0700
From: Gregory Nowak <greg@gregn.net>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190916202146.GA4145@gregn.net>
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
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.101.4 at vserver
X-Virus-Status: Clean
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
> 
> Samuel

Samuel, check the message that came to you directly, and it should be
there. The speakup list rejects attachments.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
