Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4082530DCE9
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 15:36:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8A2587148;
	Wed,  3 Feb 2021 14:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esJ10-jQHYPQ; Wed,  3 Feb 2021 14:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C3CC87132;
	Wed,  3 Feb 2021 14:36:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B64071BF2F8
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 14:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF72C868E3
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 14:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wd1eywlhHQfF for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 14:36:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E36AD815ED
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 14:36:13 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 113EUEIX135555;
 Wed, 3 Feb 2021 14:36:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=G+o+eDSDGIcycw6V3rcebdOZrf+wQLMD+BrjDPRjmjo=;
 b=PdZsJD6juAqIk4X58mHVm51PQm/zwFtW7ni034OStHptQocephoez9nLja3q2gRcvb8w
 7TsecwPyYN/wivBMsWotpub1JM4rfSzvYL95MiZWJPO6JnEFusvQNjTt6WnHAZDOmbII
 Sj4A2r3SLcDUHxG2g9FZ+f2qGglNDFEjk4z2TQ8Y5b6rtcjzEaGnMmqbuiWTqKfyNKGl
 4DhCdPiQICpSK2D2wfvxfMQtdvqED7C13V6YzXHM67sdKFisLafBLpm19DGOASUI362Z
 sR0UsM38zgtryyN1XDGG8q4W3+GYwaTiPKR3EdAFz9lTtIQ4wq3QzwrlfFNgIknF5NBZ 6g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 36cxvr35rm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Feb 2021 14:36:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 113EWHws098158;
 Wed, 3 Feb 2021 14:36:11 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 36dh7tj891-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Feb 2021 14:36:11 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 113Ea75v027497;
 Wed, 3 Feb 2021 14:36:08 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 03 Feb 2021 06:36:07 -0800
Date: Wed, 3 Feb 2021 17:36:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [bug report] staging: qlge: Initialize devlink health dump
 framework
Message-ID: <20210203143601.GG20820@kadam>
References: <YBpwGqe64phqNAYL@mwanda>
 <20210203134551.r4eghuzlvxji737y@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203134551.r4eghuzlvxji737y@Rk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9883
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 suspectscore=0 spamscore=0 mlxlogscore=999 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102030091
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9883
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102030091
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 03, 2021 at 09:45:51PM +0800, Coiby Xu wrote:
> Hi Dan,
> 
> 
> On Wed, Feb 03, 2021 at 12:42:50PM +0300, Dan Carpenter wrote:
> > Hello Coiby Xu,
> > 
> > The patch 953b94009377: "staging: qlge: Initialize devlink health
> > dump framework" from Jan 23, 2021, leads to the following static
> > checker warning:
> > 
> > 	drivers/staging/qlge/qlge_devlink.c:163 qlge_health_create_reporters()
> > 	error: uninitialized symbol 'reporter'.
> > 
> > drivers/staging/qlge/qlge_devlink.c
> >   151  void qlge_health_create_reporters(struct qlge_adapter *priv)
> >   152  {
> >   153          struct devlink_health_reporter *reporter;
> >   154          struct devlink *devlink;
> >   155
> >   156          devlink = priv_to_devlink(priv);
> >   157          priv->reporter =
> >   158                  devlink_health_reporter_create(devlink, &qlge_reporter_ops,
> >   159                                                 0, priv);
> >   160          if (IS_ERR(priv->reporter))
> >   161                  netdev_warn(priv->ndev,
> >   162                              "Failed to create reporter, err = %ld\n",
> >   163                              PTR_ERR(reporter));
> > 
> > Obviously the static checker is correct because we initialized
> > "priv->reporter" instead of "reporter".
> > 
> > It's not clear to me how "reporter" is used.  Presumably this should be:
> > 
> > 	reporter = devlink_health_reporter_create(devlink, &qlge_reporter_ops,
> > 						  0, priv);
> > 	if (IS_ERR(reporter)) {
> > 		netdev_warn(priv->ndev,
> > 			    "Failed to create reporter, err = %ld\n",
> > 			    PTR_ERR(reporter));
> > 		return;
> > 	}
> > 	priv->reporter = reporter;
> > 
> 
> Thank you for finding this issue! "struct devlink_health_reporter
> *reporter" is not needed since priv->reporter is used instead which
> I think simplifies the code.
> 
> > But I can't actually find where "priv->reporter" is checked against
> > NULL.  There should be some NULL checks, right?
> > 
> 
> There is no need to do NULL check since devlink_health_reporter_create
> has done the job for us,
> 
> // net/core/devlink.c
> __devlink_health_reporter_create(struct devlink *devlink,
> 				 const struct devlink_health_reporter_ops *ops,
> 				 u64 graceful_period, void *priv)
> {
> 	reporter = kzalloc(sizeof(*reporter), GFP_KERNEL);
> 	if (!reporter)
> 		return ERR_PTR(-ENOMEM);
> 
> }

No, Sorry I was unclear.  I mean that instead of error handling this
qlge_health_create_reporters() function just prints an error:

 		netdev_warn(priv->ndev,
 			    "Failed to create reporter, err = %ld\n",
 			    PTR_ERR(priv->reporter));

Then it looks like it gets passed to qlge_reporter_coredump() which
dereferences "reporter" without checking.  That will crash, right?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
