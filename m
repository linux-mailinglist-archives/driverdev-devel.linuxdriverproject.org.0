Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A38A9AD20E
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 04:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F89F85546;
	Mon,  9 Sep 2019 02:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIlTKLwtyQS6; Mon,  9 Sep 2019 02:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 965B585124;
	Mon,  9 Sep 2019 02:55:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 343861BF2FC
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 02:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3105685087
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 02:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zv_nMTAQlEpp for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 02:55:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20C3185085
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 02:55:38 +0000 (UTC)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:25fc:7f29:f51b:876c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 056412129;
 Sun,  8 Sep 2019 19:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1567997758; bh=yasw5GiTAHxfDIbfiK6YMsktGcS73mmCaajaZVY6UW8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BlfG1xldAPhqEcm9W1RU9XyiH6SPlhwbH276UlDv1uqGeXf06uo4UrABs6bO8DTkF
 P5gznjkvDbIya4pp1GtQTkTXhObelN6wgOVU9qddnHitVMns7USlB38fKLTdMCccoC
 fA7nwYuCUpgOckYROartOU+iyEWQKtM8tyHS6zpAc2ZX+XaseBabZdeTtYjnsk80BR
 +7raSF7MAACjoVTU5f5J4BEexH2IW2a0uLInU5Q0nUkMuT28uJx/GJ5qbOn5PdU6Hy
 mCH5XhF73LiyvcKRgoLJYJJDs6lZqRy1ixz9fo9QN2oO9Dc4lzkpeCwcPGMDWvw3Pb
 zja79zeP/exRA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1i79oz-0001P2-Qj; Sun, 08 Sep 2019 19:54:29 -0700
Date: Sun, 8 Sep 2019 19:54:29 -0700
From: Gregory Nowak <greg@gregn.net>
To: Okash Khawaja <okash.khawaja@gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190909025429.GA4144@gregn.net>
References: <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.100.3 at vserver
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
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 10:43:02AM +0100, Okash Khawaja wrote:
> Sorry, I have only now got round to working on this. It's not complete
> yet but I have assimilated the feedback and converted subjective
> phrases, like "I think..." into objective statements or put them in
> TODO: so that someone else may verify. I have attached it to this
> email.

I think bleeps needs a TODO, since we don't know what values it accepts, or
what difference those values make. Also, to keep things uniform, we
should replace my "don't know" for trigger_time with a TODO. Looks
good to me otherwise. Thanks.

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
