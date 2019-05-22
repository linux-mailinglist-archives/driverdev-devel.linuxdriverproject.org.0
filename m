Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A163525EDD
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 09:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6D98861F9;
	Wed, 22 May 2019 07:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kT5yg1Q1uMJf; Wed, 22 May 2019 07:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F305285E8A;
	Wed, 22 May 2019 07:57:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 791E91BF575
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 07:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7659D23455
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 07:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSRAomBDqRBR for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 07:57:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A1E81FD16
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 07:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G/En3bk+2yjBN1OlAPMBLUMv2j8iGWc8pYHVEqKjRvk=; b=F0BCeGBvaK40XFQmcuTdNLbkXy
 EVpcjKizrH8GOKcY9BRWWnM0/pXY3vFqZE/lF2FtudhSWWl/DXy5mRIy/XDtYFrDfe6BT3XPVvvUR
 CB373mpkXUcN5lkws2TXyJpRM7feAawBb+mOBDXU0vtzBIrXO5/7MV0wjp16iFD3JqwOPRhXOItJx
 O0xb1aUqeHLUS6ZscwrHNxuUIKYzvnhfWjhmOa7hG5tB/dniiK903VRyBVgcYrpdKMuYPPakkQkhX
 cAv3PetOTzNQSTHAFY5+P3iqUJNhcf8FkwqnaLSQtG2hO64BE+Y9WoFACn5l5gkXiG0ShiNZvwV+I
 wSxm0UKw==;
Received: from ulthar.dreamlands ([192.168.96.2] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hTM7h-0000A1-C4; Wed, 22 May 2019 08:57:17 +0100
Date: Wed, 22 May 2019 08:57:16 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Fabio Lima <fabiolima39@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Add missing blank lines
Message-ID: <20190522075716.GA16243@azazel.net>
References: <20190522004655.20138-1-fabiolima39@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190522004655.20138-1-fabiolima39@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0124645633977000296=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0124645633977000296==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-21, at 21:46:55 -0300, Fabio Lima wrote:
> This patch resolves the following warning from checkpatch.pl
> WARNING: Missing a blank line after declarations
>
> Signed-off-by: Fabio Lima <fabiolima39@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_debug.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
> index 9f8446ccf..853362381 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_debug.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
> @@ -382,6 +382,7 @@ ssize_t proc_set_roam_tgt_addr(struct file *file, const char __user *buffer, siz
>  	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
>
>  		int num = sscanf(tmp, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", addr, addr+1, addr+2, addr+3, addr+4, addr+5);
> +
>  		if (num == 6)
>  			memcpy(adapter->mlmepriv.roam_tgt_addr, addr, ETH_ALEN);
>
> @@ -1348,6 +1349,7 @@ int proc_get_btcoex_dbg(struct seq_file *m, void *v)
>  	struct net_device *dev = m->private;
>  	struct adapter *padapter;
>  	char buf[512] = {0};
> +
>  	padapter = (struct adapter *)rtw_netdev_priv(dev);
>
>  	rtw_btcoex_GetDBG(padapter, buf, 512);
> --
> 2.11.0

Looks good to me.

J.

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzlANUACgkQ0Z7UzfnX
9sPLkQ/+Ont4TYXB8nKa47x1cKKjE8M0Jucl5n4n1+kOPZ13aM3g2vCAxPLpQ3ii
XcS1u3cJVw928v0ZNIb8UD9v0oJMXu6wYcIupTPwCVb8wd26Ull3k/8RoORuaTzi
gFKkSkyB8osSLWK1EsUcF3zTLm/rMFNXAOjAo40z6fKw4DDsRm9X74jMY4O52IzR
o/IbfENqe7XPMC8b+zg5py/HgI89+zqBK2jnLyUV5X1tXNvYpPZpqonAndwee6ME
xUegqgQ+RbcKCVBloXbHCpyEU4pwbRlHS8CsuJwyHRoMlcG+ktpLj+59NxQ02Ya8
FPEMoiRsLVm3tJZfkO8GIai702ZdWh4piaukJQHX87C+2F33tzts0MRfWuN3Pmtq
Vbkoetf5/DOlLiXBXyYKCHNe4+5HaEYPtDSOlH5x4+8IUMiG/PMrIa+o1+2xmc3c
njGM2OMScTWZWTEs+RX8z/QsNCuRj26VRw45XSWSATwpv8ZxnfeCqcrv/rDD0umg
sh0WLCHIXEIZoqGPRlkTvZbqfGCT29PTJyDlRT3xAC6i0eLx3ZdQP5LokaTiepN/
vgI3lCbycP23QlBmwbitpZ3Ep33dQiimnfcPw2lP7pvZOyYWiDTZB5S2M6PMIp9V
qCclrb5N8/U0IswlNJFtCWZApPdFL2faZvaNbW19zSDE+iDFpeQ=
=mWNx
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--

--===============0124645633977000296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0124645633977000296==--
