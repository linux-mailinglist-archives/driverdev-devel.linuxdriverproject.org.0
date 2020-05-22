Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A2F1DE7BD
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 15:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C9D7325C6F;
	Fri, 22 May 2020 13:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAfLJZvinf31; Fri, 22 May 2020 13:10:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F0D12002A;
	Fri, 22 May 2020 13:10:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 764351BF4D7
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 13:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7100388A88
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 13:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Njn2Ue1vIPaU for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 13:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E774888A29
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 13:10:35 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id a2so12926782ejb.10
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 06:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Hk4GwLMVMnvwqnIYi4hEaxsboqLPjih3pElrKq31lEI=;
 b=A0WEyQ1qRrTt0DUJ81/Ki7jU4ufZ/FZub6XaRr8d5smd6+R0I+xfGgwiizJM3RdeLl
 1tPMOlm9M1bCE5a30PRHlZhmwLQp2rLSUq77fJjTcsvKk1CSVVLqkbJVTq5kKVA29hJq
 Xmq731P0AHbrkf2oZOrDKnIO5O8qoxh8nEjVgWDshbPIGmjTZ4JKFeBBMWOe+HXaGuIZ
 VWUix6N/fW5VaU9PLXt6bd1WFc2qdobH0U2CvrjyZouPjK5uL2echZSvpcDMml2dTZuZ
 dD4MyyB1hgsHMPB03wfuvUDe0Qonsge3nm1kmSHRdHXo4Ui5xUTaxmytUZsTkDV9/vmS
 QWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hk4GwLMVMnvwqnIYi4hEaxsboqLPjih3pElrKq31lEI=;
 b=ea/bUow7T9a/9o+U5In7vKZZjqthkXJrgaTh6s9OTIh/ZNwiOMfhmFNUSwcFIQrI7p
 nTawR36oqvec2VAC4HczGn7LUYFflZSyxMw7Nh9O/eo3CD7KW5zrfpFfz9YUp/fxi/hh
 u0lraPFdcfxfIuL78pbsx1mk+rF5KJ0UdDQQpbHCXhgxpOUNr69DRqZmJHSYUiJLDbYx
 RUGEhLgdgPdv3VxO8H62m9/mOUv6h1KYmo18bxI1Vl0vBBwZbvAeQJifUJlXRzSbep2V
 awLezYg1kzUb9pGn4NJQ+EPJizAHIr1Mpdv/ayqCYwTvmxhBK5ZgmxVxVOmIxxH+QEkI
 Soug==
X-Gm-Message-State: AOAM532tO+k4LGmBzyf/flkdgYSC3ww+kb+rDef1lqmHw4gzaB0kJOsJ
 foj1GhU5NeyMwUBwEgoGI4s=
X-Google-Smtp-Source: ABdhPJwROVKIP0VHXBh8rpCsNm7V2yHv1jt3d6k+GGS+kHXVLfw8XrF0zpjhNQy4vnW8PT0jrnEXAA==
X-Received: by 2002:a17:906:1751:: with SMTP id
 d17mr8555608eje.314.1590153034209; 
 Fri, 22 May 2020 06:10:34 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id pv14sm7766549ejb.111.2020.05.22.06.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 06:10:32 -0700 (PDT)
Date: Fri, 22 May 2020 15:10:31 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: Re: [PATCH] media: staging: tegra-vde: fix runtime pm imbalance
 on error
Message-ID: <20200522131031.GL2163848@ulmo>
References: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
 <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
 <20200520150230.GC30374@kadam>
 <2a46539d.b977f.1723553aa81.Coremail.dinghao.liu@zju.edu.cn>
 <20200521091505.GF30374@kadam>
 <CAJZ5v0irLayBUPRWNT1tcZivz9inS1YbUgGj5WXvucLKKwRQAw@mail.gmail.com>
 <20200521173901.GA22310@kadam>
MIME-Version: 1.0
In-Reply-To: <20200521173901.GA22310@kadam>
User-Agent: Mutt/1.13.1 (2019-12-14)
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
Cc: devel@driverdev.osuosl.org, Len Brown <len.brown@intel.com>,
 Pavel Machek <pavel@ucw.cz>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra <linux-tegra@vger.kernel.org>, dinghao.liu@zju.edu.cn,
 Kangjie Lu <kjlu@umn.edu>, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5317887719744701017=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5317887719744701017==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y+Z5jE7Arku/2GrR"
Content-Disposition: inline


