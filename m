Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CC89870F
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 00:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E27A987FFB;
	Wed, 21 Aug 2019 22:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYtFsM9zlr4f; Wed, 21 Aug 2019 22:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A41487F48;
	Wed, 21 Aug 2019 22:22:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C88CD1BF5A4
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 22:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C230687F48
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 22:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SwCgFbYio-Ko for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 22:22:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F33D087EB8
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 22:22:11 +0000 (UTC)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:6ccc:a12a:8d2e:4f7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 702AE6E2;
 Wed, 21 Aug 2019 15:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1566426131; bh=144Ohs+i0Q11OCQeediSILhYP4LPx0bUH56q3gXaKrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nV+cWVQmXrejg6AE9X7t2ZjZb7Qj1BYYfkz6+ujg5sznVDYfC7KcswQg2O19hSbrM
 0kogOgMWe17p/voMqsZUMogjFXdls+VZWlH+RYfup/dOC1WlAgJ/XxlC7gA7rb02R3
 b4gNMLF+u8bej+jToajN7LDtLlUPSWa/d6u6+q5KuqAkecHVztniLeMhnm/lCspvlF
 7Xutc7YMcQnRBqrfbmdVMpb9wq0tH0x9fs+x9IwIUcGYvmqn0co8mp5COh5obE/CHP
 XnbRtJTwZRRyyedV412XyK+GFi7ceK5nT2wuaqkyYm2mGIV4JoPyXbhmSjPTdRmctl
 CG1I9Y50TEnnA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1i0YzZ-0001Up-I9; Wed, 21 Aug 2019 15:22:09 -0700
Date: Wed, 21 Aug 2019 15:22:09 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190821222209.GA4577@gregn.net>
References: <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Simon Dickson <simonhdickson@gmail.com>, linux-kernel@vger.kernel.org,
 John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 09:39:25AM -0700, Okash Khawaja wrote:
> Hi Greg N,
> 
> Would like to send this as a patch as Greg K-H suggested? If not, I
> can do that with your email in Authored-by: tag?
> 
> Thanks,
> Okash

Hi Okash and all,
feel free to submit the patch with my email in the Authored-by:
tag if that's OK. Thanks, and good luck on your presentation.

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
