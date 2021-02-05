Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C76AE31079A
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A3842E10F;
	Fri,  5 Feb 2021 09:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWFUMwYzgrcQ; Fri,  5 Feb 2021 09:20:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C1EC200ED;
	Fri,  5 Feb 2021 09:20:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8E2C1BF383
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4B828731A
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MR5Zhkyhvcyj for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D244A87319
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:20:44 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id g15so3445540pjd.2
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 01:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=U6dWRiyrIbPA57yDDAstPw73ZY/dCSiR50oKzjx/H6g=;
 b=HSa2DSSMZS+e+scFXZu0NDFNcryeuP7Aes44vX2eicn4LJOzoDW4pE4magZtPxVZum
 XduPEeGVtNA0SLvbcmAkktQYYSJ6iNy9AFFRm0DCGM0qtc7RXLY6tkBBeBM4tCX9LKmS
 3hu4orweIDyaCxc42NDaPbVyQ3TZoHRHGK/PnemFRGbOO2QdjVKjq2UF0BqC1BTYW+VC
 xmPE+jZXWH6vkGgG+6WjhjacANCagFitJH4M6DKRoBnHiWOrMSvj8Z42wS2v966HMwB4
 fGvfsTR1vLFZkD9D6t2AZ0YkBu60DoKza1WUOnBrT8IHQKjCAAOqtmhdrSv0jRo1dT38
 FGlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=U6dWRiyrIbPA57yDDAstPw73ZY/dCSiR50oKzjx/H6g=;
 b=BZQKjApCNUgp0L9LfQdCn2hdh13KbEi4VS3HKrvtcSe/JZysv8lrFQ9hgkAxdMfQ+/
 nc7R1y4NB3K+Pd/NQ8G61B0kVyZgQShnysyUSJZ31ngJkbb4JvLZo2fEXZ+8OyDUXz3G
 YKWe1PpWPfhNBdEV0e2ZtttVrPmlv40QHoJBsjv52iqlqQwLvhoSbC2tQCN+FthZOdpm
 /KGT2wcwwU+V5JaYdwVSAN12fFWtMEm+HWy8oY+qvTu5oOTtzsg16WFr9hVpOAvQwzRh
 QQMNX3HwfRw9LhXSV1LDTPTNn3RZ4mSH/EHmIRbTBo5hdN2lyZX4lC8TSN8nEdTkvi03
 J8sA==
X-Gm-Message-State: AOAM5308djd7uXaUtcucpYRqw6n2/+K7P3Qo7VWv1LTpCDrhabvFAdDA
 EpayM8eCO/27jKwz3suLJ0c=
X-Google-Smtp-Source: ABdhPJwG1sbba1GA71Z/ZsoLV0AXeXnT/scifzyZ8m25RVsPHbBrHLFRH2dadY60zQ8rJtTGlKMxsg==
X-Received: by 2002:a17:90a:ba87:: with SMTP id
 t7mr3163335pjr.184.1612516844327; 
 Fri, 05 Feb 2021 01:20:44 -0800 (PST)
Received: from localhost ([103.200.106.135])
 by smtp.gmail.com with ESMTPSA id f15sm7768722pja.24.2021.02.05.01.20.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 01:20:43 -0800 (PST)
Date: Fri, 5 Feb 2021 14:50:32 +0530
From: Amey Narkhede <ameynarkhede02@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH] staging: qlge/qlge_main: Use min_t instead of min
Message-ID: <20210205092032.3cyymzvkp5nkiok3@archlinux>
References: <20210204215451.69928-1-ameynarkhede02@gmail.com>
 <20210204225844.GA431671@localhost>
MIME-Version: 1.0
In-Reply-To: <20210204225844.GA431671@localhost>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7516235440216448072=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7516235440216448072==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ueodtozohea73jpb"
Content-Disposition: inline


--ueodtozohea73jpb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 21/02/04 03:58PM, Nathan Chancellor wrote:
> On Fri, Feb 05, 2021 at 03:24:51AM +0530, ameynarkhede02@gmail.com wrote:
> > From: Amey Narkhede <ameynarkhede02@gmail.com>
> >
> > Use min_t instead of min function in qlge/qlge_main.c
> > Fixes following checkpatch.pl warning:
> > WARNING: min() should probably be min_t(int, MAX_CPUS, num_online_cpus())
> >
> > Signed-off-by: Amey Narkhede <ameynarkhede02@gmail.com>
> > ---
> >  drivers/staging/qlge/qlge_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> > index 402edaeff..29606d1eb 100644
> > --- a/drivers/staging/qlge/qlge_main.c
> > +++ b/drivers/staging/qlge/qlge_main.c
> > @@ -3938,7 +3938,7 @@ static int ql_configure_rings(struct ql_adapter *qdev)
> >  	int i;
> >  	struct rx_ring *rx_ring;
> >  	struct tx_ring *tx_ring;
> > -	int cpu_cnt = min(MAX_CPUS, (int)num_online_cpus());
> > +	int cpu_cnt = min_t(int, MAX_CPUS, (int)num_online_cpus());
>
> You should remove the cast on num_online_cpus() like checkpatch
> suggests. min_t adds the cast to int on both of the inputs for you.
>
Thanks. Fixed in v2

Amey

--ueodtozohea73jpb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6H5dELF7r4AXEH5hLybaax94G/8FAmAdDeAACgkQLybaax94
G//LZQ//YzFyc1n4oGkSaJGiso13StX9yKhtHGF4+kH2iRzT6Et4/eJTZwnOCuzn
XBMT0agwZFIBVlupnHi92uz8YwCPbmKmcLrWZAlO61XW65ITRjcdpw2N4GF/yOc8
uAr74KvXLMmX9CKACUvaRGkVvu1eKuy6bFAMvbKxNUgwI1NvMJzLc2h+sD8dMk5p
xPIG0wte9VXvbD9U+bWDeBdhlXKoAR8LPv/NmOy1NEzQ2Y33AXkGHenOQEPHGjGP
MmeMj3lIiBH1Tohu+NJ7Yk3VqCc3d4Rtei/WueQ8EDsAvO1dzKRhhhnzR8Edty+N
xGTNgSIL28HYOaW+3noiWhTbJHghmQp+3Nt3fdADU2avcs4l+WigfIm1gtlH/azT
sar5v1rzmRSsJE+spCOuQ6YqXOguwspcpkQij/uEhy4+ASk1Xc/BhPVhFzycgtI/
etH2+wqN591qPA3hvNqyVYfAb8ySC4iLYRYtBfxolNBZrIrLBiBiC4y4Jr+sfIlX
dMAlEcFW9T5zjmZTO66Jtcz7Iz1ZI2HDzy0dVjUJCwVJVE0h9yq9NLShHg0KNhcH
s+qS+RVbz6xPpxWKZkCkp5aLrk29t2HtTjPCy2++bGL40OskoF4QXfD/AGPhGj0G
oFCdFONyUMkMMDnoYqp8RhpSUnhwKNy1MYqvbCz2fhZv0vXAitk=
=r0ZT
-----END PGP SIGNATURE-----

--ueodtozohea73jpb--

--===============7516235440216448072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7516235440216448072==--
