Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C93C2D54FA
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 09:00:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0994873D9;
	Thu, 10 Dec 2020 08:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mUeyqmI1d-v; Thu, 10 Dec 2020 08:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29EC2875AE;
	Thu, 10 Dec 2020 08:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE6791BF2B9
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 08:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 10E0A204D9
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 08:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50hBhQ3w-dKS for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 08:00:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id 876C6204F3
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 08:00:20 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BA808Z7046402;
 Thu, 10 Dec 2020 08:00:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=qahWmu7yfkzVAk9fNv3cnE4VKjWf+61A/L9L1BkjeEg=;
 b=xdD3jq2WCyAdlwDDQm0B4lv4ih5tNTqZG2MezTHyT9JGc3ydaCru5ly4pQIcR2059BzU
 dKmmjoyp2snDGRNG25b9NwPUjBVpA9QPTKpfirSd138k0WP0a2Dl/yGrVmjELMM9Y4HH
 +rqfAA3WBHuucz+EC6k9DsijUMJggFFfhTpqQEzlSm+5F5SeAlhIz/sX/sm6YiFf60uk
 XkekeOTl/m40KHM4JpRT60dkj855oKr7LOYUEJEB7PS9yiUo/TWL9xIuZxJm1ePyRQcK
 hzjqX7UbDn6JZA87aX7yYhZpnkFRREkJMApKDgAKsoqBNhm+8X824hBpVoWrBbRwMFn6 bA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 357yqc42x7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Dec 2020 08:00:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BA7ua2g132306;
 Thu, 10 Dec 2020 08:00:19 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 358m41cffn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Dec 2020 08:00:19 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0BA80EAM013160;
 Thu, 10 Dec 2020 08:00:14 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Dec 2020 00:00:13 -0800
Date: Thu, 10 Dec 2020 11:00:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
Message-ID: <20201210080006.GK2767@kadam>
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
 <2907305.Mh6RI2rZIc@pc-42>
 <20201209194153.GC30918@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209194153.GC30918@dincontrollerdev>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9830
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100051
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9830
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 clxscore=1011 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012100051
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, linux-kernel@vger.kernel.org,
 'Rob Herring' <robh+dt@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 09, 2020 at 07:41:53PM +0000, J=F3zsef Horv=E1th wrote:
> > > +static int si4455_get_part_info(struct uart_port *port,
> > > +                               struct si4455_part_info *result)
> > > +{
> > > +       int ret;
> > > +       u8 dataOut[] =3D { SI4455_CMD_ID_PART_INFO };
> > > +       u8 dataIn[SI4455_CMD_REPLY_COUNT_PART_INFO];
> > > +
> > > +       ret =3D si4455_send_command_get_response(port,
> > > +                                               sizeof(dataOut),
> > > +                                               dataOut,
> > > +                                               sizeof(dataIn),
> > > +                                               dataIn);
> > =

> > Why not:
> > =

> =

> I changed all like this in my code already. I test it, and I'll send it a=
gain.
> =

> Ps.: For my eyes is better to read line or list, reading table is harder =
:)
> =

> 	line(arg1, arg2, arg3, arg4);
> =

> 	list(arg1,
> 		arg2,
> 		arg3,
> 		arg4);
> =

> 	table(arg1, arg2,
> 		arg3, arg4);
> =


Use spaces to make arguments have to line up properly.
`checkpatch.pl --strict` will complain if it's not done.

	table(arg1, arg2,
	      arg_whatver, foo);
[tab][space x 7]arg_whaver, foo);

But I think J=E9r=F4me's main point was to get rid of the dataOut buffer and
use "result" directly.

> =

> >        ret =3D si4455_send_command_get_response(port,
> >                                               sizeof(*result), result,
> >                                               sizeof(dataIn), dataIn);
> > =

> > > +       if (ret =3D=3D 0) {
> > > +               result->CHIPREV =3D dataIn[0];
> > > +               memcpy(&result->PART, &dataIn[1],sizeof(result->PART)=
);
> > > +               result->PBUILD =3D dataIn[3];
> > > +               memcpy(&result->ID, &dataIn[4], sizeof(result->ID));
> > > +               result->CUSTOMER =3D dataIn[6];
> > > +               result->ROMID =3D dataIn[7];
> > > +               result->BOND =3D dataIn[8];
> > =

> > ... it would avoid all these lines.
> > =


regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
