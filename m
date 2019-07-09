Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AC76391F
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 18:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAA2C85DF9;
	Tue,  9 Jul 2019 16:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6ciGIv_WLj0; Tue,  9 Jul 2019 16:15:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5734D84464;
	Tue,  9 Jul 2019 16:15:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 210731BF576
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D43984464
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BP_PtSxIppZN for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 16:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D36384376
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 16:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 1F3128EE24C;
 Tue,  9 Jul 2019 09:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1562688943;
 bh=JfZMiQaimhE8tVjgh946XQAbwaDQ14EcoZOpefa0Lbw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=D2jpmbvBni9SZpVSSd/xGo0DsC7Cwg2SKxoZuYQD/MxjLZwZFhwULDO2SEDCwW6KM
 Lw4i0/CW3PPwIXjLRp2wfOBxwKqRJ/OedEuqfy243/9naKpkb5uLNVELx4Gm5vYSbo
 D+aPk57XzEQfTZOEycwSamnxCEM5Mjx89jP91j4E=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id GDlUqWcQ81zh; Tue,  9 Jul 2019 09:15:42 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 431918EE15F;
 Tue,  9 Jul 2019 09:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1562688942;
 bh=JfZMiQaimhE8tVjgh946XQAbwaDQ14EcoZOpefa0Lbw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Xv/lRfCrzwwiTloyTSScopIfEE7eEPQbnqE02Yrzg1vgbqu65vAhM1mt85FCgCXP0
 5dx/nf7TZvFI0470536UhfLg6n/6WZDjr2c40GL8MYwAwO53TgLzQD9bKovgz4p33m
 2dBM7fZSaRzPz9We0OFM8/EXxo4yQudtQ3mIh5sg=
Message-ID: <1562688939.3362.47.camel@HansenPartnership.com>
Subject: Re: exfat filesystem
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>, Theodore Ts'o <tytso@mit.edu>, 
 Valdis =?UTF-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>, Alexander Viro
 <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kys@microsoft.com
Date: Tue, 09 Jul 2019 09:15:39 -0700
In-Reply-To: <20190709154834.GJ32320@bombadil.infradead.org>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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
Cc: Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-07-09 at 08:48 -0700, Matthew Wilcox wrote:
> On Tue, Jul 09, 2019 at 11:30:39AM -0400, Theodore Ts'o wrote:
> > On Tue, Jul 09, 2019 at 04:21:36AM -0700, Matthew Wilcox wrote:
> > > How does
> > > https://www.zdnet.com/article/microsoft-open-sources-its-entire-p
> > > atent-portfolio/
> > > change your personal opinion?
> > 
> > According to SFC's legal analysis, Microsoft joining the OIN
> > doesn't mean that the eXFAT patents are covered, unless *Microsoft*
> > contributes the code to the Linux usptream kernel.  That's because
> > the OIN is governed by the Linux System Definition, and until MS
> > contributes code which covered by the exFAT patents, it doesn't
> > count.
> > 
> > For more details:
> > 
> > https://sfconservancy.org/blog/2018/oct/10/microsoft-oin-exfat/
> > 
> > (This is not legal advice, and I am not a lawyer.)
> 
> Interesting analysis.  It seems to me that the correct forms would be
> observed if someone suitably senior at Microsoft accepted the work
> from Valdis and submitted it with their sign-off.  KY, how about it?

KY, if you need local help to convince anyone, I can do that ... I've
been deeply involved in patent issues with open source from the
community angle for a while and I'm used to talking to corporate
counsels.  Personally I think we could catch Microsoft in the implied
licence to the FAT patent simply by putting exfat in the kernel and
waiting for them to distribute it but I think it would benefit
Microsoft much more from a community perspective to make an open
donation of the FAT patents to Linux in much the same way they've
already done for UEFI.  If my analysis of the distribution situation is
correct, it would be making a virtue of a necessity anyway which is
always a useful business case argument.

James

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
