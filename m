Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8772D49A4
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 19:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 474C5870BE;
	Wed,  9 Dec 2020 18:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 79a+h8YEZQOY; Wed,  9 Dec 2020 18:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 180D487034;
	Wed,  9 Dec 2020 18:59:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE4EC1BF23B
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 18:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA12C87ACF
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 18:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDFvt28NjyK7 for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 18:59:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BAB4887AB9
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 18:59:32 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9IjOq0045047;
 Wed, 9 Dec 2020 18:59:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=PgT2/93EN84M8NSGkshAq+MsD4BsuPDACePGpoLziCc=;
 b=vRgVLL5cjgZdwMiEAn600T9ENdrZLcNdcZVBBCd0fEUPxfTSWuETveTAPCZ4PLnyyUo6
 DN9aUOsyhFmacxq6qWMqZ1zszu8hRGiukuyKcdU7+wLzyL5dNoXgEWcMc3cv9NmTo5Kl
 4wVEo0+ow6GvFP1/Y6WKefVcjAHFvKoPzrMOkuBo2DYFdaA+8DOVsvSOb+B3VyDYtmLx
 mJgyIEfi+aq2asRSPnY5J1XxEdaoOGs+wsIAA7+9+gyCL86u+2qbZFvuJdVN/qNfaxNC
 fOARs5tvbzKtn4FrTjE1/AuA0h5eDQokcf2g4QxnmJBkMqZsQnyGRIWmjbutbAWSH62r 7g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 357yqc1xxy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 09 Dec 2020 18:59:31 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9IiY8V053493;
 Wed, 9 Dec 2020 18:59:31 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 358m40pqbv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Dec 2020 18:59:31 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B9IxSUo015465;
 Wed, 9 Dec 2020 18:59:30 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Dec 2020 10:59:27 -0800
Date: Wed, 9 Dec 2020 21:59:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
Message-ID: <20201209185920.GI2789@kadam>
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
 <20201209124206.GG2767@kadam>
 <20201209185613.GB30918@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209185613.GB30918@dincontrollerdev>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9830
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090133
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9830
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012090133
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
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 'Rob Herring' <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 09, 2020 at 06:56:13PM +0000, J=F3zsef Horv=E1th wrote:
> Thank you for your suggestions. I made the canges suggested by you.
> =

> I'll test the driver in my development environment, then I'll come
> back with a new patch soon.

Take your time.  No rush.

> =

> I set up a mail client on my linux dev environment, I hope my
> mails/patches/codes will be in proper quality in the future.

No problem at all.  Part of getting used to the process.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
