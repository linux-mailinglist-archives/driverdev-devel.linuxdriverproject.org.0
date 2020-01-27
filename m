Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 947AE14A28D
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 12:07:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 407E820489;
	Mon, 27 Jan 2020 11:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YJrf14RsSifG; Mon, 27 Jan 2020 11:07:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33BCC2038A;
	Mon, 27 Jan 2020 11:07:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 237671BF3CA
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 11:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D6B32047D
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 11:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8N5GQlMOCcl5 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 11:06:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 069D82038A
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 11:06:57 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AE5BBB119;
 Mon, 27 Jan 2020 11:06:54 +0000 (UTC)
Message-ID: <f66483db33f8c190030ba0b66e0d85e549691cf0.camel@suse.de>
Subject: Re: [PATCH 06/22] staging: vc04_services: get rid of
 vchiq_platform_use_suspend_timer()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Date: Mon, 27 Jan 2020 12:06:53 +0100
In-Reply-To: <20200124144617.2213-7-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
 <20200124144617.2213-7-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.3 
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6266325218203608681=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6266325218203608681==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-jfVbXwfzGkRKU6Ms0WbO"


--=-jfVbXwfzGkRKU6Ms0WbO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-01-24 at 15:46 +0100, Nicolas Saenz Julienne wrote:
> @@ -3059,7 +2986,6 @@ vchiq_check_service(struct vchiq_service *service)
>  			arm_state->videocore_use_count,
>  			suspend_state_names[arm_state->vc_suspend_state +
>  						VC_SUSPEND_NUM_OFFSET]);
> -		vchiq_dump_service_use_state(service->state);
>  	}
>  out:
>  	return ret;

As highlighted by the kbuild test robot, this shouldn't be removed. Sorry i=
t
slipped through the cracks. Happened because of it similarities with
vchiq_dump_platform_use_state(), which is being rightfully removed.

I'll give some time for further feedback, and send a v2.

Regards,
Nicolas


--=-jfVbXwfzGkRKU6Ms0WbO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4uxE0ACgkQlfZmHno8
x/7IcwgAlexqcFZf/vJCGPkHlxL6iHIKlCfhykAprlaYxplMz0io9YbfEMoxiaKj
tuttGtiS8cVZgpJpMQA76Rc0iz6m05eSOxnLnxj1s7l9NTFobSU9BA06HsA1Hgg6
h7GcQ/N71IY7vADTVX2zYWTt91KNKtBR5MBgJjudSe3E//DSHyC2SGOe3ZEWnjos
2JKz/rW9X8bqTiaxS7e6YBzgd5ZRuuHVFWQ0iujbo+ymCiItZ1XeI3CxfkpJIdjn
5y3vcKQkoMbWKaoKfQ9UlPdFHhacB28ukVCCcZPAQ3nCHCOYgteDrEtHmhu0Xive
zkSOKBZTUF2Ku9R9JWUmDa3lqph9vg==
=WPcc
-----END PGP SIGNATURE-----

--=-jfVbXwfzGkRKU6Ms0WbO--


--===============6266325218203608681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6266325218203608681==--

