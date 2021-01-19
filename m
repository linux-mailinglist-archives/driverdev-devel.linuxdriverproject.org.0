Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 586232FB21F
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 07:56:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFEF8274E3;
	Tue, 19 Jan 2021 06:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0X0jqYtlOhYO; Tue, 19 Jan 2021 06:56:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E76727419;
	Tue, 19 Jan 2021 06:56:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB7E61BF313
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 06:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7EC186CB6
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 06:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKw40lGzk-NF for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 06:56:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 521A786CAC
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 06:56:44 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10J6sehl183902;
 Tue, 19 Jan 2021 06:56:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=0DjTgPBITUx3Qit6GSaE+pViT+fZ29UMvupzGI/onqk=;
 b=gsVxJcgsr+bgEE1ofT/a4a+bStxS1lmSIDdpRNewVMXhT7N+Uv2yBcjPTqEzGDy0gSrH
 tyH0ejMSW1uOfGtKaOFwZCMtQ4c8HshjZA6X5opG2a5TK1P5Eq6npQXB2JjG6unYeylm
 SBSmP2Z+usYlrAcm80F0wFJrrfrgSL+rjewFDs5lt8y38TLckzCXOV+BiZ8kss4GKXdW
 38jSFvpasllpFv+V6KLHR3fU3xaZTJTwX2vHvRRPL03kD+qJqqFbaGlPAttnL/18iVjf
 gUbEyTWg45iIO/rEHt6mU43FVfM9EOHWuKtxeBA6XjKJtqMAxhy+v2HUu8Shjxh4eBe4 kQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 363nnafv3q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 Jan 2021 06:56:43 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10J6tImT048760;
 Tue, 19 Jan 2021 06:56:42 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 3649wr05np-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 Jan 2021 06:56:42 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10J6udWm014364;
 Tue, 19 Jan 2021 06:56:39 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 18 Jan 2021 22:56:39 -0800
Date: Tue, 19 Jan 2021 09:56:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2 3/4] staging: hikey9xx: phy-hi3670-usb3.c:
 hi3670_is_abbclk_seleted() returns bool
Message-ID: <20210119065630.GE2696@kadam>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
 <d1e0d94381e214157545d6808835fdfe99448f76.1610645385.git.mchehab+huawei@kernel.org>
 <d9ebc10ac5c4ba5231ed50ef0d2a15f424547736.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9ebc10ac5c4ba5231ed50ef0d2a15f424547736.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 bulkscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190041
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 spamscore=0
 mlxlogscore=999 clxscore=1011 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 mlxscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190041
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 14, 2021 at 09:56:41AM -0800, Joe Perches wrote:
> On Thu, 2021-01-14 at 18:35 +0100, Mauro Carvalho Chehab wrote:
> > Instead of using 1/0 for true/false, change the type to boolean
> > and change the returned value.
> []
> > diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/stagi=
ng/hikey9xx/phy-hi3670-usb3.c
> []
> > @@ -326,24 +326,24 @@ static int hi3670_phy_set_params(struct hi3670_pr=
iv *priv)
> > =A0	return ret;
> > =A0}
> > =

> > -static int hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
> > +static bool hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
> =

> Presumably this should be "selected" not "seleted"
> =

> > =A0{
> > =A0	u32 reg;
> > =

> > =A0	if (!priv->sctrl) {
> > =A0		dev_err(priv->dev, "priv->sctrl is null!\n");
> > -		return 1;
> > +		return true;
> > =A0	}
> > =

> > =A0	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
> > =A0		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
> > -		return 1;
> > +		return true;
> > =A0	}
> > =

> > =A0	if ((reg & USB_CLK_SELECTED) =3D=3D 0)
> > -		return 1;
> > +		return true;
> > =

> > -	return 0;
> > +	return false;
> > =A0}
> =

> 	if (foo)
> 		return true;
> 	return false;
> =

> should generally be consolidated into a single test.

I quite prefer the original format, but you're right about the return
looking reversed.  Using "return !!(reg & USB_CLK_SELECTED);" is
especially problematic.  I like !! but Linus has commented a couple
times that he doesn't like !!.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
