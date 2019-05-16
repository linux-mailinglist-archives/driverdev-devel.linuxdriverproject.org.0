Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B1820FBC
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38A038747E;
	Thu, 16 May 2019 20:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O1NGrgGao2in; Thu, 16 May 2019 20:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9CA587194;
	Thu, 16 May 2019 20:46:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AF0E1BF371
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0440485B99
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05qMwKrS6u8O
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:46:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 747B085EFB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MCWPVRxZ4FHDb8LjEBsGqSwritmuIWVIR2xaeqYg6aM=; b=soz7On2hv2KWbdj7YtD3MuoUij
 mWJqJODPWC3csqNaq8Iquf2SNBGoLfAb96rJh/chkZedzVixmpXq+MAheelPWtbgGJ49rCSWETTus
 jBihFTenP2DpmrozXwuiOqzT/WAbtqzLZiI0Ntm+P+xdgG3qKfQ27saUiBF43Wf5aOSUzfmKfr3u5
 4oPTvjKBrJp5xvv6lV+UU4gRt5FKpEhuRRKTl+xnUEcEIb0XhR3n5rJWDik92Cr8/hF93fR/KDTht
 /BI6JQwAiyvwLi/DlaldrLPI/sG3aPuxNo/x2q3yx6xR+cLkWpB5xchhaSjoj62LixiKaH+Eb7xRX
 2r9T1gEA==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hRNGx-0007rQ-Sl; Thu, 16 May 2019 21:46:39 +0100
Date: Thu, 16 May 2019 21:46:38 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH 02/11] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes.
Message-ID: <20190516204638.GA12840@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516200411.17715-3-jeremy@azazel.net>
 <SN6PR02MB4016EB785F03A89ADC6518ABEE0A0@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR02MB4016EB785F03A89ADC6518ABEE0A0@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.3
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
Cc: Greg KH <gregkh@linuxfoundation.org>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============4755889272200706104=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4755889272200706104==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-16, at 20:17:51 +0000, Matt Sickler wrote:
> >-----Original Message-----
> >From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of
> >Define separate simple show functions for each attribute instead of having a
> >one big one containing a chain of conditionals.
> >
> >+static ssize_t s2c_dma_ch_show(struct device *dev,
> >+                              struct device_attribute *attr, char *buf)
> >+{
> >+       return 0;
> >+}
> >+
> >+static ssize_t c2s_dma_ch_show(struct device *dev,
> >+                              struct device_attribute *attr, char *buf)
> >+{
> >+       return 0;
> >+}
>
> These two can be removed.  Technically, that would be a
> userspace-breaking change, but I can guarantee that all existing
> userspace consumers don't actually read that sysfs node.

Took them out in a subsequent patch.  Thanks for the confirmation.

J.

--/9DWx/yDrRhgMJTb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzdzCUACgkQ0Z7UzfnX
9sPWnA//W8kkl0jkGesIvAmGdgVbz5ISH7Xy3jUDp/igiNbBpyAkTXfNmPqIAOlo
5zHIdB60zOCnr9T2nDh8XGQDZm42BnE1HS/nmD0POG8hlMBYNzOhqVIirmpl/ePt
PLmSY0zqn2X9qwIxiYG2rnLNtxyWyjkSUR2lIqWmoiVjO1QiVwEUdgmA4jIpU83A
YnVA3zEzX9G6pj8QGZCqGazuIj1nwWGcfC/yZoydKGOwE22IxY9zQ4iNTVt+hZos
sPhDUmkC56N9Bt8AhCpdVnJtM0oBNj96V4Znx5XJdgmdJv3y9zswaYKmtNmI+wqE
wE5VfXCPIaI4VXWFHOtZ9Cc0Wm5XI0oEkK9hqWrgOwpKRr2EQNzFMP9gGEBonGyf
na3W9em4Q/V/hnAGp70q4LEkmJFtuGbcWjJQIvJU5asBhb5oPHK7kDX5vuQWhMuU
CnX9yTi4r2kXR/LQmITzOyyc4wnfFzVKOCXoum0BT4dU40Lxbh9/33TZJAtAyvGT
d9+HmiFv+9ehLJFIp3havadfNxJfRaGrD+/GO7v0CMt/eYbK7YSOOZm/KhhKlkqu
YM6o1XOK5Hn8VkU88pKkf4VT6Go0QWifXrcePFeZmKq5JBRDloQ1fWD3I4L9R2Mq
QWXwcKYTapBCnP0M0eESFueDv7cgXCJQhdhmh2RTXwcMCfh1K6U=
=NMV9
-----END PGP SIGNATURE-----

--/9DWx/yDrRhgMJTb--

--===============4755889272200706104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4755889272200706104==--
