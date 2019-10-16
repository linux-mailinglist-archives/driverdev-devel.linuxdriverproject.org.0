Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB66D9651
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 18:04:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C139E87865;
	Wed, 16 Oct 2019 16:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avEVcB6SdL+n; Wed, 16 Oct 2019 16:03:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 658AD87851;
	Wed, 16 Oct 2019 16:03:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34DAA1BF38B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E77C2333F
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mb9voNbEQnkz for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 16:03:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 23A2A203C7
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 16:03:54 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id y19so28733935wrd.3
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 09:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8tAzClyAvZpUSFyKG/Pk8kSHQbTC3odRRyjL8/E0mfM=;
 b=jFfug13xCcYliAOTf69yFMA+Mvkx2HeD406hyp5ifiYivCZzu8FiEQT3ZOpIA84Chh
 0FY/HX9TwYPGyTEeUFsmmggPMZkAeFiG7Mt4J+SLrc/qAi1T4SS424uou1WjRSTZ7EQQ
 Gbyp1NXVXQuh79XtuibNDc5/Ou8lTJw6yK2JcU1D8HG63Vqji3b5xuuZuL/Rq88D6CFR
 Wd3wCrt2IC68NbIpkNs9YfOTh5J1lfRbz/gPmizn3QI2zP5n4DcmmA+xp0UIxaw//Y0A
 +GGLOSekVHF5TjrTBJUknP9lKJsE2DHQyId85UBAjdqcEB0Z5M28/30pAlLX8aw3/OWp
 ZBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8tAzClyAvZpUSFyKG/Pk8kSHQbTC3odRRyjL8/E0mfM=;
 b=Ga3T1SopS7gTx+P2W1pslgyIcly/1M8031NFgnIZDZYooqwo+6kVF+9yFUdm28z06M
 B3yiNhkHbRXKUpfNvy5iIbLxUFUXdxDJe01KFszqS318kOECS5SDpU5cH0DSkMFedJbz
 Ubvw5z5EDhzeNT+xXti4idyOAh5C+PnE9XDmUGr+yiC7RUgqKxUe4u79zQH7LBzmhrAm
 ZxCVI4JJD2uGJyEoeWkDn3h4CdRG6TRDClWRQxkB2TIf3wT3lzV+ckW/UcpqjAln1JtJ
 2HQmTSX3bewacXaUGSvK5SzMkqhD4UkNolCuMDzfbkP9e8MnQ59V8gl54oijzOJQrol1
 Q5lg==
X-Gm-Message-State: APjAAAUCmSQVQx5oTPwHBbDux5JJy437HhvbqI/Ia514Zo7QnrU3P9I3
 +RqqLq1vUqdJo/qX6qGdCVA=
X-Google-Smtp-Source: APXvYqx2fq3WUjV1DN0JFZChxKVkSK4kwdX+hTuiRYccS4yHQC2WgV0minWbd47ga5S1YMqawMGn6g==
X-Received: by 2002:adf:c641:: with SMTP id u1mr3427669wrg.361.1571241832723; 
 Wed, 16 Oct 2019 09:03:52 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id p7sm2684570wma.34.2019.10.16.09.03.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 09:03:51 -0700 (PDT)
Date: Wed, 16 Oct 2019 18:03:49 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191016160349.pwghlg566hh2o7id@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
MIME-Version: 1.0
In-Reply-To: <20191016143113.GS31224@sasha-vm>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Content-Type: multipart/mixed; boundary="===============3189595666969579158=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3189595666969579158==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xtpjukghalsmqwao"
Content-Disposition: inline


--xtpjukghalsmqwao
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wednesday 16 October 2019 10:31:13 Sasha Levin wrote:
> On Wed, Oct 16, 2019 at 04:03:53PM +0200, Pali Roh=C3=A1r wrote:
> > On Friday 30 August 2019 09:56:47 Pali Roh=C3=A1r wrote:
> > > On Thursday 29 August 2019 19:35:06 Sasha Levin wrote:
> > > > With regards to missing specs/docs/whatever - our main concern with=
 this
> > > > release was that we want full interoperability, which is why the sp=
ec
> > > > was made public as-is without modifications from what was used
> > > > internally. There's no "secret sauce" that Microsoft is hiding here.
> > >=20
> > > Ok, if it was just drop of "current version" of documentation then it
> > > makes sense.
> > >=20
> > > > How about we give this spec/code time to get soaked and reviewed fo=
r a
> > > > bit, and if folks still feel (in a month or so?) that there are mis=
sing
> > > > bits of information related to exfat, I'll be happy to go back and =
try
> > > > to get them out as well.
> >=20
> > Hello Sasha!
> >=20
> > Now one month passed, so do you have some information when missing parts
> > of documentation like TexFAT would be released to public?
>=20
> Sure, I'll see if I can get an approval to open it up.

Ok!

> Can I assume you will be implementing TexFAT support once the spec is
> available?

I cannot promise that I would implement something which I do not know
how is working... It depends on how complicated TexFAT is and also how
future exfat support in kernel would look like.

But I'm interesting in implementing it.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--xtpjukghalsmqwao
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXac/ZAAKCRCL8Mk9A+RD
Up63AJ9RWDz74lfxmFMyPt68AQrr18x87wCfW3K+Im689OPplqjLk3mnz6YAHp0=
=8o6F
-----END PGP SIGNATURE-----

--xtpjukghalsmqwao--

--===============3189595666969579158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3189595666969579158==--
