Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6606D13B982
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 07:23:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 047B1877A0;
	Wed, 15 Jan 2020 06:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwBP6F63qMM9; Wed, 15 Jan 2020 06:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4120386C7A;
	Wed, 15 Jan 2020 06:23:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96BB41BF85D
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 06:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91C60203A4
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 06:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GwjkqVishSvP for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 06:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 4F76720370
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 06:23:42 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00F6IA70084140;
 Wed, 15 Jan 2020 06:23:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=lD4x1TlaeH2ctZq8DWNQ5strjiTPiE6LC+mIWYAjbrc=;
 b=DbGFgpIkWl2ok/PjUIUfmXrr8s9sXrDv8FOmqOyZiqTXbtjNkVigNPiycZpK4w9F1asd
 QdSYFlXSvpc73UZF7sasnPqhpmaFupviR4a/vm/tFueNwprQcZxHK2xvxQTP3xpvo8wm
 /A2WNNmkUPPmFVWu+syGlYSA5aE66JDP1HIfLwp6ncUeqUiXm80blZ6CDUMUqmyTo7hT
 S17EqFwgi0MvTXyt9lVmOjhFCEu57b6tk0Z655cbFK2aff5wFjdlAt8/v6/vzR6C6YW6
 0P13yftBPdByhLB/NxhTqmOgeSgM0oI3yaz92S9FiCotH3YgGMFsp+XVUpqMqqrJgMJU Yw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xf73tt89f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 06:23:41 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00F6IrS3123196;
 Wed, 15 Jan 2020 06:21:40 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xh315rsj4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 06:21:40 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00F6Lco6025667;
 Wed, 15 Jan 2020 06:21:39 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Jan 2020 22:21:37 -0800
Date: Wed, 15 Jan 2020 09:21:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
Subject: Re: [PATCH] Remove warning: "dubious: x | !y" detected by sparse
Message-ID: <20200115062156.GF3719@kadam>
References: <20200115012515.GA16012@felipe-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115012515.GA16012@felipe-pc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9500
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001150051
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9500
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001150051
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
 Geordan Neukum <gneukum1@gmail.com>, Hao Xu <haoxu.linuxkernel@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add a subsystem prefix to the subject.  "Staging: kpc2000:"

On Tue, Jan 14, 2020 at 10:25:15PM -0300, Felipe Cardoso Resende wrote:
> The way I chose to remove the warning was to define a macro to
> make it clear if a flag will be enable or not.
> 
> Let me know if you would prefer it to be done in a different way.
> 

All this should go under the --- cut off because we don't want it in the
final git history.

> Signed-off-by: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
> ---
  ^^^

The commit message should be something like.  "Sparse complains about
"dubious: x | !y".  This patch adds some macros to make Sparse happy and
the code more readable.

I like the patch.  enable_flag_if() is slightly weird because normally
the condition would come first.  It feels sort of like Perl or something
to put the condition afterwards.  But this patch is very small and self
contained so it's fine.

Just fix up the subject and the commit message and resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
