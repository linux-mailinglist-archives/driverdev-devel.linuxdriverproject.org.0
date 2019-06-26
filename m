Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D565D56CF9
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 16:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3EB9921FA8;
	Wed, 26 Jun 2019 14:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Igf-uMEKfCeb; Wed, 26 Jun 2019 14:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C87601FEDF;
	Wed, 26 Jun 2019 14:57:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73B9A1BF97D
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 702518625C
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LUYEibmqRake for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 14:57:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5A9986A07
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 14:57:09 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QEsBPp120867;
 Wed, 26 Jun 2019 14:57:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=8doc8T026Qgzuel0n4TKmmc52HYkNsZ8TF7JIVqwUFg=;
 b=ryl8/PdeUbI/B9eSS4S6nDmMCIqINo/1uxF5TiHQiv+WXs1GrX1Wum7t4Xme2DAwBW/W
 SFNxoE+csDzrSvk2PeLXRLFt+3kXaSJPoaq3QpDPlAmte0vkBWmNtN5hS6YcyZF/i1Rz
 wIAkyLtbYtM34lfknPjRv9ukNn0MbIK0MRGWV3wCb4tphVrc9Fk7ONa3PaQVAABeoCOn
 zfd3uGfTSLNKbiOyIPDtzm0Po8uJdhVeQhDkZKCWLo6wzA/eePTqPrS2HTDo9zzDtU0f
 VEaAi6wjW0sN/wMUukqXvsSTAqCPmOh3YlXQ66HwfmCgJLeNuXQg14nc/0n+kecAawW7 2Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2t9cyqjt1v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 14:57:07 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QEtVW7064320;
 Wed, 26 Jun 2019 14:57:07 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2t9accr86d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 14:57:06 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5QEutnF007543;
 Wed, 26 Jun 2019 14:56:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Jun 2019 07:56:55 -0700
Date: Wed, 26 Jun 2019 17:56:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tobias =?iso-8859-1?Q?Nie=DFen?= <tobias.niessen@stud.uni-hannover.de>
Subject: Re: [PATCH 1/2] staging: rts5208: Rewrite redundant if statement to
 improve code style
Message-ID: <20190626145636.GG28859@kadam>
References: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
 <20190626142857.30155-2-tobias.niessen@stud.uni-hannover.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626142857.30155-2-tobias.niessen@stud.uni-hannover.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=784
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906260176
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=837 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260176
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
 Sabrina Gaube <sabrina-gaube@web.de>, linux-kernel@vger.kernel.org,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Both these patches seem fine.

On Wed, Jun 26, 2019 at 04:28:56PM +0200, Tobias Nie=DFen wrote:
> This commit uses the fact that
> =

>     if (a) {
>             if (b) {
>                     ...
>             }
>     }
> =

> can instead be written as
> =

>     if (a && b) {
>             ...
>     }
> =

> without any change in behavior, allowing to decrease the indentation
> of the contained code block and thus reducing the average line length.
> =

> Signed-off-by: Tobias Nie=DFen <tobias.niessen@stud.uni-hannover.de>
> Signed-off-by: Sabrina Gaube <sabrina-gaube@web.de>

Signed-off-by is like signing a legal document that you didn't put any
of SCO's secret UNIXWARE source code into your patch or do other illegal
activities.  Everyone who handles a patch is supposed to Sign it.

It's weird to see Sabrina randomly signing your patches.  Probably there
is a more appropriate kind of tag to use as well or instead such as
Co-Developed-by, Reviewed-by or Suggested-by.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
