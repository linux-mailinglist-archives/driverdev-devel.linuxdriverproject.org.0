Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF5727E888
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Sep 2020 14:28:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1951486822;
	Wed, 30 Sep 2020 12:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6uF+QnneKWYF; Wed, 30 Sep 2020 12:28:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2E9A85692;
	Wed, 30 Sep 2020 12:28:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 115C11BF5A1
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 12:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B09186658
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 12:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xtnC2Ws1IuUf for <devel@linuxdriverproject.org>;
 Wed, 30 Sep 2020 12:28:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77A0985692
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 12:28:02 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08UC9YhR028137;
 Wed, 30 Sep 2020 12:27:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=g14+JbAXNUIDOSumYRcqglsnIcYylhw2m0sA+ZnTuX4=;
 b=IjdYEN1bVdBp3T8f3BZ+ye19TY732TkCur5PHaCZDHBcMBULxubjiugSeFTrj7lI/nhx
 ZZ9v1rf5L1X6EnWiPMR1ddHVH2DW+O383apYD7hSuWFPHHRworlst6V0vD9J684Aw8VS
 g53npCiBTWSoDv6oyWdwUGS4mRoh6BbPdAvZYj0yIG0dz6fYqVT+6IjXZsk2iPFdrNrM
 Jl59gTbABfWE0GsAQzdpPbVRONwgXbSzhqh1Tc9WfSfdpsIyFL1FuIrpuI5srGnHzwUD
 pCVq2j0iK1h96UrxEbjILqTGiKCBNU9pAEdy4AaIzZJcT2yd03GhIiNiGt+wottZAK1t aw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 33swkm06mk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 30 Sep 2020 12:27:58 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08UCOl96156864;
 Wed, 30 Sep 2020 12:27:58 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 33tfdttusg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Sep 2020 12:27:58 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08UCRnFl019263;
 Wed, 30 Sep 2020 12:27:50 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 30 Sep 2020 05:27:48 -0700
Date: Wed, 30 Sep 2020 15:27:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] staging: vchiq: silence an uninitialized variable warning
Message-ID: <20200930122741.GB4282@kadam>
References: <20200930090238.GA621698@mwanda>
 <CAK8P3a1m3kaGK17A2ADgA7b9i7GeEYhX=xVoU=Yet8_T93Q2JA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1m3kaGK17A2ADgA7b9i7GeEYhX=xVoU=Yet8_T93Q2JA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009300102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009300101
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 kernel-janitors@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 30, 2020 at 12:22:37PM +0200, Arnd Bergmann wrote:
> On Wed, Sep 30, 2020 at 11:02 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > Smatch complains that "userdata" can be passed to vchiq_bulk_transfer()
> > without being initialized.  Smatch is correct, however, in that
> > situation the "userdata" is not used so it doesn't cause a problem.
> > Passing an uninitialized variable will trigger a UBSan warning at
> > runtime so this warning is worth silencing by setting "userdata" to
> > NULL.
> >
> > Fixes: a4367cd2b231 ("staging: vchiq: convert compat bulk transfer")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> The change looks fine, but I wonder if it's actually worse and the
> uninitialized pointer can end up getting copied back to user space
> in the completion.

Ah... Wow.  You're right.  I think I really need to resend this with a
more accurate commit message.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
