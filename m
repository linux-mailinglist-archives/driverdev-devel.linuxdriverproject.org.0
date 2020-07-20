Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DD3225A20
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 10:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9FC985EAC;
	Mon, 20 Jul 2020 08:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EVvQqfcu5PW6; Mon, 20 Jul 2020 08:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1A3F85C5C;
	Mon, 20 Jul 2020 08:34:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 246581BF5E0
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:34:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1602D204B0
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ECgld99FH-bc for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 08:34:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 26F6C204A6
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 08:34:20 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06K8WNwB093440;
 Mon, 20 Jul 2020 08:34:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=xpaW2B9941YB0NweNGEDZrsGofKWzgtxk2QzTD/4JrQ=;
 b=tPvgmFapTBAxYadM93ygaKWhRMck8GqGDNtEd6D8aSmRo+l1HERPXsP+87LNO0Ir0iPH
 YWwb0rUN2wfGP7Y9EGbUgy8S+E2IWahAvX/EGBKNDAaNp6d8bxl8xYRxS/N/cl6Bzz4I
 augqlcm80FXX7Y6rlCR6FdtaTlkOXBYelL2DqMGuqQB6LtnDFeeGpsM0zeSat/ERrjxr
 k3NtpQpX+aXRDwMV7YTqQUkIOCOFRSO5rSsZ/05Bb5EtWiEC7cvWbHfTdybA799Cpow1
 dQswVo+jyL9egYxf96U/Ba4l3hAvQlSRLsUDwI+RiCl/Jxg9IX4lEtJCurdEx0Q6KEJR OA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 32brgr5gu7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 20 Jul 2020 08:34:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06K8Wvq6006452;
 Mon, 20 Jul 2020 08:34:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 32d68g7jpq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jul 2020 08:34:18 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06K8YHSM032622;
 Mon, 20 Jul 2020 08:34:17 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Jul 2020 01:34:15 -0700
Date: Mon, 20 Jul 2020 11:34:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v2] staging: media: atomisp: Replace depracated MSI APIs
Message-ID: <20200720083409.GF2549@kadam>
References: <20200719142623.GA31565@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719142623.GA31565@blackclown>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9687
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007200064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9687
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 impostorscore=0 suspectscore=0 adultscore=0 clxscore=1011 mlxlogscore=999
 priorityscore=1501 phishscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007200064
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
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry, this is still not correct.  See comments on other thread.  There
are other msi related code which needs to be updated.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
