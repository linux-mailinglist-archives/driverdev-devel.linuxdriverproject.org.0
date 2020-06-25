Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75DE209B3A
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 10:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAE3F887D1;
	Thu, 25 Jun 2020 08:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCcGsjfETHi3; Thu, 25 Jun 2020 08:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 266A38874A;
	Thu, 25 Jun 2020 08:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6028F1BF3E0
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 08:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C78C864E0
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 08:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCQTcBubOLCV for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 08:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 658298634E
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 08:24:06 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 921C7ACF1;
 Thu, 25 Jun 2020 08:24:03 +0000 (UTC)
Message-ID: <600f9f780eae75f47cf6c975dcfe172c6b151ac5.camel@suse.de>
Subject: Re: [PATCH 50/50] staging: vchiq: Move vchiq.h into include directory
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Date: Thu, 25 Jun 2020 10:24:01 +0200
In-Reply-To: <20200623164235.29566-51-nsaenzjulienne@suse.de>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
 <20200623164235.29566-51-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.36.3 
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8290429866057445155=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8290429866057445155==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-wf8ryFCmpQGjVNK0SP/1"


--=-wf8ryFCmpQGjVNK0SP/1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> diff --git a/drivers/staging/vc04_services/vchiq-mmal/Makefile
> b/drivers/staging/vc04_services/vchiq-mmal/Makefile
> index f8164c33aec3..b2a830f48acc 100644
> --- a/drivers/staging/vc04_services/vchiq-mmal/Makefile
> +++ b/drivers/staging/vc04_services/vchiq-mmal/Makefile
> @@ -5,4 +5,5 @@ obj-$(CONFIG_BCM2835_VCHIQ_MMAL) +=3D bcm2835-mmal-vchiq.=
o
> =20
>  ccflags-y +=3D \
>  	-I$(srctree)/$(src)/.. \
> +	-I$(srctree)/$(src)/../include \
>  	-D__VCCOREVER__=3D0x04000000
> diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> index 72afa4319bd3..b99b7555a8fb 100644
> --- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> @@ -23,14 +23,14 @@
>  #include <linux/slab.h>
>  #include <linux/completion.h>
>  #include <linux/vmalloc.h>
> +#include <linux/raspberrypi/vchiq.h>
>  #include <media/videobuf2-vmalloc.h>
> +#include <linux/raspberrypi/vchiq.h>

Just realised that there an include too many here...

Regards,
Nicolas


--=-wf8ryFCmpQGjVNK0SP/1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl70XyEACgkQlfZmHno8
x/4qEwf+II/T904mwftPXhFlzsBMzhsH4e95IcgFjKlDJDOMXRCNPRwx23g2zSMp
m4bTDmCFDRbgjRfFp3os5IWQ1pfa/Xi4MpHCjQI1ii2qUok9frDzYXnZLpli+VAu
JOayUpsvvk5jLD9VgtqYnrBxsVN36tqn+xpc8apdUlbwjNJ1/476fH+dkk78m4cW
/wWi5DGDpfy1/BaNqxLymd03qYSEUDmRZuCi5lxkHPQM2KKZFOXZ8Ei4sWzsCm8E
0efl/v13HKW8kZyvHqCTBzQ/ntWhprtiMgHXgvcLsR4M8OHqmdEeVu+bAokcISRV
GV9iAQjaRnSw8voaJu8tYrfN7nar1w==
=h21r
-----END PGP SIGNATURE-----

--=-wf8ryFCmpQGjVNK0SP/1--


--===============8290429866057445155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8290429866057445155==--

