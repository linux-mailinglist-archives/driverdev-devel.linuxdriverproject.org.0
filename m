Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C0022C030
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 09:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1816F23307;
	Fri, 24 Jul 2020 07:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QVInyYKENTmd; Fri, 24 Jul 2020 07:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F15E203C9;
	Fri, 24 Jul 2020 07:53:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2A8F1BF315
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 07:53:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E36B86DE5
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 07:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wibOV0HXDFHS for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 07:53:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E717186A32
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 07:53:44 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id h19so9008991ljg.13
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 00:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=O6qkCYU+Lj449292v+RijIhhQn2jxXKgnXk1fnRDpDY=;
 b=OXkXphJm3pLaBsOlpYXmY6PnG9xT6nrbBn3ITBCFY0C11HP9bJb2S2wF8UpIedPs36
 J+7DQPBB03igomIEsWZTHOX0zeQ4YbRjiGMNxtpbYP7c9e5XFbACtqwwYcGUcqtGDvQC
 x1/Lp2s7cmMDGI4glpsDFdSqxaTKFACIaTAH+P+9W66UAiZGhtP6JRpFbF6SbHzkMNcn
 C2lw//zuVlZ16MhWpaO/dsLlgWJtBwo976V78rnuXowmi5rEyhYgQcAEEvXN/5p4iOJL
 s+gmsfWU7Xob3ljOXH+q4wTIvXWr4quzE1mf4KrmPBSf2ZwN+5/5MxyD6Acadre69JJL
 72uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=O6qkCYU+Lj449292v+RijIhhQn2jxXKgnXk1fnRDpDY=;
 b=tTZqp16bp/zHwmme2fv6jpVRZkQeNyoarNdx4nUb2z4osNWNZP3vuppyIXI/B1SM+a
 /7izB71XKomLLV63jAQO0CNzlvuvdonuCYjMgKICQwnz6rCjQUG3mFEfwhLBoXmqswoS
 Iu+2/Uj046zVJFN0qSatDONx4q+GVQqWyMEx4AD53c//KKQXUg9mbe80YYq9faHNvEGS
 Lp6nsb9OrQaObTHEIDkX0b0XKCZ8WX+Fy0Gu8adYIWuxRdwwjq1yKgciojgmktQtyUTf
 kmJSuj2e1zIa19zx17sYl87BiN27IPZsMPQAxFrE0/p1MMFJrjcEwBn6dBIZc7+AVd9/
 e1VQ==
X-Gm-Message-State: AOAM5339OOLGcdnHdniWGj+z4OpPdE0ZldFr2kJecJTt/htVabFUYH8h
 VIQCwzjOjOTmHShI5bpXwcY=
X-Google-Smtp-Source: ABdhPJyPzhHOCcvRIEm7/I8JmUJVutBiOiVKo7CYAqpyW2Atky+a80GTz5peYvuFjl7HkJY4opLmhQ==
X-Received: by 2002:a2e:b0e9:: with SMTP id h9mr3818934ljl.3.1595577222876;
 Fri, 24 Jul 2020 00:53:42 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id b9sm43113lfi.88.2020.07.24.00.53.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Jul 2020 00:53:42 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH 1/4] usb: cdns3: gadget: Replace trace_printk by dev_dbg
In-Reply-To: <CANMq1KDugXcmvrGOJzcvWvbzScPDsQVuJ4gSDXTJan+FY1H3Ew@mail.gmail.com>
References: <20200627070307.516803-1-drinkcat@chromium.org>
 <20200627070307.516803-2-drinkcat@chromium.org> <878sfanzft.fsf@kernel.org>
 <CANMq1KDugXcmvrGOJzcvWvbzScPDsQVuJ4gSDXTJan+FY1H3Ew@mail.gmail.com>
Date: Fri, 24 Jul 2020 10:53:36 +0300
Message-ID: <87365hnybj.fsf@kernel.org>
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
Cc: Peter Chen <peter.chen@nxp.com>,
 "Guilherme G . Piccoli" <gpiccoli@canonical.com>,
 Rafael Aquini <aquini@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Howells <dhowells@redhat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jayshri Pawar <jpawar@cadence.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Laszczak <pawell@cadence.com>, Daniel Vetter <daniel@ffwll.ch>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Chao Yu <chao@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, linux-f2fs-devel@lists.sourceforge.net,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: multipart/mixed; boundary="===============7900037862326747589=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============7900037862326747589==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Nicolas Boichat <drinkcat@chromium.org> writes:

