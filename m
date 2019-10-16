Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1B0D9771
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 18:32:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5F7F20370;
	Wed, 16 Oct 2019 16:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xo6hSgdpIGko; Wed, 16 Oct 2019 16:32:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93A58203BB;
	Wed, 16 Oct 2019 16:32:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE6141BF30E
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9071864B8
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StQKXQuZaHrM for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 16:32:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7CFF887872
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 16:32:34 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id v8so28835290wrt.2
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 09:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1IL8KzN4eED7MJkMylgKBjULCBhCLDg5VeoFVt5LveI=;
 b=eCND4nsOyqYAezMnMU37cySOpp5nLngSuyJa0Z+cWB+wLpxW+4pdPfI3lVITMQhUVb
 +0XD4rsNM8jrLIZUuXL5R66YYOrsXgThdlFMqP7TrTVsOOaHF/Tc9nOv+ILcB8NCA2d5
 iZG0V4qY5LNwMj0a+sEydSHjRWnJRbbTDX4c8b5LveFIwo4gozQ52Ce1I/W+Fbpiywq9
 dOkRnBds7Op7Yrqqj9w2s/fcaIAs6+vYFGZtVeJEKm3PEie841QFnky0wILH1UUf++oN
 Jw+Me7HTdZBwbIONgu1mtUZ8YMv7sl+NlXYjN8Uphs74vxoqB6BQXq2nUuJkDCFsRld9
 Bbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1IL8KzN4eED7MJkMylgKBjULCBhCLDg5VeoFVt5LveI=;
 b=cPKCItPOjwy2ABNdh8O98TE7LtpUAHOfKRIZZ+ViGf/S9cpihfcNlAzf/keBzpMhaD
 aVaMuMniIGHzKp/1i11EMPnCr7G4GmPqgS/fVh/yAK0YRBQPhk/OxOvT1b3rhWStemt6
 aQkQ69H/vqoPUCRqlU7lOZrDmfv00v5Z0KpwaQFOi+SKo7KK1bsruQQB3GVqid9Xi4GM
 c2VQI+gcmaL7xL/3kerahxcuyOfftbfHvkcys8J5ukPYWr4BCV9PJXiTHGfV3KpQHMWp
 4+ugq4WqesjbyAnLgbyV9E6DSj1hU8OjK/mo0Bt7flg3tz/LuAIBwfe+O6FQ+2M/PSbK
 mFkw==
X-Gm-Message-State: APjAAAXSM+Q9DV35J9MtzDjreBgnLqpLn6Y4CyCWZEdnjy4W9oHyiUHp
 3Jp7y5D1drJlD9PWFbN8VYE=
X-Google-Smtp-Source: APXvYqxuH63ig5G6nfHASUQgTWm3NGdPCshxv4cee3gvvED+PjjhRI5a0HIWN82XSTyHvy9sVMp4Eg==
X-Received: by 2002:adf:ed84:: with SMTP id c4mr3352316wro.333.1571243552893; 
 Wed, 16 Oct 2019 09:32:32 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id v11sm2970044wml.30.2019.10.16.09.32.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 09:32:31 -0700 (PDT)
Date: Wed, 16 Oct 2019 18:32:31 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191016163231.dgvurzdqcifunw35@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016162211.GA505532@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20191016162211.GA505532@kroah.com>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Christoph Hellwig <hch@infradead.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5270627335578044708=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5270627335578044708==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uulki3czcfzmvzao"
Content-Disposition: inline


--uulki3czcfzmvzao
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wednesday 16 October 2019 09:22:11 Greg Kroah-Hartman wrote:
> On Wed, Oct 16, 2019 at 06:03:49PM +0200, Pali Roh=C3=A1r wrote:
> > > Can I assume you will be implementing TexFAT support once the spec is
> > > available?
> >=20
> > I cannot promise that I would implement something which I do not know
> > how is working... It depends on how complicated TexFAT is and also how
> > future exfat support in kernel would look like.
> >=20
> > But I'm interesting in implementing it.
>=20
> What devices need TexFAT?  I thought it the old devices that used it are
> long obsolete and gone.  How is this feature going to be tested/used?

Hi Greg! Per 3.1.16 of exFAT specification [1], TexFAT extension is the
only way how to use more FAT tables, like in FAT32 (where you normally
have two FATs). Secondary FAT table can be used e.g. for redundancy or
data recovery. For FAT32 volumes, e.g. fsck.fat uses secondary FAT table
when first one is corrupted.

Usage of just one FAT table in exFAT is just step backward from FAT32 as
secondary FAT table is sometimes the only way how to recover broken FAT
fs. So I do not think that exFAT is for old devices, but rather
non-exFAT is for old devices. Modern filesystems have journal or other
technique to do (fast|some) recovery, exFAT has nothing.

And how is this feature going to be used? That depends on specification.

[1] - https://docs.microsoft.com/en-us/windows/win32/fileio/exfat-specifica=
tion#3116-numberoffats-field

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--uulki3czcfzmvzao
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXadGHQAKCRCL8Mk9A+RD
Ukm6AJ9ab4GclmcB/R83hw/wIqInUfSArwCeLEPDX7XQcg6sMkgXJ6qqa0gQCcE=
=Ni+T
-----END PGP SIGNATURE-----

--uulki3czcfzmvzao--

--===============5270627335578044708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5270627335578044708==--
