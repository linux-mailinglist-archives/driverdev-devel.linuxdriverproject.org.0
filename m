Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ACE2D9991
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 15:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B29386850;
	Mon, 14 Dec 2020 14:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0G6ZkzGtwMTh; Mon, 14 Dec 2020 14:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87D0086843;
	Mon, 14 Dec 2020 14:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A1351BF969
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 14:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC0AA2078B
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 14:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id riTCLKjqI1FE for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 14:17:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id B0EA22035D
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 14:17:10 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BEEADvJ071907;
 Mon, 14 Dec 2020 14:17:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=RHfuFk1oW8oW5MMEI9K9uXKlSZyYVbE3kY1cnzm8N9E=;
 b=o7iiggxkkeureV3QXraU40ZQW33BybRtmR0YaqUo1RV0tYrdzafoymLlT1+cgYN1AWnx
 fyFXXb3jK4sxuHspnHSR6xNkpUUiUVn4nphdgmYjXsk/yRnBeZaCazg3g1KmAqi7i+de
 tM0SbiC/YrhV1/bVCq1qC55UsK+HeBIr5WUVzZ3TbgVc17ejdVDU7KGUmaDfb9ZjMwOU
 7zSMqDhwgO2zK1BSdHr4D8QkzrIyRNQzA8MwMI6git5wXsmVt84JjyzLZly1ZDrmmm0B
 fCZ9SOg2pnPIhzRpeiKCFw5XCxeX2OhNh2k+quFgNKzDCmMeauQhcQXUWV1h1oY89q6E 4A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 35cn9r5cyt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 14 Dec 2020 14:17:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BEEG59E047210;
 Mon, 14 Dec 2020 14:17:06 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 35d7sukd71-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 14 Dec 2020 14:17:06 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0BEEGtYL021946;
 Mon, 14 Dec 2020 14:16:56 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 14 Dec 2020 06:16:55 -0800
Date: Mon, 14 Dec 2020 17:16:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH v2 12/12] media: atomisp: Fix LOGICAL_CONTINUATIONS
Message-ID: <20201214141644.GF2809@kadam>
References: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
 <20201214110156.6152-13-Philipp.Gerlesberger@fau.de>
 <4eef67d66b0b48feba474906431daa30@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4eef67d66b0b48feba474906431daa30@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9834
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9834
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 clxscore=1011 spamscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140099
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@i4.cs.fau.de" <linux-kernel@i4.cs.fau.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ij72uhux@stud.informatik.uni-erlangen.de"
 <ij72uhux@stud.informatik.uni-erlangen.de>,
 'Philipp Gerlesberger' <Philipp.Gerlesberger@fau.de>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 14, 2020 at 11:53:04AM +0000, David Laight wrote:
> From: Philipp Gerlesberger
> > Sent: 14 December 2020 11:02
> >
> > Logical continuations should be on the previous line
> > 
> > Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> > Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> > Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
> > ---
> >  drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> > b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> > index 2f1c2df59f71..7d44070c7114 100644
> > --- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> > +++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> > @@ -24,8 +24,8 @@
> >   *****************************************************************************/
> >  int ia_css_queue_local_init(ia_css_queue_t *qhandle, ia_css_queue_local_t *desc)
> >  {
> > -	if (NULL == qhandle || NULL == desc
> > -	    || NULL == desc->cb_elems || NULL == desc->cb_desc) {
> > +	if (NULL == qhandle || NULL == desc ||
> > +	    NULL == desc->cb_elems || NULL == desc->cb_desc) {
> >  		/* Invalid parameters, return error*/

Delete this comment as well.  It's pointless.  (And the curly braces).

> >  		return -EINVAL;
> 

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
