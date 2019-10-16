Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70701D96FD
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 18:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BA2E86A3D;
	Wed, 16 Oct 2019 16:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4elEeEIdc20; Wed, 16 Oct 2019 16:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AD9C86A29;
	Wed, 16 Oct 2019 16:20:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B24191BF30E
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A78E6878A0
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhZgdOXjOwsu for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 16:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8999E8789C
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 16:20:33 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 164AB20663;
 Wed, 16 Oct 2019 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571242833;
 bh=vx4fgYELxq41ZRHv+mEk07Z7avOAFxP0vU2ELzDIZVI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MbyZatxiqhOeO1jLIwdNcHHFaMvWJTKvHTpqkgEsErzVbBPJaG9L71cnrnd3w4YH0
 n8BOCQpXPr7Ew7/c5TWlTYogITb+qXI4xuLHdHrpzvONUT+cBIYVYuql96vVB543uG
 B1Y1YQtUX3+rojF+mdWtPeRglujbzVQVMlzy5zsk=
Date: Wed, 16 Oct 2019 12:20:32 -0400
From: Sasha Levin <sashal@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191016162032.GT31224@sasha-vm>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016160349.pwghlg566hh2o7id@pali>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 06:03:49PM +0200, Pali Roh=E1r wrote:
>On Wednesday 16 October 2019 10:31:13 Sasha Levin wrote:
>> On Wed, Oct 16, 2019 at 04:03:53PM +0200, Pali Roh=E1r wrote:
>> > On Friday 30 August 2019 09:56:47 Pali Roh=E1r wrote:
>> > > On Thursday 29 August 2019 19:35:06 Sasha Levin wrote:
>> > > > With regards to missing specs/docs/whatever - our main concern wit=
h this
>> > > > release was that we want full interoperability, which is why the s=
pec
>> > > > was made public as-is without modifications from what was used
>> > > > internally. There's no "secret sauce" that Microsoft is hiding her=
e.
>> > >
>> > > Ok, if it was just drop of "current version" of documentation then it
>> > > makes sense.
>> > >
>> > > > How about we give this spec/code time to get soaked and reviewed f=
or a
>> > > > bit, and if folks still feel (in a month or so?) that there are mi=
ssing
>> > > > bits of information related to exfat, I'll be happy to go back and=
 try
>> > > > to get them out as well.
>> >
>> > Hello Sasha!
>> >
>> > Now one month passed, so do you have some information when missing par=
ts
>> > of documentation like TexFAT would be released to public?
>>
>> Sure, I'll see if I can get an approval to open it up.
>
>Ok!
>
>> Can I assume you will be implementing TexFAT support once the spec is
>> available?
>
>I cannot promise that I would implement something which I do not know
>how is working... It depends on how complicated TexFAT is and also how
>future exfat support in kernel would look like.
>
>But I'm interesting in implementing it.

Sure, thank you. This is more to let me tell my management that "there
is someone who wants to work on it" rather than committing you to do
that work :)

-- =

Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
