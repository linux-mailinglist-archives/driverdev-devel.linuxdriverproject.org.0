Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D10D583127
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 14:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 649CB84EE2;
	Tue,  6 Aug 2019 12:04:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhqGPiwO9gwg; Tue,  6 Aug 2019 12:04:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D01F84492;
	Tue,  6 Aug 2019 12:04:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8768E1BF5F4
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 12:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EFB987E13
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 12:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oxAxVHZmxgrj for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 12:04:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C681487E09
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 12:04:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x76C409i076642;
 Tue, 6 Aug 2019 12:04:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=bPliwkGTvpcew6pJBv+ngwOrNIRjc2W/37cr0qQOeFc=;
 b=SEwGHkmif8CpscXJfHDn/qyv/zUZt3VpsemT07L1JWp/l4Zqpmy7HbeO6QF8kBXTnG3s
 ROKUKqUUopkdJV2/zZwc+jmNw1u4gVMqEdxSvVY1NiAVMRl6fjkz2FCEmDI62RIPDdBl
 xy8Jyk32yRiAHteyR3neftSlkL9kHu0nJBWvANxVnSAR1R1XjMLRonjic72c3QZNtkMD
 lZxkwFaVzaSiXCpix0xgzujA+F/8vTIcvB3wUkf1+HyuhiJ3fUniSC5MwKejZ7/XW+sa
 VSryg2ycmAJNQOcBeqa04xdBan4o6r8v9grYUeGk/4vYCX+Mz9oRNC/kkBgtK+FpW+gU Qg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2u527pnkad-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Aug 2019 12:04:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x76C2bvh086897;
 Tue, 6 Aug 2019 12:04:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2u75bvejj0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Aug 2019 12:04:39 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x76C4bRA002921;
 Tue, 6 Aug 2019 12:04:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 06 Aug 2019 05:04:36 -0700
Date: Tue, 6 Aug 2019 15:04:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Merwin Trever Ferrao <merwintf@gmail.com>
Subject: Re: [PATCH] Staging: rtl8188eu: core: rtw_security: fixed a coding
 style issue
Message-ID: <20190806120427.GG1974@kadam>
References: <20190806115438.GA24258@IoT-COE>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806115438.GA24258@IoT-COE>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908060121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908060121
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 06, 2019 at 05:24:38PM +0530, Merwin Trever Ferrao wrote:
> Fixed WARNING: else is not generally useful after a break or return
> ---

Much better, but you forgot the the Signed-off-by so we can't apply it.

Also it's nice to be more specific with the subject.
[PATCH] Staging: rtl8188eu: rtw_security: tidy up crc32_init().
And for the full commit message maybe write something like:

This code generates a checkpatch warning:

    WARNING: else is not generally useful after a break or return

If we move the declarations to the start of the function then we can
pull the code back one tab and it makes the function a lot more readable.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
