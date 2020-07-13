Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF9F21D75C
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6212288DA2;
	Mon, 13 Jul 2020 13:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XFBcvG1xVKmz; Mon, 13 Jul 2020 13:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E53C88BB0;
	Mon, 13 Jul 2020 13:38:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0B811BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ECEF088BBD
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4+M7JKCs-vI for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B8C1388BB0
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:38:37 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06DDaqx3082343;
 Mon, 13 Jul 2020 13:38:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=fUB2CdLSMqMXDoa0rGVYHlfcTSEUJl4Bs0VPYA4d0cs=;
 b=VK9um5eTZliMznZwPnRO+JHHFtIRSuSGXU9L77MxUelBXXaZHUKX9SbwVL1/wOl2Llia
 7tQzswh1pMWFIxPy7EGG5I4XdGA5tCxQ05xL7grGK1aYpJC9taOiinZ8QGUxu5n2o9LW
 fQiCbxIipFRt51heOyAXMUAaPixQF6oRzvUCtw9/ijpoBMn26aA9HmCpGm9zb+1h1ros
 Mdgeby5pvHKIPoxTvAwBZAkmgnXtKvbc2FnF+Ad88f5ciPtPAuusNJsGeUu61M8Rcja9
 lFk1E+uViOEwnzqro6yS6pz5b7/OGnqR3G3lJRUH+g+BQBkiHVWmu2x8nvpoG9iVR+Go sw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 3275cky1pr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 13 Jul 2020 13:38:35 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06DDcYxl173248;
 Mon, 13 Jul 2020 13:38:35 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 327qbvkc0q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jul 2020 13:38:35 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06DDcTNP026658;
 Mon, 13 Jul 2020 13:38:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 Jul 2020 06:38:28 -0700
Date: Mon, 13 Jul 2020 16:38:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] Staging: vc04_services: Fix code indent error
Message-ID: <20200713133821.GS2549@kadam>
References: <20200713072224.7648-1-kundubaidya99@gmail.com>
 <20200713133527.GB3122574@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200713133527.GB3122574@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9680
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 mlxscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007130102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9680
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 priorityscore=1501
 bulkscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 clxscore=1011 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007130102
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
Cc: devel@driverdev.osuosl.org, Baidyanath Kundu <kundubaidya99@gmail.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 13, 2020 at 03:35:27PM +0200, Greg Kroah-Hartman wrote:
> On Mon, Jul 13, 2020 at 12:52:24PM +0530, Baidyanath Kundu wrote:
> > This patch fixes the checkpatch.pl error:
> > 
> > ERROR: code indent should use tabs where possible
> > 
> > Signed-off-by: Baidyanath Kundu <kundubaidya99@gmail.com>
> > ---
> >  .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c  | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> > index a075cd63da7f..86c00b68f099 100644
> > --- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> > +++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> > @@ -294,13 +294,13 @@ static void buffer_to_host_work_cb(struct work_struct *work)
> >  	/* queue the bulk submission */
> >  	vchiq_use_service(instance->service_handle);
> >  	ret = vchiq_bulk_receive(instance->service_handle,
> > -				 msg_context->u.bulk.buffer->buffer,
> > -			         /* Actual receive needs to be a multiple
> > -			          * of 4 bytes
> > -			          */
> > -			         (len + 3) & ~3,
> > -			         msg_context,
> > -			         VCHIQ_BULK_MODE_CALLBACK);
> > +				msg_context->u.bulk.buffer->buffer,
> > +				/* Actual receive needs to be a multiple
> > +				 * of 4 bytes
> > +				 */
> > +				(len + 3) & ~3,
> > +				msg_context,
> > +				VCHIQ_BULK_MODE_CALLBACK);
> 
> Close, you need one more space for these lines, right?
> 

Yeah.  The original has the space and looks correct.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
