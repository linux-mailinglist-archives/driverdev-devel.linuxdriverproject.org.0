Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F9E6E61
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 09:40:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDE57844DC;
	Mon, 28 Oct 2019 08:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2S4xtn3mZft2; Mon, 28 Oct 2019 08:40:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 893B084480;
	Mon, 28 Oct 2019 08:40:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D78FB1BF325
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 08:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CBCB2854E8
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 08:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phWodhliZKrI for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 08:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CA5385497
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:40:17 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8ShU8008098;
 Mon, 28 Oct 2019 08:40:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=AAreTZABI2sh5zxTgDMdtRwIgOOV26iDp41KT28HdQ0=;
 b=UNsO2OmZ6Ov72DOxYYNKxnT5P4or0VeIn9lktNKJymAjn73V43N6R9p/X7p/hIke7nUf
 eHp5Suj32ekGYYTf8IL3JTCWYpTc7Lv7nsRwE3fEHO+ZniEUuBi0eemVEk7vjFUR9OGa
 n3PJq8NXCmYbkTM/WLfnmpIo5LwreP8aij3wKnqeRhjc73z4adcUf7Q2AgjuNcatU6Vd
 G2HROdVQ3rynTQHtYi2RtZX7sRZ4h66Z/MeWIkmiEgiep+P9rYj0ERTT+/ED4Iids7Uo
 P/a8guaDSjf+8/tKqtxZrrzf67e3EuhDz30oih7tIkx99FxLsVfmhFtCIraColSugwVj UA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vvumf57vw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 08:40:16 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8SAHp122316;
 Mon, 28 Oct 2019 08:40:15 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vwakxm0y3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 08:40:15 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9S8eE0s024446;
 Mon, 28 Oct 2019 08:40:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Oct 2019 01:40:13 -0700
Date: Mon, 28 Oct 2019 11:40:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH] staging: octeon: Remove unneeded variable
Message-ID: <20191028084007.GC1922@kadam>
References: <20191026222453.GA14562@cristiane-Inspiron-5420>
 <20191028082732.GE1944@kadam>
 <alpine.DEB.2.21.1910280934430.2348@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910280934430.2348@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280086
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Cristiane Naves <cristianenavescardoso09@gmail.com>,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 09:36:04AM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 28 Oct 2019, Dan Carpenter wrote:
> 
> > On Sat, Oct 26, 2019 at 07:24:53PM -0300, Cristiane Naves wrote:
> > > Remove unneeded variable used to store return value. Issue found by
> > > coccicheck.
> > >
> > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > ---
> > >  drivers/staging/octeon/octeon-stubs.h | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> > > index b07f5e2..d53bd801 100644
> > > --- a/drivers/staging/octeon/octeon-stubs.h
> > > +++ b/drivers/staging/octeon/octeon-stubs.h
> > > @@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
> > >  		uint64_t queue, union cvmx_pko_command_word0 pko_command,
> > >  		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
> > >  {
> > > -	cvmx_pko_status_t ret = 0;
> > > -
> > > -	return ret;
> > > +	return 0;
> >
> > What is the point of this function anyway?
> 
> Given that it is in octeon-stubs.h, it seems that the point is to get the
> code to compile when COMPILE_TEST is set.  There is a real definition in
> arch/mips/include/asm/octeon/cvmx-pko.h

Oh yeah...  Duh.  I saw that it was in stubs but I just assumed that it
was stubs for something which was never implemented or left over code...

My bad.

regards,
dan carpente

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
