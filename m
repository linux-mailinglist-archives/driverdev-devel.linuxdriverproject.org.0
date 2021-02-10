Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4503169F4
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 16:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0187869A9;
	Wed, 10 Feb 2021 15:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oe37HWmnjUTu; Wed, 10 Feb 2021 15:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FE7A8689B;
	Wed, 10 Feb 2021 15:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43D891BF2F1
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FEE06F4F3
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 15:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opdC5DyiSCqO for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 15:19:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 7FBEA6F651; Wed, 10 Feb 2021 15:19:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EEF26F4F3
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 15:19:35 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11AFG04B025962;
 Wed, 10 Feb 2021 15:19:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=P8IV7uMsBk5oTGTXCf1S0OWgFrqMXIJx/u2JuiFn8+s=;
 b=OBDOnAiilReTFpcjpgTqjf7tzIkpa0QszJSr2s2Mn5yE1n2ykgZck9A56FYY0Nki491F
 wVcONgagoZ8FFaAOGdByUj0qckLO5AfETwb+yG/jSjmF0vNOP2yRcTee1MjDx6wYZHNo
 phe0z6rswYFfrZBsdnn9hSbkLusf4GsNk0ViyMAXI5ZNyV1rAhf5zUeskdFqHuf3lVJP
 W6pPJ1CppppLkOnZqkdYelTeiyjPhuadmqzKHjk5PK5U/NLpwWfOwM4FbpMVO+lNMFbD
 dQU2Bzd3vEIMqv1F088r2S2xlz8VGpCowGwWLMbny0rXEp1O+XQDtXPc+7Tz46kz2aw1 mg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 36m4upt9v5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 15:19:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11AFEia8043940;
 Wed, 10 Feb 2021 15:19:32 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 36j4vsxcg5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 15:19:32 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11AFJVR9006448;
 Wed, 10 Feb 2021 15:19:31 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 07:19:30 -0800
Date: Wed, 10 Feb 2021 18:19:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Amey Narkhede <ameynarkhede03@gmail.com>
Subject: Re: [PATCH v3] staging: gdm724x: Fix DMA from stack
Message-ID: <20210210151924.GA20820@kadam>
References: <20210210142512.23152-1-ameynarkhede03@gmail.com>
 <YCPz7jy6BLRzmvU3@kroah.com>
 <20210210150133.chf4gwefgcvaewnd@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210150133.chf4gwefgcvaewnd@archlinux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0
 mlxlogscore=999 mlxscore=0 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102100146
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 mlxscore=0
 mlxlogscore=999 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100146
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 08:31:33PM +0530, Amey Narkhede wrote:
> On 21/02/10 03:55PM, Greg KH wrote:
> > On Wed, Feb 10, 2021 at 07:55:12PM +0530, Amey Narkhede wrote:
> > > Stack allocated buffers cannot be used for DMA
> > > on all architectures so allocate hci_packet buffer
> > > using kmalloc.
> > >
> > > Signed-off-by: Amey Narkhede <ameynarkhede03@gmail.com>
> > > ---
> > > Changes in v3:
> > > 	- Remove superfluous buf pointer
> > > 	- Reduce size of allocation of hci_packet to match number of
> > > 	bytes used for DMA
> > >
> > >  drivers/staging/gdm724x/gdm_usb.c | 10 +++++++---
> > >  1 file changed, 7 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> > > index dc4da66c3..80c58a3ef 100644
> > > --- a/drivers/staging/gdm724x/gdm_usb.c
> > > +++ b/drivers/staging/gdm724x/gdm_usb.c
> > > @@ -56,20 +56,24 @@ static int gdm_usb_recv(void *priv_dev,
> > >
> > >  static int request_mac_address(struct lte_udev *udev)
> > >  {
> > > -	u8 buf[16] = {0,};
> > > -	struct hci_packet *hci = (struct hci_packet *)buf;
> > > +	struct hci_packet *hci;
> > >  	struct usb_device *usbdev = udev->usbdev;
> > >  	int actual;
> > >  	int ret = -1;
> > >
> > > +	hci = kmalloc(5, GFP_KERNEL);
> >
> > Why "5" and not:
> > 	hci = kmalloc(sizeof(*hci), GFP_KERNEL);

5 is correct and sizeof(*hci) is 4.  The hci struct ends in a zero
element array.  You could do:

	hci = kmalloc(struct_size(hci, data, 1), GFP_KERNEL);

I'm not sure it's more readable.  But you still will have to resend
because the patch passes "&hci" to usb_bulk_msg() instead of "hci" so it
will corrupt memory.

I always encourage people to write the patch and then sit on it over
night and send it the next day.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