--Y+Z5jE7Arku/2GrR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2020 at 08:39:02PM +0300, Dan Carpenter wrote:
> On Thu, May 21, 2020 at 05:22:05PM +0200, Rafael J. Wysocki wrote:
> > On Thu, May 21, 2020 at 11:15 AM Dan Carpenter <dan.carpenter@oracle.co=
m> wrote:
> > >
> > > On Thu, May 21, 2020 at 11:42:55AM +0800, dinghao.liu@zju.edu.cn wrot=
e:
> > > > Hi, Dan,
> > > >
> > > > I agree the best solution is to fix __pm_runtime_resume(). But ther=
e are also
> > > > many cases that assume pm_runtime_get_sync() will change PM usage
> > > > counter on error. According to my static analysis results, the numb=
er of these
> > > > "right" cases are larger. Adjusting __pm_runtime_resume() directly =
will introduce
> > > > more new bugs. Therefore I think we should resolve the "bug" cases =
individually.
> > > >
> > >
> > > That's why I was saying that we may need to introduce a new replaceme=
nt
> > > function for pm_runtime_get_sync() that works as expected.
> > >
> > > There is no reason why we have to live with the old behavior.
> >=20
> > What exactly do you mean by "the old behavior"?
>=20
> I'm suggesting we leave pm_runtime_get_sync() alone but we add a new
> function which called pm_runtime_get_sync_resume() which does something
> like this:
>=20
> static inline int pm_runtime_get_sync_resume(struct device *dev)
> {
> 	int ret;
>=20
> 	ret =3D __pm_runtime_resume(dev, RPM_GET_PUT);
> 	if (ret < 0) {
> 		pm_runtime_put(dev);
> 		return ret;
> 	}
> 	return 0;
> }
>=20
> I'm not sure if pm_runtime_put() is the correct thing to do?  The other
> thing is that this always returns zero on success.  I don't know that
> drivers ever care to differentiate between one and zero returns.
>=20
> Then if any of the caller expect that behavior we update them to use the
> new function.

Does that really have many benefits, though? I understand that this
would perhaps be easier to use because it is more in line with how other
functions operate. On the other hand, in some cases you may want to call
a different version of pm_runtime_put() on failure, as discussed in
other threads.

Even ignoring that issue, any existing callsites that are leaking the
reference would have to be updated to call the new function, which would
be pretty much the same amount of work as updating the callsites to fix
the leak, right?

So if instead we just fix up the leaks, we might have a case of an API
that doesn't work as some of us (myself included) expected it, but at
least it would be consistent. If we add another variant things become
fragmented and therefore even more complicated to use and review.

Thierry

--Y+Z5jE7Arku/2GrR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7Hz0cACgkQ3SOs138+
s6HxAA/+Jf+WXQ81UWPgW24S+RQIGF0F66TdNi41pg8dl0cb+VNnq0oSDNXEdJDY
kevdqiaT0YUle8J9lPe0XdughDb1W3jznE4tWTE2N9/CtVT7Y7sv3q3hOOCaiL5n
lXxTqamxTwV6/0Dqrixm7koNRJZ0efsCtsM/t5mctwdqYrWxoTgO/BOqKBFF8Ect
1jfSeQKl7nwamPq9giB0AQ6V1d6QbXpJDYMtlpjuSJ3aLPe6JPYdogU0g+kXc+Uj
ogGpOFl3MUTxyN0f6IktiGnHOOVWxkgHs9pj7hk7jEjBXYO+6oFx6GTs6RoxhQQN
t1jcT4XdRjB5QvY/otwKCzwO8gtChU2bCUVJuCyilxEibyRiFhOW7fTXj3Zw7HZv
E0uun8P78IkpZPHTDrKSG88BCWk6ECFFhATYpWdK02UlW6VHmjem9qeSPVQ6VwSy
gaJ4dnsz8ySBcAoRimsyFduOJrSnAv+BtqIAdBcgsIbjxw8cLoYe76NHGdzoMQvN
lB/kVz42oVJJvq+nshPEU/QeJ1YDLpxMgYLxaUn5uUFUDeRr9orZB9nWgKj3LCIx
wD2qNkN2lcL0fbDMv/V4h8luY1wzimIt2LD3BoChO6Ij9eDaO1ZSPNwRcXHfeXF1
+n4n0rdxM4+dpBvg+/ipy1xIH6qOBD7v7GfLbiC/qyvXKVMnyH8=
=NURF
-----END PGP SIGNATURE-----

--Y+Z5jE7Arku/2GrR--

--===============5317887719744701017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5317887719744701017==--
