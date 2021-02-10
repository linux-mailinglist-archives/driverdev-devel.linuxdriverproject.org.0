Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FE33161B8
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 10:02:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 454226F69D
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a6pF44nMjsjG for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 09:02:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 550126F63D; Wed, 10 Feb 2021 09:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C460D6F5D8;
	Wed, 10 Feb 2021 09:02:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C27541BF376
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC8EC6F4B9
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4rwN1J5sAxj for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 09:01:57 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 1DE316F51A; Wed, 10 Feb 2021 09:01:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECB566F4B9
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:01:55 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11A8xxGM117071;
 Wed, 10 Feb 2021 09:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=iP2G7L21Ok+LoC/Zq7zmu3BeQUif0cX4L5MAz+HUsL4=;
 b=hi2sSEb6FhJAOdIFyQDwN6KdlVXuQJFh+6one59/zV/i7f1LjDX+IrBHZXsW8u8c2Rxw
 Izvk6Yfrlvu+Ja8+SjaEMYi6asvII3vw/GdKUuLQ+tXFbJ6Yo2j9jCHpsugFRUNIGZvO
 Tv/YW3xzHiyrUNtQi02dPY+aSGnAztW3ZRQWbUZQ47U0fHGGyWp/jk2eRbtbT9h4xHKe
 yDxb7nSNGwQI16ec9t9m6ZxFHcfJw5v4/p/DDZX2ppyqlllwFoHvMsmzq0Rbct68NCyn
 9MnRXjkGy3DJsSda6dRsx/KQqalh0uzrHFccqJCR9HjUozNJ2vKuL2hE53wrgbRbLy+3 jA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 36hkrn2f2a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 09:01:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11A916Va018572;
 Wed, 10 Feb 2021 09:01:46 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 36j51x9xuj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 09:01:46 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11A91h8s023274;
 Wed, 10 Feb 2021 09:01:44 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 01:01:42 -0800
Date: Wed, 10 Feb 2021 12:01:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthek <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <20210210090120.GU20820@kadam>
References: <YCL6vrGPQ0uDZUI8@karthik-strix-linux.karthek.com>
 <20210210080636.GT2696@kadam>
 <CAJ5zXr1hJ6ts7Gqi_vfaJceZ8qKPgFk479h4sA9AxFrAdB8vHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ5zXr1hJ6ts7Gqi_vfaJceZ8qKPgFk479h4sA9AxFrAdB8vHw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100092
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102100092
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 02:28:31PM +0530, karthek wrote:
> On Wed, Feb 10, 2021 at 1:37 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > @@ -789,7 +759,7 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
> > >
> > >               PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
> > >
> > > -/*                   PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
> > > +     /*PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
> >
> > This format is wrong.  Anyway, just delete the commented out code.
> >
> > regards,
> > dan carpenter
> >
> 
> how can i delete that, i have no idea what this driver does
> i'm just fixing coding style issues for eudyptula challenge.
> i dont think its a good idea to delete the code without knowing its
> purpose even though its commented out

Commented code obviously doesn't do anything at all?

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
