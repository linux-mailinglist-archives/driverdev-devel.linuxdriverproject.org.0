Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3491833BD
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 15:51:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35B0426B08;
	Thu, 12 Mar 2020 14:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0jo4615J--CY; Thu, 12 Mar 2020 14:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED5842039A;
	Thu, 12 Mar 2020 14:51:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F25CA1BF420
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 14:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ECF7488468
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 14:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SoA557wfTMIn for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 14:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 052BE883B2
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 14:51:20 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02CEiioj166488;
 Thu, 12 Mar 2020 14:51:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=7sIBzpAB6e6gsJSbPeb9409x+gcgbqxQ4hGp9B7v4qM=;
 b=WvcvsyeOYqwRGwdzfKjY2X2oNPTMHsLodQ0BdU+KF413DDrk+kPu/NE2LD3imaydGn/7
 gbEB/RkB2JTPr72DOUfMDDPJrZcQ6K9+Y807RD6/9hjDtLblyel6HAu243gSzsMumuCb
 AQHNNkMTetB95rVe08Utzi4eZ9eEZ3NCkQwwSOJymGSZI2SzaBNRnQxNJ+sgwKJMsHJk
 n6H21bEqt36uWfJyJlYPWLgbNPLU+OvvDXQ/M6fGlb7t+M6IhYzb/zNFH6EeKPQfoe7t
 skiC5PeIFPRCfx5kndOhq1EFXxY4vrtnQrVxIh8vevUrC5t/Vaxm2TYRTgH2xbl8HoXV Rw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2yp9v6d4x9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Mar 2020 14:51:18 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02CEoN7L195490;
 Thu, 12 Mar 2020 14:51:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2yqkvmta4v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Mar 2020 14:51:18 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02CEpHi4020205;
 Thu, 12 Mar 2020 14:51:17 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 12 Mar 2020 07:51:16 -0700
Date: Thu, 12 Mar 2020 17:51:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH] staging: greybus: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200312145111.GO11561@kadam>
References: <20200311091906.22980-1-tiwai@suse.de>
 <20200311095814.GI14211@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311095814.GI14211@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9557
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 bulkscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003120080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9557
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 mlxlogscore=999
 phishscore=0 adultscore=0 clxscore=1011 impostorscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003120080
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
Cc: Takashi Iwai <tiwai@suse.de>, devel@driverdev.osuosl.org,
 greybus-dev@lists.linaro.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 10:58:14AM +0100, Johan Hovold wrote:
> On Wed, Mar 11, 2020 at 10:19:06AM +0100, Takashi Iwai wrote:
> > Since snprintf() returns the would-be-output size instead of the
> > actual output size, the succeeding calls may go beyond the given
> > buffer limit.  Fix it by replacing with scnprintf().
> > 
> > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> > ---
> >  drivers/staging/greybus/tools/loopback_test.c | 24 ++++++++++++------------
> 
> Thanks for the fix.
> 
> Would you mind resending with a "staging: greybus: loopback_test:"
> prefix since this is not a subsystem wide issue, bur rather a bug in a
> specific user-space tool?

I'm surprised that user-space even has scnprintf().

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
