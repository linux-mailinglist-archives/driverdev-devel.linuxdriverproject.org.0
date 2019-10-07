Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87CFCE4BC
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 16:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A91787A8E;
	Mon,  7 Oct 2019 14:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KRDoGheZEXbn; Mon,  7 Oct 2019 14:09:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD24287133;
	Mon,  7 Oct 2019 14:09:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C920D1BF859
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 14:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C52F120462
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 14:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BT+9qw0Ae82x for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 14:09:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 29B3420430
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 14:09:14 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97E3piF086020;
 Mon, 7 Oct 2019 14:09:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=+SFJATQbJtDAB3evVoqUUJUx57IqXBFXgTmTC9eJMJA=;
 b=pCAbTgxILGk8f0FSDkTyK635V/kYrRgo+1dk1SavosJAKxNhZ/xBn1Hf+a+tKErR+xrp
 Ptnzqh+AABD4VGEFeX1zInPvcGoQKq37BMJ3VkjmT/njqN8GfKdA2cIRCW2Rz0Fjx7iZ
 yRnyAaAeJpBMbdGPNr9YMhQbguGYwov+TQksQDYOCcqXUbdyz3OIJfiEexFrXd6umDSf
 Gvh4dGQVXF50aDnsKELPN/4oI+AewROZ7G71/jpA6uj8JYx4CUHxZiwIMiGTtbBSROry
 JcEgAXBTc+ewESpCyFjxntGv/Rz6beUE/aYcntClo5dA4N34cyNJ4dXPsSwbaCP1quKz RQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vejku701x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 14:09:13 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97E2trU126866;
 Mon, 7 Oct 2019 14:09:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2vg1yty681-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 14:09:12 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x97E993N002892;
 Mon, 7 Oct 2019 14:09:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 07:09:09 -0700
Date: Mon, 7 Oct 2019 17:09:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Thomas Meyer <thomas@m3y3r.de>
Subject: Re: [PATCH] staging: wlan-ng: p80211wep.c: use lib/crc32
Message-ID: <20191007140900.GX22609@kadam>
References: <20191006140745.9952-1-thomas@m3y3r.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006140745.9952-1-thomas@m3y3r.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910070140
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910070140
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 04:07:45PM +0200, Thomas Meyer wrote:
> Use lib/crc32 instead of another implementation.
> 
> Signed-off-by: Thomas Meyer <thomas@m3y3r.de>

I always get annoyed whenever anyone asks if people have tested their
patches, but have you tested this?  It's hard for me to review it
because I don't have the relevant background and because I'm a little
bit stupid.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
