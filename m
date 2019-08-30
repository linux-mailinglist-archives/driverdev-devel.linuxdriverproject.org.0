Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C5A3AA8
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 17:43:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B41A87EB1;
	Fri, 30 Aug 2019 15:43:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcEUdaTSxRNx; Fri, 30 Aug 2019 15:43:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CAAB87E8F;
	Fri, 30 Aug 2019 15:43:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6D4A1BF284
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B1A4587E8F
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vkLHMKKEdKmc for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 15:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D4D2C84317
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 15:43:21 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id o184so7930279wme.3
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 08:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hSPruanynkI2nxLpUzm3uL7IYac5dvQ3oQe3jl6VLFU=;
 b=nfnaCKLdbctQKQUkacHhaZsoiKIsJEgXtg5ZQt+aGp5XFQAijpASM1A5BmrlCejEQK
 kOn9FIrc5vpJ8YLaYL5eFAK6POudjWvd6F6UG2MjC9FsdgStYp/LLU4N80UDo9w+txIr
 ZGCd4rjnswWooLVkkdd044Q+cVTRymuE5uFn7bixg5CDB75cQTdTxkGKIGk7s3p0XF3C
 mW7IruyFo9/JeAeQbgl0gjnPxXc9pjhPpkWJN1bw8srfRh90bwbtmbH8FjhFG3ChGLHs
 WkPLgEhVf1WASqNOUcy7tq/HeiBFrg2VH8GJpxQjkFcM9jZuvT3w4VRgxoR1A6Ct88VY
 FewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hSPruanynkI2nxLpUzm3uL7IYac5dvQ3oQe3jl6VLFU=;
 b=C0zucEX5usqBJx0GjkmMjy+rxfaeiAZvwkcM9Ow4b0HBu7/TzcHqc2SzroS88wQV3z
 GwHXGqyyfMKekzF8Cttg0ov+x+tPhpdz4F4C5EFNxjZrBVAJVn7clQcEMxetcvjSjYPp
 34e3T3HJQGiMZUamOkvra7amUd6bOwCh1/u7OXNiUs9Bm+DKNHQ+a/nl4rwQPdfU8O9M
 FOZayQjuVCtGfxxUHnl3t38NqDhKHTkHfEACR8xAPWdmRLI3oF1IIO1+HsymBtXXQRoe
 FRYZwX+Nod3X30qjE+K41x7nkCVCpOGtn/pSJ0aZF0HXIrDTF8lraS8QtouVJf8d9b5l
 zRcw==
X-Gm-Message-State: APjAAAXRIQ7mtqoC9jzD8EOzmQ9QWpzX0+nSqxesivT2wRrj8jLU3/Lp
 Lyy6LBZCyhHNPf5kNruN35k=
X-Google-Smtp-Source: APXvYqzHRdHs4oKVvSRpy8X7yKHta2hE6g56Kl/oPBafz13i4AYYofq0MPcNwspxJ4vIBJRN+3KfyA==
X-Received: by 2002:a1c:3944:: with SMTP id g65mr19938452wma.68.1567179800378; 
 Fri, 30 Aug 2019 08:43:20 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id y3sm12403115wmg.2.2019.08.30.08.43.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 30 Aug 2019 08:43:19 -0700 (PDT)
Date: Fri, 30 Aug 2019 17:43:18 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830154318.ppggurnejlgtrly5@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <20190830154006.GB30863@infradead.org>
MIME-Version: 1.0
In-Reply-To: <20190830154006.GB30863@infradead.org>
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
Cc: devel@driverdev.osuosl.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1631062984879942641=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1631062984879942641==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="r4iv4rpxa6pvfbis"
Content-Disposition: inline


--r4iv4rpxa6pvfbis
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Friday 30 August 2019 08:40:06 Christoph Hellwig wrote:
> On Thu, Aug 29, 2019 at 10:56:31PM +0200, Pali Roh=C3=A1r wrote:
> > In my opinion, proper way should be to implement exFAT support into
> > existing fs/fat/ code instead of replacing whole vfat/msdosfs by this
> > new (now staging) fat implementation.
> >=20
> > In linux kernel we really do not need two different implementation of
> > VFAT32.
>=20
> Not only not useful, but having another one is actively harmful, as
> people might actually accidentally used it for classic fat.
>=20
> But what I'm really annoyed at is this whole culture of just dumping
> some crap into staging and hoping it'll sort itself out.  Which it
> won't.  We'll need a dedidcated developer spending some time on it
> and just get it into shape, and having it in staging does not help
> with that at all - it will get various random cleanup that could
> be trivially scripted, but that is rarely the main issue with any
> codebase.

Exactly. Somebody should take this code and work on it. Otherwise we can
say it is dead code and would happen same thing as with other staging
drivers -- ready to be removed.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--r4iv4rpxa6pvfbis
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXWlEFAAKCRCL8Mk9A+RD
UhoKAJ4vZsLuZYAJ6Er06ChAjCyn4WGWCACeLwf/3Q10nG7S6qqrLYFhUaO8WJQ=
=F393
-----END PGP SIGNATURE-----

--r4iv4rpxa6pvfbis--

--===============1631062984879942641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1631062984879942641==--
