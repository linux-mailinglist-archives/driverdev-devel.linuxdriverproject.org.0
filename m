Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC1022B038
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 15:17:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 649472C346;
	Thu, 23 Jul 2020 13:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0B7oZWiXL-4; Thu, 23 Jul 2020 13:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2DE1527255;
	Thu, 23 Jul 2020 13:17:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EE5D1BF863
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 13:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 01E6727255
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 13:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-qkZNQDOqlm for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 13:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A0E792051B
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 13:17:19 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id u12so3255473lff.2
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 06:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=9kJug77lFue3e3m3qpRP4EGSNSmchk/0/9BCGZu0uig=;
 b=I45ih93L8ocvZtWaP72y27l1QuZcEYn5mYBbQTD4rOjCE1Kf0YdrLmTv2QTP3/Vvyk
 DKtBBwGnpWDXYTkGWDrvOrZ1BtT9O5uYMQetUsAED6CrMa85si1iifXk+KvzmZPpGI3A
 h+JodYBenNYX+GXvG6GHdO56v0nlp3MnNCmBA1Fmwd2Q/szrnNoUZc65AHcfAPz9EKZs
 NtThqI/UGlSTnPojE6hxYW4rIL0h1dVHHJ27rXGp/Ey2467Gc5A8bryqLi6Xb6FtwBr6
 OtpuTkdIuIX7aDKVW13hg7Al3QJqrOD7vE+eNDHqTBL65QexDqW6SXU1pKYwriJmTT10
 KfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=9kJug77lFue3e3m3qpRP4EGSNSmchk/0/9BCGZu0uig=;
 b=WfzeP4DTLOaBy//UWP8uyyR8vLS9BFln7GQK4RYMdK8PNBQb42aLWSgOkmz/WbwKvN
 N9/QtGGrN9R7Xcgsv3mr+uAkWirWugWpnAi5IpSoZOG/P4SDoGElKlk4vkWX3oQWigJN
 V7TqRXiaHNAVQixseC/fqXd4z/iBXRKlWIaINvzkoovyXeTCpPWbe3Hg+2noshO3JoD9
 lW0uXeMmk2s7XKTTYECWQ6+kpzrp+/YEJ/L36y7Bj3GYLDsnwfGivDJUFyhB22Rkqyxe
 jlNZCo7vr48mc8/1hRbENmiso5ELEfv8Xzy/MrsuAXtjJZD+5fDeKt6KnwbHrWwB6eqE
 7BBQ==
X-Gm-Message-State: AOAM5312HDxf58mHhTku3HEys4xjTF2DOt8eS+hopC8+sbgdf99jOKU+
 +JPIGVuNIqud0LluEzcXEjg=
X-Google-Smtp-Source: ABdhPJwzAFDirtOGzLAp/Kdima3bh8W+FrH+3Vfj9z0CyTMzVmI/bLvz4ZlDlw5Y93U8HoQMOpMuIg==
X-Received: by 2002:a05:6512:3317:: with SMTP id
 k23mr2274429lfe.111.1595510237593; 
 Thu, 23 Jul 2020 06:17:17 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id d2sm2711666ljg.6.2020.07.23.06.17.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jul 2020 06:17:16 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] usb: cdns3: gadget: Replace trace_printk by dev_dbg
In-Reply-To: <20200627070307.516803-2-drinkcat@chromium.org>
References: <20200627070307.516803-1-drinkcat@chromium.org>
 <20200627070307.516803-2-drinkcat@chromium.org>
Date: Thu, 23 Jul 2020 16:17:10 +0300
Message-ID: <878sfanzft.fsf@kernel.org>
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
 Nicolas Boichat <drinkcat@chromium.org>, Jayshri Pawar <jpawar@cadence.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, Pawel Laszczak <pawell@cadence.com>,
 Daniel Vetter <daniel@ffwll.ch>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chao Yu <chao@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: multipart/mixed; boundary="===============0421913546095129218=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0421913546095129218==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Nicolas Boichat <drinkcat@chromium.org> writes:

> trace_printk should not be used in production code, replace it
> call with dev_dbg.
>
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
>
> ---
>
> Unclear why a trace_printk was used in the first place, it's
> possible that some rate-limiting is necessary here.
>
>  drivers/usb/cdns3/gadget.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/cdns3/gadget.c b/drivers/usb/cdns3/gadget.c
> index 5e24c2e57c0d8c8..c303ab7c62d1651 100644
> --- a/drivers/usb/cdns3/gadget.c
> +++ b/drivers/usb/cdns3/gadget.c
> @@ -421,7 +421,7 @@ static int cdns3_start_all_request(struct cdns3_devic=
e *priv_dev,
>  		if ((priv_req->flags & REQUEST_INTERNAL) ||
>  		    (priv_ep->flags & EP_TDLCHK_EN) ||
>  			priv_ep->use_streams) {
> -			trace_printk("Blocking external request\n");
> +			dev_dbg(priv_dev->dev, "Blocking external request\n");

Instead, I would suggest adding a proper trace event here; one that
includes "priv_ep->flags" in the output.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl8ZjdYACgkQzL64meEa
mQYWXg/8CF3lZVFo7WlBjaJGn7A3OwB/7jbBrBvT3T0ox5HN0tw9WqagXbxF4XOJ
cFCDjlAYjq1K96/WcInpTiY++V/GrDvjLM098NfY6MYfLCFt259q/Z9hadQptlJo
M50jOZW/c7Q1BAdk41qGOuYF5PY1JyqvCSRLMMbjkL5jbReFGiAVE83n9zm58zam
Nob/eZD6Vx5S2gmgOUo3WE3nZCimqjExa8dtR2kTxyfTljyPpjmSr5JziL46rVY4
TPYDihgkkTpF5+IBo4bHPG20NPSud0Gf3bTDJn1BXl7GgTmA1NSkgGoHHzJbBIme
UdnT9Gk4QjdnS1wV66LQ++0WAoFGOsWXIwCNKXttooxlimYo5Z1Se89cPEhclLMe
U6/rJuzZEX2RCjYCgzrlJHj+hixf7s+n+t1IrF9Xy9i3VoghMMIXsskVkf/nrDYF
B+kCaXMTIk+DeaIvqXTkl+jZPmcoXUZtg96jZ+dSoBb0zKgZJ5oRaMxwQGNrTcZJ
bPGmD51NGtucsp3V72rSq+GUF6m5ujmnYuWVDSugdFcHj+PHYV3bYamT6TkbkqTq
aQfBddx23Tgt792Ob1XXQ6jPEHWkEk4QJOalTdzr7g2HFeWprrHQo4+xJKvlLX9L
pwGZeApjT2vY6aRpv3DD9qgzfYCipgCPJ6pMkHP6CWgqUw++Qnw=
=59xo
-----END PGP SIGNATURE-----
--=-=-=--

--===============0421913546095129218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0421913546095129218==--
