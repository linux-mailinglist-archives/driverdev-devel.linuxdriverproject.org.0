Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD0E2E44B
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 20:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C757586E63;
	Wed, 29 May 2019 18:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rvj3lTlMwyUB; Wed, 29 May 2019 18:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF4D286CC7;
	Wed, 29 May 2019 18:15:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9262B1BF2CC
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 18:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F48B30C76
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 18:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id paFTK4w2Eorp for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 18:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id ED5F021532
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 18:15:43 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TI45Gd026303;
 Wed, 29 May 2019 18:15:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=X1r1l9IbI3BOkFp9ol61hLAsIPyF/vTaoewLMBFuIz4=;
 b=GCg6eFTfUHhgUB9eSXQA3fJP4YzWZr9DQtM9SwudrdjDKsu/cZFM5ziuaDyOnb5KCu4N
 acONfWg+yW/wZSxYkdi/qKt0ieppowilWMz67EWhfZZtxvmQ687AJn3yvHY8BBaq98p/
 Glc5IO7eW9QIyvJtIVxd9nLNHu2tjqL94oDA5hn2SJS5LTVLX2Vu2GALld7vwzldXvx+
 lVPUbcfN1vjA5J4YPAZNXo+6L6y5NT3YZtnDLVthlDrNwhjboZ1rQzH2N3SWzjl0N7xF
 CwnRPwr9wbd3tSn23Hmvr2Qc5nef13kNRIzztRJ4WXnYpK3C+fSuXsf1cZrGDerjbpdK Jg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2spw4tkq38-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 18:15:42 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TIE7Ja160246;
 Wed, 29 May 2019 18:15:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2srbdxj39c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 18:15:41 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4TIFd4U022602;
 Wed, 29 May 2019 18:15:39 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 May 2019 11:15:38 -0700
Date: Wed, 29 May 2019 21:15:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 3/4] staging: kpc2000: add missing spaces in core.c
Message-ID: <20190529181532.GM24680@kadam>
References: <20190524110802.2953-1-simon@nikanor.nu>
 <20190524110802.2953-4-simon@nikanor.nu>
 <20190527073159.GX31203@kadam>
 <20190529155419.ego3sfedew65ini5@dev.nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529155419.ego3sfedew65ini5@dev.nikanor.nu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9272
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905290117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9272
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290117
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 29, 2019 at 05:54:19PM +0200, Simon Sandstr=F6m wrote:
> On Mon, May 27, 2019 at 10:31:59AM +0300, Dan Carpenter wrote:
> > On Fri, May 24, 2019 at 01:08:01PM +0200, Simon Sandstr=F6m wrote:
> > > [..]
> > > -		ret =3D copy_to_user((void*)ioctl_param, (void*)&temp, sizeof(temp=
));
> > > +		ret =3D copy_to_user((void *)ioctl_param, (void *)&temp, sizeof(te=
mp));
> > >  		if (ret)
> > >  			return -EFAULT;
> > =

> > This should really be written like so:
> > =

> > 		if (copy_to_user((void __user *)ioctl_param, &temp,
> > 				 sizeof(temp)))
> > 			return -EFAULT;
> > =

> > temp is really the wrong name.  "temp" is for temperatures.  "tmp" means
> > temporary.  But also "tmp" is wrong here because it's not a temporary
> > variable.  It's better to call it "regs" here.
> > =

> > regards,
> > dan carpenter
> > =

> =

> I agree, but I don't think it fits within this patch. I can send a
> separate patch with this change.

You could send the other chunk as a separate patch, but I don't think it
makes sense to apply this chunk when really it just needs to be
re-written.

I normally don't complain too much about mechanical no-thought patches,
but in this case the function is very sub-par and should be re-written.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
