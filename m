Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8177234258
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 11:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6765886890;
	Fri, 31 Jul 2020 09:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6SdOuiOcdoYf; Fri, 31 Jul 2020 09:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B20B0867F6;
	Fri, 31 Jul 2020 09:20:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4BC1BF846
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 09:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DF6E88710
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 09:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mwaHXBGLui2 for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 09:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76CEE88705
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 09:20:11 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id c3so9318759lfb.3
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 02:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=8mD+nqB33TkoOoj/gJgWM5VeBC7j95G7SbgFkstL1+Y=;
 b=kYONy1EGZKl0txXMXdnNJT1Y23m2++O6HdGV8zLgsm4sCEMAk4SBmQNWhlxd1RyFjF
 mH9uaD7kMfSnJQuXDiqulF7cksFMlMFyQu1uhXZJKRRkx/rfeldFPCsO2st4PnmT/kDq
 GgQWPaMYzTpc2zdZcMeYUCGhg0EPuQUpoOWYoK/2aGEYM9vehvSOPrTkPc3veCvTt9+4
 vBmykpfMFEq9dDLUBzRBMzYkCzqkG+OST7U2uHzggevt/iPDVH0iMUQZFOaFL7U7aUQA
 EGMxdwknpaXiN9Z1bmHGl6cwvZpRnPncn/hh48VAwiif+7nAFYKUPceAD4e6TjEWS9uL
 A6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=8mD+nqB33TkoOoj/gJgWM5VeBC7j95G7SbgFkstL1+Y=;
 b=uD50QpgUBBffbOWSF2/PEM6psC3xDQeeiG3rs7Zj11sSgeLWlX3jFlqY+mtpBHJpwC
 YcM4XdL6vVQcFMLf4wtj3z3UOOZAKwBdUOuS4ECbr3M6A/5d53TpzH4u57QElE7pP3Ar
 RGKyJAEL/C92NS/Li336TQA0dxmILEh7c7Mle3t+vXi4jPclmp+W5u3tab3PKjjTyRkr
 fU8ojzMp5OqFHCu7OjZyu31JDyMFECwy++tuPAaTIW4xgo0Ic5W0/opPBbv8bryohjgf
 7NuszZMw60dQir1c1OivDrjcj5zoN98gRoM7IglTU0u27k5Lvh/215CW+Vy7LECbFjiE
 fr7g==
X-Gm-Message-State: AOAM531fm6A0hGbmWuEndC4q1/4Ab95WbQAaBY4QmrZatwSPH9/6Kpp0
 we1auKgL3OCwausunHeJStQ=
X-Google-Smtp-Source: ABdhPJzX+r8g5hxwtM4cWf4LYMeGpaFl7y04AtV1EWXCDj7oMyC8Q9bisj8CbBCupPDW3m2AB12hbw==
X-Received: by 2002:a19:8607:: with SMTP id i7mr1555288lfd.208.1596187209458; 
 Fri, 31 Jul 2020 02:20:09 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id v26sm1546603lji.65.2020.07.31.02.20.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 Jul 2020 02:20:08 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] usb: gadget: udc: Avoid tasklet passing a global
In-Reply-To: <20200716030847.1564131-2-keescook@chromium.org>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716030847.1564131-2-keescook@chromium.org>
Date: Fri, 31 Jul 2020 12:20:02 +0300
Message-ID: <87zh7gm471.fsf@kernel.org>
MIME-Version: 1.0
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Oscar Carter <oscar.carter@gmx.com>, Mitchell Blank Jr <mitch@sfgoth.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Allen Pais <allen.lkml@gmail.com>,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-input@vger.kernel.org, Ursula Braun <ubraun@linux.ibm.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Kyungtae Kim <kt0755@gmail.com>, netdev@vger.kernel.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-usb@vger.kernel.org,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: multipart/mixed; boundary="===============1836387468726466610=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1836387468726466610==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

Kees Cook <keescook@chromium.org> writes:
> There's no reason for the tasklet callback to set an argument since it
> always uses a global. Instead, use the global directly, in preparation
> for converting the tasklet subsystem to modern callback conventions.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

looks okay to me.

Acked-by: Felipe Balbi <balbi@kernel.org>

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl8j4kIACgkQzL64meEa
mQZ6zQ//ZXtGFv/fRsm1+M9OI2t7qOY4ZsyygLSKzdncJp2pYVhKXNiMOjtYNxRV
Hv8GjhXRlsOn7pZZ+BqcYWDjvJM20owDzT0NS7oeLKFeIXB6QR5Y/viDETy3MkId
eq1gPhxbK2szcyYVUqC6/qaOuDVpPV4PKlLDPfXev8REL78mYBAgKb5a8kVuZnjo
Lcg64xhnc9YAc5gj+f2HnybldhmU606mRQt/RDQlK9uUymMsD7rZw0L6zfV5r7AY
0oWUzryBMvVMMZ3l0ZpdiSWqoRVgOplih5AHcH4SFZq/5Rv14F7ILAV3JNsIoGZ3
x7MwtAJuIBmBNr48PSDtLu5ntF8OpRLhwBvt6onOzbOyqpk6TnjfbmVHcorlWtfE
tSy2qOo9W6Smc6NsFLcaoYlZUVAiPr2R0Ogap0ISvFF6nBe1b3CEp9Hco79blWCy
1CiCwhq17U6q3tgrRRc34+zewtdAYw+Xze3TNBhQi3EOuCjNNXAoNl6v20/8LOsI
lijSWagZFc7o3LM9xsxWhFVrAWI5bXY+1CmPdwd4dHbaCXg2rcQ33MGP0Uum/bHu
DijJZ1LszhIf1RgXrOD/kmY/WmSh4Nh6nQkdssxXSabz0oN0wsuxMfgNqnkcnIj9
56pCsJHf2phFZyTaMDgzL17tcfor5xQQs27yAoGI1ygKelTGAjY=
=ua4k
-----END PGP SIGNATURE-----
--=-=-=--

--===============1836387468726466610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1836387468726466610==--
