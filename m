Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 215BA81F7D
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 16:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7578585F57;
	Mon,  5 Aug 2019 14:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYsXNof49_ms; Mon,  5 Aug 2019 14:50:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2928185EF1;
	Mon,  5 Aug 2019 14:50:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC3171BF33C
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 14:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B792585EC2
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 14:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2gyIfcN9acB for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 14:50:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5C8385EA4
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 14:50:48 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x75EnCKA117512;
 Mon, 5 Aug 2019 14:50:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=o4Sx2x0eXTgf73+qaizMv0IXsCIax7sEnso5HFnT7vM=;
 b=HrG6ci9f4uSNhpivnGhN7aEX86wc/rvDklCeeFgyI6YTFBvbU+h/o1C41hsi+gu0Spqa
 CrgrhhlEN8Pw3bWnsQtLSdIPK0JR24YDMNRXyakQQcgSW7KwEyPqXv49M4x4jTyE2Zen
 I9alPxpPAq1dMwUUMXgV2UU3XAPcfNd1PwPxKFdhPX+yoI81jwwOTY2mwJuTxGOPhihi
 E3mSfDNt7UAUhW82a4CUjTH5LPW/7UnvDQJXn7jFP84aa9CXW8mQ65vRT8EBEAJ+yLMg
 qvsdhkJQ5WHQPIAqZTV5TJwnRBTQ/P3/K/Kaogns6luhuQEtpmvPI6QetOJNh3kps56V Hw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2u52wqyp9a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 05 Aug 2019 14:50:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x75EmCQd121081;
 Mon, 5 Aug 2019 14:50:47 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2u4ycu3t7e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 05 Aug 2019 14:50:47 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x75EogFg003623;
 Mon, 5 Aug 2019 14:50:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 05 Aug 2019 07:50:42 -0700
Date: Mon, 5 Aug 2019 17:50:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Thiago Bonotto <thbonotto@gmail.com>
Subject: Re: [PATCH] staging: isdn: remove unnecessary parentheses
Message-ID: <20190805145020.GE1974@kadam>
References: <20190802202323.27117-1-thbonotto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802202323.27117-1-thbonotto@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=787
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908050165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=840 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908050165
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
Cc: devel@driverdev.osuosl.org, Karsten Keil <isdn@linux-pingi.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is obselete so we're just keeping it around for a couple
kernel releases and then deleting it.  We're not taking cleanups for it.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