> On Thu, Jul 23, 2020 at 9:17 PM Felipe Balbi <balbi@kernel.org> wrote:
>>
>> Nicolas Boichat <drinkcat@chromium.org> writes:
>>
>> > trace_printk should not be used in production code, replace it
>> > call with dev_dbg.
>> >
>> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
>> >
>> > ---
>> >
>> > Unclear why a trace_printk was used in the first place, it's
>> > possible that some rate-limiting is necessary here.
>> >
>> >  drivers/usb/cdns3/gadget.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/usb/cdns3/gadget.c b/drivers/usb/cdns3/gadget.c
>> > index 5e24c2e57c0d8c8..c303ab7c62d1651 100644
>> > --- a/drivers/usb/cdns3/gadget.c
>> > +++ b/drivers/usb/cdns3/gadget.c
>> > @@ -421,7 +421,7 @@ static int cdns3_start_all_request(struct cdns3_de=
vice *priv_dev,
>> >               if ((priv_req->flags & REQUEST_INTERNAL) ||
>> >                   (priv_ep->flags & EP_TDLCHK_EN) ||
>> >                       priv_ep->use_streams) {
>> > -                     trace_printk("Blocking external request\n");
>> > +                     dev_dbg(priv_dev->dev, "Blocking external reques=
t\n");
>>
>> Instead, I would suggest adding a proper trace event here; one that
>> includes "priv_ep->flags" in the output.
>
> The patch was already merged by Greg
> (https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/comm=
it/drivers/usb/cdns3/gadget.c?id=3Db3a5ce874c2619c9b8a6c5bbcfefdb95e0227600=
),
> but feel free to do that as a follow-up CL.
>
> Looks like Peter -- the main author, is ok with dev_dbg (also,
> apologies for missing the R-b tag when I sent a v2 -- which is the one
> that was merged by Greg).

That's okay, we can get a proper trace event for v5.10. Maybe Pawel or
Roger would like to take the effort?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl8ak4AACgkQzL64meEa
mQblMRAAqkeQj7EECdTkVg6AbGGO2XhBao44DrOxBJ10u0EGq3/VfAJ/1A40KwpV
tW9n/N1z2QlekWKRzRkKB7bwFraVgUJCNhhtVxd5gcOhcaNw628hQ/YFD1ve77YG
145MsR5G6ncmsOZm5Se1ieP5FW6x/kc1UgeKzDCP/tkIaec618IaKMGcETPsFbFo
IK3baFwtOc6d8/5RDmqs2V1510rK+JDxNHM/1tv9x/N2DDY3JUirF3KskUsQsdVq
7Q5+HwgcaJvpQU2sDaRY2rA3MXyifaeFnrlmGWBj4GtWNdGxSFtxo7RJp8HtyGau
ibyL90klkdB1EFDn3dQ2r8f+1gWns0H+A76C/w00s3n7aEq6/62lOJEI0wLLWenS
Xyms5G+T1h+xXUVdE74ifWKD3Eda4dfz7//yLcbXVtHmk+pGXjgl+m5J21cciSLV
M1SbAHvLfMf0Ebu0pEnRnsT15INdvBc8NG7yyty01ia7G5wi1OBCer6l16uu27ML
SXv+c0sbdCaMd/Fq2kHyVjIFkEHHoLXxNomCyZ56uGGVlxhc/JYvuW+Q6zSXoPaB
Jb2iy9n1M+2crqj29+7ExFbhl6L/Qw0e8PnlXfDYBtZcrZ0vbv8px0Cugbxj3tcD
0wjHac+pUQC1CzIwd7/moy4eM3nQ1XJJt1egwXTiVJzBr3d1zvE=
=ZlVD
-----END PGP SIGNATURE-----
--=-=-=--

--===============7900037862326747589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7900037862326747589==--
