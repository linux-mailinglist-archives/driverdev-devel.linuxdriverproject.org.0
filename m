Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CEE639DE
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 19:04:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51A2486852;
	Tue,  9 Jul 2019 17:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uJ+Y2Y-As+vk; Tue,  9 Jul 2019 17:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A79888682C;
	Tue,  9 Jul 2019 17:04:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BF151BF576
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 17:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18622204EC
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 17:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIpHc3Iir9uK for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 17:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by silver.osuosl.org (Postfix) with ESMTPS id 09CFE20020
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 17:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 096998EE15F;
 Tue,  9 Jul 2019 10:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1562691846;
 bh=fHLhVNRZX5i6YF+IH8IXJ7fw4skeuYlN0YWtHKitwus=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=W7kYCPqCtFlGXoz2hjMn6mxlI6Ti/6X+VL/ND0W+iKJLVQA1ayOK1BoWPUqaYKWN0
 AocbxFxY4M944e7QsrqFmg/NSOnJwpmGlPuaUqn/3zDQchOyR3XUVeqO0iyuMCTaX9
 NWLylOImiLMNlOAY5I02yQcK9HGQ51uEkfLv13cQ=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id GiLem5l3gMZC; Tue,  9 Jul 2019 10:04:05 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 318A48EE247;
 Tue,  9 Jul 2019 10:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1562691830;
 bh=fHLhVNRZX5i6YF+IH8IXJ7fw4skeuYlN0YWtHKitwus=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=iCSfQvsWoZjCVRF6BGTJnzq63SLrHKIlcQp0PedW2Fuhbca5XUNu9VaNVQaeB9Id+
 Oj0U95zaf4O0lfio4/1APisTVW0zh4L6cCB7DCUpH+ku98okvS0tfI4CL6XGOvg5cH
 EgIC2YgJha012VT/zBCfy6ETAizeuxJPWXSMgdeE=
Message-ID: <1562691829.3362.68.camel@HansenPartnership.com>
Subject: Re: exfat filesystem
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <sashal@kernel.org>, Matthew Wilcox <willy@infradead.org>
Date: Tue, 09 Jul 2019 10:03:49 -0700
In-Reply-To: <20190709163744.GS10104@sasha-vm>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
 <20190709163744.GS10104@sasha-vm>
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
Cc: devel@driverdev.osuosl.org,
 Valdis =?UTF-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-07-09 at 12:37 -0400, Sasha Levin wrote:
> On Tue, Jul 09, 2019 at 08:48:34AM -0700, Matthew Wilcox wrote:
> > On Tue, Jul 09, 2019 at 11:30:39AM -0400, Theodore Ts'o wrote:
> > > On Tue, Jul 09, 2019 at 04:21:36AM -0700, Matthew Wilcox wrote:
> > > > How does
> > > > https://www.zdnet.com/article/microsoft-open-sources-its-entire
> > > > -patent-portfolio/
> > > > change your personal opinion?
> > > 
> > > According to SFC's legal analysis, Microsoft joining the OIN
> > > doesn't mean that the eXFAT patents are covered, unless
> > > *Microsoft* contributes the code to the Linux usptream
> > > kernel.  That's because the OIN is governed by the Linux System
> > > Definition, and until MS contributes code which covered by the
> > > exFAT patents, it doesn't count.
> > > 
> > > For more details:
> > > 
> > > https://sfconservancy.org/blog/2018/oct/10/microsoft-oin-exfat/
> > > 
> > > (This is not legal advice, and I am not a lawyer.)
> > 
> > Interesting analysis.  It seems to me that the correct forms would
> > be observed if someone suitably senior at Microsoft accepted the
> > work from Valdis and submitted it with their sign-off.  KY, how
> > about it?
> 
> Huh, that's really how this works? Let me talk with our lawyers to
> clear this up.

Not exactly, no.  A corporate signoff is useful evidence of intent to
bind patents, but a formal statement would be better and wouldn't
require a signoff.  The SFC analysis is also a bit lacking:
hypothetically if exfat became part of Linux, it would be covered by
the OIN legal definition which would place MS in an untenable position
with regard to the mutual defence pact if it still wanted to enforce
FAT patents against Linux.

> Would this mean, hypothetically, that if MS has claims against the
> kernel's scheduler for example, it can still assert them if no one
> from MS touched the code? And then they lose that ability if a MS
> employee adds a tiny fix in?

No.  You're already shipping a linux kernel, that makes Microsoft a
distributor meaning you're bound by the GPL express patent licences so
any patent Microsoft has on technology in the Linux kernel would be
unenforceable under that.  Plus as a member of OIN, you've guaranteed
not to sue for any patent that reads on the Linux System definition,
which is also a promise you can be held to.

James

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
